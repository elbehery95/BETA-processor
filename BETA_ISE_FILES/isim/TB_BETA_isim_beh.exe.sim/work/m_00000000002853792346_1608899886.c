/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/REGFILE.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {30, 0};
static int ng4[] = {31, 0};



static void Always_77_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4608);
    *((int *)t2) = 1;
    t3 = (t0 + 4320);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB12:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);

LAB18:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2328U);
    t7 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);

LAB23:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3368);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);

LAB24:    t9 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 5, t9, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2488U);
    t7 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);

LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(79, ng0);
    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = (t0 + 3208);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 5);
    goto LAB11;

LAB9:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB11;

LAB13:    xsi_set_current_line(84, ng0);
    t4 = (t0 + 1848U);
    t7 = *((char **)t4);
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 5);
    goto LAB17;

LAB15:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 2008U);
    t7 = *((char **)t4);
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 5);
    goto LAB17;

LAB19:    xsi_set_current_line(89, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t0 + 2888);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB23;

LAB25:    xsi_set_current_line(94, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 3048);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 32);
    goto LAB29;

}


extern void work_m_00000000002853792346_1608899886_init()
{
	static char *pe[] = {(void *)Always_77_0};
	xsi_register_didat("work_m_00000000002853792346_1608899886", "isim/TB_BETA_isim_beh.exe.sim/work/m_00000000002853792346_1608899886.didat");
	xsi_register_executes(pe);
}
