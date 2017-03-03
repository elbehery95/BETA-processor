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
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/BETA_CORE.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {16, 0};



static void Always_102_0(char *t0)
{
    char t4[8];
    char t7[8];
    char t34[8];
    char t66[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;

LAB0:    t1 = (t0 + 6208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6528);
    *((int *)t2) = 1;
    t3 = (t0 + 6240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);

LAB5:    xsi_set_current_line(103, ng0);
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t5) = t14;
    memset(t4, 0, 8);
    t15 = (t7 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t15) == 0)
        goto LAB6;

LAB8:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;

LAB9:    t22 = (t4 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    *((unsigned int *)t4) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB11;

LAB10:    t30 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t30 & 1U);
    t31 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t31 & 1U);
    t32 = (t0 + 1368U);
    t33 = *((char **)t32);
    t35 = *((unsigned int *)t4);
    t36 = *((unsigned int *)t33);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t32 = (t4 + 4);
    t38 = (t33 + 4);
    t39 = (t34 + 4);
    t40 = *((unsigned int *)t32);
    t41 = *((unsigned int *)t38);
    t42 = (t40 | t41);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB12;

LAB13:
LAB14:    t65 = (t0 + 4648);
    xsi_vlogvar_assign_value(t65, t34, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t6);
    t14 = (t12 ^ t13);
    t16 = (t11 | t14);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t6);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t24 = (t16 & t20);
    if (t24 != 0)
        goto LAB18;

LAB15:    if (t19 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t15 = (t4 + 4);
    t25 = *((unsigned int *)t15);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB21:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);

LAB22:    t2 = ((char*)((ng1)));
    t57 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t57 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng2)));
    t57 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t57 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng3)));
    t57 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t57 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 4968);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 32);

LAB31:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2808U);
    t5 = *((char **)t2);

LAB32:    t2 = ((char*)((ng1)));
    t57 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 32);
    if (t57 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng2)));
    t57 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 32);
    if (t57 == 1)
        goto LAB35;

LAB36:
LAB37:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2968U);
    t6 = *((char **)t2);

LAB38:    t2 = ((char*)((ng1)));
    t57 = xsi_vlog_unsigned_case_compare(t6, 1, t2, 32);
    if (t57 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng2)));
    t57 = xsi_vlog_unsigned_case_compare(t6, 1, t2, 32);
    if (t57 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t26 = *((unsigned int *)t4);
    t27 = *((unsigned int *)t23);
    *((unsigned int *)t4) = (t26 | t27);
    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    goto LAB10;

LAB12:    t45 = *((unsigned int *)t34);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t34) = (t45 | t46);
    t47 = (t4 + 4);
    t48 = (t33 + 4);
    t49 = *((unsigned int *)t4);
    t50 = (~(t49));
    t51 = *((unsigned int *)t47);
    t52 = (~(t51));
    t53 = *((unsigned int *)t33);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (~(t55));
    t57 = (t50 & t52);
    t58 = (t54 & t56);
    t59 = (~(t57));
    t60 = (~(t58));
    t61 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t61 & t59);
    t62 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t62 & t60);
    t63 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t63 & t59);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    goto LAB14;

LAB17:    t8 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(106, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 4808);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 1);
    goto LAB21;

LAB23:    xsi_set_current_line(111, ng0);
    t5 = (t0 + 4088U);
    t6 = *((char **)t5);
    t5 = (t0 + 4968);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 32);
    goto LAB31;

LAB25:    xsi_set_current_line(112, ng0);
    t5 = (t0 + 2008U);
    t6 = *((char **)t5);
    t5 = (t0 + 4968);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 32);
    goto LAB31;

LAB27:    xsi_set_current_line(113, ng0);
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    t5 = (t0 + 4968);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 32);
    goto LAB31;

LAB33:    xsi_set_current_line(118, ng0);
    t6 = (t0 + 2648U);
    t8 = *((char **)t6);
    t6 = (t0 + 5128);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB37;

LAB35:    xsi_set_current_line(119, ng0);
    t6 = (t0 + 4248U);
    t8 = *((char **)t6);
    memset(t7, 0, 8);
    t6 = (t7 + 4);
    t15 = (t8 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (t9 >> 0);
    *((unsigned int *)t7) = t10;
    t11 = *((unsigned int *)t15);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t13 & 2147483647U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 2147483647U);
    t21 = ((char*)((ng4)));
    xsi_vlogtype_concat(t4, 32, 32, 2U, t21, 1, t7, 31);
    t22 = (t0 + 5128);
    xsi_vlogvar_assign_value(t22, t4, 0, 0, 32);
    goto LAB37;

LAB39:    xsi_set_current_line(123, ng0);
    t8 = (t0 + 2488U);
    t15 = *((char **)t8);
    t8 = (t0 + 5288);
    xsi_vlogvar_assign_value(t8, t15, 0, 0, 32);
    goto LAB43;

LAB41:    xsi_set_current_line(124, ng0);
    t8 = (t0 + 1688U);
    t15 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t21 = (t15 + 4);
    t9 = *((unsigned int *)t15);
    t10 = (t9 >> 0);
    *((unsigned int *)t7) = t10;
    t11 = *((unsigned int *)t21);
    t12 = (t11 >> 0);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t13 & 65535U);
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 65535U);
    t22 = ((char*)((ng5)));
    t23 = (t0 + 1688U);
    t32 = *((char **)t23);
    memset(t66, 0, 8);
    t23 = (t66 + 4);
    t33 = (t32 + 4);
    t16 = *((unsigned int *)t32);
    t17 = (t16 >> 15);
    t18 = (t17 & 1);
    *((unsigned int *)t66) = t18;
    t19 = *((unsigned int *)t33);
    t20 = (t19 >> 15);
    t24 = (t20 & 1);
    *((unsigned int *)t23) = t24;
    xsi_vlog_mul_concat(t34, 16, 1, t22, 1U, t66, 1);
    xsi_vlogtype_concat(t4, 32, 32, 2U, t34, 16, t7, 16);
    t38 = (t0 + 5288);
    xsi_vlogvar_assign_value(t38, t4, 0, 0, 32);
    goto LAB43;

}


extern void work_m_00000000002524260457_3896224451_init()
{
	static char *pe[] = {(void *)Always_102_0};
	xsi_register_didat("work_m_00000000002524260457_3896224451", "isim/TB_BETA_isim_beh.exe.sim/work/m_00000000002524260457_3896224451.didat");
	xsi_register_executes(pe);
}
