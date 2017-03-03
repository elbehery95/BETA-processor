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
static const char *ng0 = "F:/Verilog projects/BETA/BETA_ISE_WORKS/BETA_ISE/BOOL.v";



static void Always_41_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1168U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    xsi_vlog_generic_get_index_select_value(t6, 1, t5, t8, 2, t10, 2, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t9, t6, 0, 0, 1, 0LL);
    goto LAB2;

}


extern void work_m_00000000001239457316_3753760773_init()
{
	static char *pe[] = {(void *)Always_41_0};
	xsi_register_didat("work_m_00000000001239457316_3753760773", "isim/TB_BETA_isim_beh.exe.sim/work/m_00000000001239457316_3753760773.didat");
	xsi_register_executes(pe);
}
