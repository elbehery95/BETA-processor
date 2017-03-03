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
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/TB_CMP.v";
static const char *ng1 = "Error in case: %d\nY: %b\nExpected: %b\n";
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {2, 0};
static unsigned int ng8[] = {3U, 0U};
static int ng9[] = {3, 0};
static int ng10[] = {4, 0};
static int ng11[] = {5, 0};
static int ng12[] = {6, 0};
static int ng13[] = {7, 0};
static int ng14[] = {8, 0};
static int ng15[] = {9, 0};
static int ng16[] = {10, 0};
static int ng17[] = {11, 0};
static int ng18[] = {12, 0};
static int ng19[] = {13, 0};
static int ng20[] = {14, 0};
static int ng21[] = {15, 0};
static int ng22[] = {16, 0};
static int ng23[] = {17, 0};
static int ng24[] = {18, 0};
static int ng25[] = {19, 0};
static int ng26[] = {20, 0};
static int ng27[] = {21, 0};
static const char *ng28 = "TEST OK\n\nPassed";



static int sp_PRINT(char *t1, char *t2)
{
    char t11[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(33, ng0);
    t5 = (t1 + 3000);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t1 + 3160);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t12 = (t7 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB6;

LAB5:    if (t23 != 0)
        goto LAB7;

LAB8:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB9;

LAB10:
LAB11:
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB6:    *((unsigned int *)t11) = 1;
    goto LAB8;

LAB7:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(33, ng0);

LAB12:    xsi_set_current_line(34, ng0);
    t33 = (t1 + 2840);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t1 + 3000);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t1 + 3160);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t1 + 848);
    xsi_vlogfile_write(1, 0, 0, ng1, 4, t42, (char)119, t35, 32, (char)118, t38, 32, (char)118, t41, 32);
    xsi_set_current_line(35, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 2040);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB11;

}

static void Initial_49_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;

LAB0:    t1 = (t0 + 4080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);

LAB4:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB9:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB11:    if (t19 != 0)
        goto LAB12;

LAB7:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB8:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB10:;
LAB12:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB9;
    goto LAB1;

LAB13:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB18:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB20:    if (t19 != 0)
        goto LAB21;

LAB16:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB17:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB19:;
LAB21:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB18;
    goto LAB1;

LAB22:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB27:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB29:    if (t19 != 0)
        goto LAB30;

LAB25:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB26:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB28:;
LAB30:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB27;
    goto LAB1;

LAB31:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB36:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB38:    if (t19 != 0)
        goto LAB39;

LAB34:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB35:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB37:;
LAB39:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB36;
    goto LAB1;

LAB40:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB41:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB42:    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB45:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB47:    if (t19 != 0)
        goto LAB48;

LAB43:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB44:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB46:;
LAB48:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB45;
    goto LAB1;

LAB49:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB50:    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB51:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB54:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB56:    if (t19 != 0)
        goto LAB57;

LAB52:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB53:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB55:;
LAB57:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB54;
    goto LAB1;

LAB58:    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB59:    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB60:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB63:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB65:    if (t19 != 0)
        goto LAB66;

LAB61:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB62:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB64:;
LAB66:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB63;
    goto LAB1;

LAB67:    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB68:    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB69;
    goto LAB1;

LAB69:    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB72:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB74:    if (t19 != 0)
        goto LAB75;

LAB70:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB71:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB73:;
LAB75:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB72;
    goto LAB1;

LAB76:    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB77:    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB78;
    goto LAB1;

LAB78:    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB81:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB83:    if (t19 != 0)
        goto LAB84;

LAB79:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB80:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB85;
    goto LAB1;

LAB82:;
LAB84:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB81;
    goto LAB1;

LAB85:    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB86;
    goto LAB1;

LAB86:    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB87:    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB90:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB92:    if (t19 != 0)
        goto LAB93;

LAB88:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB89:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB94;
    goto LAB1;

LAB91:;
LAB93:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB90;
    goto LAB1;

LAB94:    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(175, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB95:    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(177, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB96;
    goto LAB1;

LAB96:    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB99:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB101:    if (t19 != 0)
        goto LAB102;

LAB97:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB98:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(180, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB100:;
LAB102:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB99;
    goto LAB1;

LAB103:    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(187, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB104;
    goto LAB1;

LAB104:    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(189, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB105;
    goto LAB1;

LAB105:    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB108:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB110:    if (t19 != 0)
        goto LAB111;

LAB106:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB107:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(192, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB112;
    goto LAB1;

LAB109:;
LAB111:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB108;
    goto LAB1;

LAB112:    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB113;
    goto LAB1;

LAB113:    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB114;
    goto LAB1;

LAB114:    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB117:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB119:    if (t19 != 0)
        goto LAB120;

LAB115:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB116:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(204, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB121;
    goto LAB1;

LAB118:;
LAB120:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB117;
    goto LAB1;

LAB121:    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(210, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(211, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB122;
    goto LAB1;

LAB122:    xsi_set_current_line(212, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(213, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB123;
    goto LAB1;

LAB123:    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB126:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB128:    if (t19 != 0)
        goto LAB129;

LAB124:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB125:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(216, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB130;
    goto LAB1;

LAB127:;
LAB129:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB126;
    goto LAB1;

LAB130:    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(220, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(222, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(223, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB131;
    goto LAB1;

LAB131:    xsi_set_current_line(224, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(225, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB132;
    goto LAB1;

LAB132:    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB135:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB137:    if (t19 != 0)
        goto LAB138;

LAB133:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB134:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(228, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB139;
    goto LAB1;

LAB136:;
LAB138:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB135;
    goto LAB1;

LAB139:    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(234, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(235, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB140;
    goto LAB1;

LAB140:    xsi_set_current_line(236, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(237, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB141;
    goto LAB1;

LAB141:    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(239, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB144:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB146:    if (t19 != 0)
        goto LAB147;

LAB142:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB143:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(240, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB148;
    goto LAB1;

LAB145:;
LAB147:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB144;
    goto LAB1;

LAB148:    xsi_set_current_line(243, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(244, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(245, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(246, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(247, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB149;
    goto LAB1;

LAB149:    xsi_set_current_line(248, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(249, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB150;
    goto LAB1;

LAB150:    xsi_set_current_line(250, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB153:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB155:    if (t19 != 0)
        goto LAB156;

LAB151:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB152:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(252, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB157;
    goto LAB1;

LAB154:;
LAB156:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB153;
    goto LAB1;

LAB157:    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(256, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(259, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB158;
    goto LAB1;

LAB158:    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(261, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB159;
    goto LAB1;

LAB159:    xsi_set_current_line(262, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(263, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB162:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB164:    if (t19 != 0)
        goto LAB165;

LAB160:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB161:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(264, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB166;
    goto LAB1;

LAB163:;
LAB165:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB162;
    goto LAB1;

LAB166:    xsi_set_current_line(267, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(268, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(270, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(271, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB167;
    goto LAB1;

LAB167:    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(273, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB168;
    goto LAB1;

LAB168:    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(275, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB171:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB173:    if (t19 != 0)
        goto LAB174;

LAB169:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB170:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(276, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB175;
    goto LAB1;

LAB172:;
LAB174:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB171;
    goto LAB1;

LAB175:    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(280, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(282, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(283, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB176;
    goto LAB1;

LAB176:    xsi_set_current_line(284, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(285, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB177;
    goto LAB1;

LAB177:    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(287, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB180:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB182:    if (t19 != 0)
        goto LAB183;

LAB178:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB179:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(288, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB184;
    goto LAB1;

LAB181:;
LAB183:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB180;
    goto LAB1;

LAB184:    xsi_set_current_line(291, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(293, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2520);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(294, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2680);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(295, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB185;
    goto LAB1;

LAB185:    xsi_set_current_line(296, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(297, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB186;
    goto LAB1;

LAB186:    xsi_set_current_line(298, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(299, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 1480U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3888);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 2840);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 32);
    t9 = (t0 + 3000);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 32);
    t10 = (t0 + 3160);
    xsi_vlogvar_assign_value(t10, t3, 0, 0, 32);

LAB189:    t11 = (t0 + 3984);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB191:    if (t19 != 0)
        goto LAB192;

LAB187:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB188:    t20 = (t0 + 3984);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 3888);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(300, ng0);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB193;
    goto LAB1;

LAB190:;
LAB192:    t11 = (t0 + 4080U);
    *((char **)t11) = &&LAB189;
    goto LAB1;

LAB193:    xsi_set_current_line(303, ng0);
    t2 = (t0 + 2040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB194;

LAB195:
LAB196:    goto LAB1;

LAB194:    xsi_set_current_line(303, ng0);
    xsi_vlogfile_write(1, 0, 0, ng28, 1, t0);
    goto LAB196;

}


extern void work_m_00000000000687001256_2893803012_init()
{
	static char *pe[] = {(void *)Initial_49_0};
	static char *se[] = {(void *)sp_PRINT};
	xsi_register_didat("work_m_00000000000687001256_2893803012", "isim/TB_CMP_isim_beh.exe.sim/work/m_00000000000687001256_2893803012.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
