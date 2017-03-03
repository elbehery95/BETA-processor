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
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/PC.v";
static int ng1[] = {4, 0};
static int ng2[] = {30, 0};
static int ng3[] = {0, 0};
static int ng4[] = {31, 0};
static unsigned int ng5[] = {0U, 0U};
static int ng6[] = {14, 0};
static int ng7[] = {1, 0};
static int ng8[] = {2, 0};
static int ng9[] = {3, 0};
static unsigned int ng10[] = {2147483652U, 0U};
static unsigned int ng11[] = {2147483656U, 0U};
static unsigned int ng12[] = {2147483648U, 0U};



static void Always_37_0(char *t0)
{
    char t8[8];
    char t10[8];
    char t11[8];
    char t12[8];
    char t36[8];
    char t37[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    int t20;
    char *t21;
    unsigned int t22;
    int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    char *t39;
    char *t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4216);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t9 = (t0 + 2248);
    t13 = (t0 + 2248);
    t14 = (t13 + 72U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng2)));
    t17 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t10, t11, t12, ((int*)(t15)), 2, t16, 32, 1, t17, 32, 1);
    t18 = (t10 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (!(t19));
    t21 = (t11 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t20 && t23);
    t25 = (t12 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t22 = (t19 >> 31);
    t26 = (t22 & 1);
    *((unsigned int *)t8) = t26;
    t29 = *((unsigned int *)t6);
    t31 = (t29 >> 31);
    t32 = (t31 & 1);
    *((unsigned int *)t5) = t32;
    t7 = (t0 + 2248);
    t9 = (t0 + 2248);
    t13 = (t9 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t10, t14, 2, t15, 32, 1);
    t16 = (t10 + 4);
    t35 = *((unsigned int *)t16);
    t20 = (!(t35));
    if (t20 == 1)
        goto LAB8;

LAB9:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t22 = (t19 >> 31);
    t26 = (t22 & 1);
    *((unsigned int *)t8) = t26;
    t29 = *((unsigned int *)t6);
    t31 = (t29 >> 31);
    t32 = (t31 & 1);
    *((unsigned int *)t5) = t32;
    t7 = (t0 + 2408);
    t9 = (t0 + 2408);
    t13 = (t9 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t10, t14, 2, t15, 32, 1);
    t16 = (t10 + 4);
    t35 = *((unsigned int *)t16);
    t20 = (!(t35));
    if (t20 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    t6 = (t0 + 1528U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng6)));
    t9 = (t0 + 1528U);
    t13 = *((char **)t9);
    memset(t11, 0, 8);
    t9 = (t11 + 4);
    t14 = (t13 + 4);
    t19 = *((unsigned int *)t13);
    t22 = (t19 >> 15);
    t26 = (t22 & 1);
    *((unsigned int *)t11) = t26;
    t29 = *((unsigned int *)t14);
    t31 = (t29 >> 15);
    t32 = (t31 & 1);
    *((unsigned int *)t9) = t32;
    xsi_vlog_mul_concat(t10, 14, 1, t6, 1U, t11, 1);
    xsi_vlogtype_concat(t8, 32, 32, 3U, t10, 14, t7, 16, t5, 2);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t4, 32, t8, 32);
    t15 = (t0 + 2408);
    t16 = (t0 + 2408);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t21 = ((char*)((ng2)));
    t25 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t36, t37, t38, ((int*)(t18)), 2, t21, 32, 1, t25, 32, 1);
    t39 = (t36 + 4);
    t35 = *((unsigned int *)t39);
    t20 = (!(t35));
    t40 = (t37 + 4);
    t41 = *((unsigned int *)t40);
    t23 = (!(t41));
    t24 = (t20 && t23);
    t42 = (t38 + 4);
    t43 = *((unsigned int *)t42);
    t27 = (!(t43));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB12;

LAB13:    goto LAB2;

LAB6:    t29 = *((unsigned int *)t12);
    t30 = (t29 + 0);
    t31 = *((unsigned int *)t10);
    t32 = *((unsigned int *)t11);
    t33 = (t31 - t32);
    t34 = (t33 + 1);
    xsi_vlogvar_assign_value(t9, t8, t30, *((unsigned int *)t11), t34);
    goto LAB7;

LAB8:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t10), 1);
    goto LAB9;

LAB10:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t10), 1);
    goto LAB11;

LAB12:    t44 = *((unsigned int *)t38);
    t30 = (t44 + 0);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t37);
    t33 = (t45 - t46);
    t34 = (t33 + 1);
    xsi_vlogvar_assign_value(t15, t12, t30, *((unsigned int *)t37), t34);
    goto LAB13;

}

static void Always_44_1(char *t0)
{
    char t4[8];
    char t26[8];
    char t27[8];
    char t28[8];
    char t29[8];
    char t96[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t30;
    int t31;
    char *t32;
    int t33;
    int t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    int t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    unsigned int t102;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4232);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB43;

LAB44:
LAB45:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng0);

LAB13:    xsi_set_current_line(50, ng0);
    t19 = (t0 + 1368U);
    t20 = *((char **)t19);

LAB14:    t19 = ((char*)((ng3)));
    t21 = xsi_vlog_unsigned_case_compare(t20, 3, t19, 32);
    if (t21 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t21 = xsi_vlog_unsigned_case_compare(t20, 3, t2, 32);
    if (t21 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t21 = xsi_vlog_unsigned_case_compare(t20, 3, t2, 32);
    if (t21 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t21 = xsi_vlog_unsigned_case_compare(t20, 3, t2, 32);
    if (t21 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t20, 3, t2, 32);
    if (t21 == 1)
        goto LAB23;

LAB24:
LAB26:
LAB25:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB27:    goto LAB12;

LAB15:    xsi_set_current_line(51, ng0);
    t22 = (t0 + 2248);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t0 + 2088);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 32);
    goto LAB27;

LAB17:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2408);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t12 = (t0 + 2088);
    xsi_vlogvar_assign_value(t12, t6, 0, 0, 32);
    goto LAB27;

LAB19:    xsi_set_current_line(53, ng0);

LAB28:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1688U);
    t6 = *((char **)t5);
    memset(t26, 0, 8);
    t5 = (t26 + 4);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 2);
    *((unsigned int *)t26) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 2);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t11 & 536870911U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 536870911U);
    xsi_vlogtype_concat(t4, 31, 31, 2U, t26, 29, t3, 2);
    t13 = (t0 + 2088);
    t19 = (t0 + 2088);
    t22 = (t19 + 72U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng2)));
    t25 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t27, t28, t29, ((int*)(t23)), 2, t24, 32, 1, t25, 32, 1);
    t30 = (t27 + 4);
    t15 = *((unsigned int *)t30);
    t31 = (!(t15));
    t32 = (t28 + 4);
    t16 = *((unsigned int *)t32);
    t33 = (!(t16));
    t34 = (t31 && t33);
    t35 = (t29 + 4);
    t17 = *((unsigned int *)t35);
    t36 = (!(t17));
    t37 = (t34 && t36);
    if (t37 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2088);
    t12 = (t6 + 72U);
    t13 = *((char **)t12);
    t19 = ((char*)((ng4)));
    xsi_vlog_generic_get_index_select_value(t4, 32, t5, t13, 2, t19, 32, 1);
    t22 = ((char*)((ng7)));
    memset(t26, 0, 8);
    t23 = (t4 + 4);
    t24 = (t22 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t22);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t23);
    t11 = *((unsigned int *)t24);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t23);
    t17 = *((unsigned int *)t24);
    t18 = (t16 | t17);
    t39 = (~(t18));
    t40 = (t15 & t39);
    if (t40 != 0)
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t26) = 1;

LAB34:    t30 = (t26 + 4);
    t43 = *((unsigned int *)t30);
    t44 = (~(t43));
    t45 = *((unsigned int *)t26);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB27;

LAB21:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB27;

LAB23:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB27;

LAB29:    t18 = *((unsigned int *)t29);
    t38 = (t18 + 0);
    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t28);
    t41 = (t39 - t40);
    t42 = (t41 + 1);
    xsi_vlogvar_assign_value(t13, t4, t38, *((unsigned int *)t28), t42);
    goto LAB30;

LAB33:    t25 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(56, ng0);
    t32 = (t0 + 2088);
    t35 = (t32 + 56U);
    t48 = *((char **)t35);
    memset(t27, 0, 8);
    t49 = (t27 + 4);
    t50 = (t48 + 4);
    t51 = *((unsigned int *)t48);
    t52 = (t51 >> 31);
    t53 = (t52 & 1);
    *((unsigned int *)t27) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 31);
    t56 = (t55 & 1);
    *((unsigned int *)t49) = t56;
    t57 = (t0 + 1688U);
    t58 = *((char **)t57);
    memset(t28, 0, 8);
    t57 = (t28 + 4);
    t59 = (t58 + 4);
    t60 = *((unsigned int *)t58);
    t61 = (t60 >> 31);
    t62 = (t61 & 1);
    *((unsigned int *)t28) = t62;
    t63 = *((unsigned int *)t59);
    t64 = (t63 >> 31);
    t65 = (t64 & 1);
    *((unsigned int *)t57) = t65;
    t66 = *((unsigned int *)t27);
    t67 = *((unsigned int *)t28);
    t68 = (t66 & t67);
    *((unsigned int *)t29) = t68;
    t69 = (t27 + 4);
    t70 = (t28 + 4);
    t71 = (t29 + 4);
    t72 = *((unsigned int *)t69);
    t73 = *((unsigned int *)t70);
    t74 = (t72 | t73);
    *((unsigned int *)t71) = t74;
    t75 = *((unsigned int *)t71);
    t76 = (t75 != 0);
    if (t76 == 1)
        goto LAB38;

LAB39:
LAB40:    t95 = (t0 + 2088);
    t97 = (t0 + 2088);
    t98 = (t97 + 72U);
    t99 = *((char **)t98);
    t100 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t96, t99, 2, t100, 32, 1);
    t101 = (t96 + 4);
    t102 = *((unsigned int *)t101);
    t33 = (!(t102));
    if (t33 == 1)
        goto LAB41;

LAB42:    goto LAB37;

LAB38:    t77 = *((unsigned int *)t29);
    t78 = *((unsigned int *)t71);
    *((unsigned int *)t29) = (t77 | t78);
    t79 = (t27 + 4);
    t80 = (t28 + 4);
    t81 = *((unsigned int *)t27);
    t82 = (~(t81));
    t83 = *((unsigned int *)t79);
    t84 = (~(t83));
    t85 = *((unsigned int *)t28);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (~(t87));
    t21 = (t82 & t84);
    t31 = (t86 & t88);
    t89 = (~(t21));
    t90 = (~(t31));
    t91 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t91 & t89);
    t92 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t92 & t90);
    t93 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t93 & t89);
    t94 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t94 & t90);
    goto LAB40;

LAB41:    xsi_vlogvar_assign_value(t95, t29, 0, *((unsigned int *)t96), 1);
    goto LAB42;

LAB43:    xsi_set_current_line(63, ng0);

LAB46:    xsi_set_current_line(64, ng0);
    t5 = ((char*)((ng12)));
    t6 = (t0 + 2088);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB45;

}


extern void work_m_00000000003441261530_1733832700_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Always_44_1};
	xsi_register_didat("work_m_00000000003441261530_1733832700", "isim/TB_PC_isim_beh.exe.sim/work/m_00000000003441261530_1733832700.didat");
	xsi_register_executes(pe);
}
