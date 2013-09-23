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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/top_segment_display.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {255U, 0U};
static unsigned int ng3[] = {8U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {1U, 0U};



static void Always_33_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2520);
    *((int *)t2) = 1;
    t3 = (t0 + 2208);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t13 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t13 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(65, ng0);

LAB30:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB24:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(40, ng0);

LAB25:    xsi_set_current_line(41, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    goto LAB24;

LAB14:    xsi_set_current_line(45, ng0);

LAB26:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    goto LAB24;

LAB16:    xsi_set_current_line(50, ng0);

LAB27:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(55, ng0);

LAB28:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(60, ng0);

LAB29:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    goto LAB24;

}

static void Cont_83_1(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2572);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 2528);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000179637022_2524589252_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Cont_83_1};
	xsi_register_didat("work_m_00000000000179637022_2524589252", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000179637022_2524589252.didat");
	xsi_register_executes(pe);
}
