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
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/CMP.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static int ng5[] = {0, 0};



static void Always_29_0(char *t0)
{
    char t7[8];
    char t11[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(31, ng0);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t8, 31, t9, 1);
    t10 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t10, t7, 0, 0, 32, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t8 = *((char **)t3);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    *((unsigned int *)t11) = t14;
    t3 = (t4 + 4);
    t9 = (t8 + 4);
    t10 = (t11 + 4);
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t10) = t17;
    t18 = *((unsigned int *)t10);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB16;

LAB17:
LAB18:    t22 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t22, 31, t11, 1);
    t23 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t23, t7, 0, 0, 32, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t8 = *((char **)t3);
    t3 = (t0 + 1368U);
    t9 = *((char **)t3);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t9);
    t14 = (t12 ^ t13);
    *((unsigned int *)t11) = t14;
    t3 = (t8 + 4);
    t10 = (t9 + 4);
    t22 = (t11 + 4);
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t10);
    t17 = (t15 | t16);
    *((unsigned int *)t22) = t17;
    t18 = *((unsigned int *)t22);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB19;

LAB20:
LAB21:    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t11);
    t27 = (t25 | t26);
    *((unsigned int *)t24) = t27;
    t23 = (t4 + 4);
    t28 = (t11 + 4);
    t29 = (t24 + 4);
    t30 = *((unsigned int *)t23);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB22;

LAB23:
LAB24:    t51 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t51, 31, t24, 1);
    t52 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t52, t7, 0, 0, 32, 0LL);
    goto LAB15;

LAB16:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t10);
    *((unsigned int *)t11) = (t20 | t21);
    goto LAB18;

LAB19:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t22);
    *((unsigned int *)t11) = (t20 | t21);
    goto LAB21;

LAB22:    t35 = *((unsigned int *)t24);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t24) = (t35 | t36);
    t37 = (t4 + 4);
    t38 = (t11 + 4);
    t39 = *((unsigned int *)t37);
    t40 = (~(t39));
    t41 = *((unsigned int *)t4);
    t42 = (t41 & t40);
    t43 = *((unsigned int *)t38);
    t44 = (~(t43));
    t45 = *((unsigned int *)t11);
    t46 = (t45 & t44);
    t47 = (~(t42));
    t48 = (~(t46));
    t49 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t49 & t47);
    t50 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t50 & t48);
    goto LAB24;

}


extern void work_m_00000000001739293382_1579609468_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000001739293382_1579609468", "isim/TB_BETA_isim_beh.exe.sim/work/m_00000000001739293382_1579609468.didat");
	xsi_register_executes(pe);
}
