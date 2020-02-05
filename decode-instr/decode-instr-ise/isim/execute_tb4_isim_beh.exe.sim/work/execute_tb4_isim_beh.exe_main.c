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
    work_m_14852770617867229533_0705972556_init();
    work_m_05795187791028476524_4202280821_init();
    work_m_15716949674616126073_1739518194_init();
    work_m_05795187791028476524_2841845313_init();
    work_m_08648737137012366775_2902715030_init();
    work_m_05500401954396341194_4159358495_init();
    work_m_16520074374794006850_2725559894_init();
    work_m_14591457742195476764_1076422922_init();
    work_m_03546239551420884784_1718907247_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_03546239551420884784_1718907247");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
