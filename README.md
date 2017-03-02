# Beta-Processor
This is the beta processor that we have designed at MIT 6.004.1x, 6.004.2x and 6.004.3x in Verilog. All the testbenches are converted from Jade's format into a constructive Verilog testbench using a small Python script 'JadeToVerilog.py'

The processor is currently synthesized on Xilinx Sparten 6 FPGA, the memory is implemented using FPGA distributed ram created using the xilinx IP core generator, so in order to upload a new code you need a .COE file with the proper values to be initialized into the DRAM.

#TODO
1- Implement a Dynamic RAM controller to make use of the onboard dynamic ram

2- Implement a pipelined version of the BETA

3- Implement the memory with BRAM instead of  DRAM as a cache memory

4- Implement the cache memory controller

#Notes

All the beta inputs are active low, And the UCF file is set to work on Mimas V2 FPGA. Make sure to change these settings to whatever you want

In order to use the JadeToVerilog.py checkout the code on my [Trinket.io profile page](https://trinket.io/python/cf8409c8d7). This is how to use the script to convert any Jade testcase into a verilog testcase using the script

1- Edit the variable moduleName value into your module name 

2- Paste jade testcases into the TB.txt file 

3- Run and the contents of TB.txt will be converted into the verilog equivalent TB code for your module


![Trinket snapshot](https://edxuploads.s3.amazonaws.com/14869189794205103.png)


A snapshot once the final testbench is executed on the BETA

![ISE snapshot](https://edxuploads.s3.amazonaws.com/14884851958285753.png)

And finally don't forget to include this sticker on your beta processor ;)

![ISE snapshot](https://edxuploads.s3.amazonaws.com/14871047273282476.png)
