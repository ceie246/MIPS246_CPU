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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/mux4x32.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1996);
    *((int *)t2) = 1;
    t3 = (t0 + 1828);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 680U);
    t8 = *((char **)t7);
    t7 = (t0 + 1276);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB15;

LAB9:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 772U);
    t4 = *((char **)t3);
    t3 = (t0 + 1276);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB15;

LAB11:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 864U);
    t4 = *((char **)t3);
    t3 = (t0 + 1276);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB15;

LAB13:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 956U);
    t4 = *((char **)t3);
    t3 = (t0 + 1276);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB15;

}


extern void work_m_00000000000668175236_2761705081_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000000668175236_2761705081", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000668175236_2761705081.didat");
	xsi_register_executes(pe);
}
