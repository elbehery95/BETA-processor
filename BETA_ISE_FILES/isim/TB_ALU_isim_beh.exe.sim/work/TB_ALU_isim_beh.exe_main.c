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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000752322233_1553826200_init();
    work_m_00000000001239457316_3753760773_init();
    work_m_00000000003064120815_3442643821_init();
    work_m_00000000001416896340_0367844893_init();
    work_m_00000000001739293382_1579609468_init();
    work_m_00000000002784763134_0886308060_init();
    work_m_00000000000274401647_3331260324_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000274401647_3331260324");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
