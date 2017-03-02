##############################################################################
#Engineer: Abdelrahman ElBehery
#Last Revision: 14-2-2017
##############################################################################


##############################################################################
#HOW TO USE
# 1-Copy Jade TEST code into the TB.txt file
# 2-Make sure to enter your module name correctly
# 3-In Clocked devices make sure to add the clock into the module instance in the TB 
#   For example : PC uut(.clk(CLK,....)
# 4-Run the code |> and the contents of TB.txt will be changed into the proper Verilog TB 
#Write your verilog module name here [CASE SENSITIVE]
moduleName="BETA_TOP"             

###############################################################################
class TB:
    
    def __init__(self,moduleName):
        self.code=['module TB;\n\n  reg CLK=0;\n  integer weAreOk=1;\n']
        self.printTask=['\n  task PRINT;\n    input integer CN;\n']
        self.signals={'inputs':[],'outputs':[],'inputsl':[],'outputsl':[]}
        self.caseNumber=1
        self.initialYet=0
        self.moduleName=moduleName
        TBFile=open('TB.txt')
        for i in TBFile:
            if(i.find('module')!=-1):
              print 'Already converted!'
              return
            if(i.find('.group')!=-1):
                self.defineSignals(i)
            elif(i[0]=='0' or i[0]=='1'):
                self.writeConditions(i.replace(' ',''))
                self.caseNumber+=1
        self.code.append('\n  if(weAreOk) $display("TEST OK\\n\\nPassed");\n\n')
        #clkStop='  always #1 if($time=='+str(self.caseNumber*30)+') $finish();\n\n'

        self.code=[self.code[0]]+self.printTask+self.code[1:]+['\n  end\n']+['\nendmodule']
        TBFile.close()
        
        
    def writeVerilog(self):
        if(self.initialYet==0):
          return
        fofo=open('TB.txt','w')
        for i in self.code:
            fofo.write(i)
        print 'Done'
        fofo.close()
        
    
    def defineSignals(self,x):
        self.initialYet+=1            
        signals=x.split()
        sigType = '  wire '
        taskCond='    if( '
        if(signals[1]=='inputs'):
            sigType='  reg '
        for i in signals[2:]:
            if(i.find('[')!=-1):
                indx=i.find('[')
                self.code.append(sigType+i[indx:]+' '+i[:indx]+';\n')
                self.signals[signals[1]].append(i[:indx])
                self.signals[signals[1]+'l'].append(int(i[indx+1:i.find(':')])+1)
                if(signals[1]=='outputs'):
                    self.printTask.append('    input '+i[indx:]+' '+i[:indx]+';\n')
                    self.printTask.append('    input '+i[indx:]+' '+'Ex'+i[:indx]+';\n')
                    taskCond+=i[:indx]+'!='+'Ex'+i[:indx]+' | '
            else:
                self.code.append(sigType+' '+i+';\n')
                self.signals[signals[1]].append(i)
                self.signals[signals[1]+'l'].append(1)
                if(signals[1]=='outputs'):
                    self.printTask.append('  input '+i[:indx]+';\n')
                    self.printTask.append('  input '+'Ex'+i[:indx]+';\n')
                    taskCond+=i[:indx]+'!='+'Ex'+i[:indx]+' | '
        taskCond=taskCond[:-2]+') begin\n'
        dispStatement='    $display("Error in case: %d\\n'
        dispArgs=''
        for i in self.signals['outputs']:
            dispStatement+=i+': %b\\nExpected: %b\\n'
            dispArgs+=','+i+',Ex'+i
        taskCond+=dispStatement+'"'+",CN"+dispArgs+');\n'+'    weAreOk=0;\n'+'    end\n  endtask\n\n'
        if(signals[1]=='outputs'):
            self.printTask.append(taskCond)
        if(self.initialYet==2):
            modInstant='  '+self.moduleName+" uut("
            for i in self.signals['inputs']:
              modInstant+='.'+i+'('+i+'),'
            for i in self.signals['outputs']:
              modInstant+='.'+i+'('+i+'),'
            modInstant=modInstant[:-1]+');\n\n'
            #modInstant+='  always #1 CLK=~CLK;\n\n'
            self.code+=["\n"+modInstant+"\n\ninitial begin\n"]
            
            
    def writeConditions(self,x):
        c=0
        stim='  //CASE: '+str(self.caseNumber)+'\n'
        indx=0
        for i in self.signals['inputsl']:
            stim+='  '+self.signals['inputs'][indx]+'='+str(i)+"'b"+x[c:i+c]+';\n'
            indx+=1
            c+=i
        stim+='  #1;PRINT('+str(self.caseNumber)
        indx=0
        for i in self.signals['outputsl']:
            stim+=','+self.signals['outputs'][indx]+','+str(i)+"'b"+x[c:i+c].replace('L','0').replace('H','1').replace('-','x')
            indx+=1
            c+=i
        stim+=');\n'
        stim+='  CLK=1;\n  #10;\n  CLK=0;\n\n'
        self.code.append(stim)
###############################################################################
#moduleName=raw_input("Enter your verilog module name:\n")        
tb = TB(moduleName);
tb.writeVerilog();
