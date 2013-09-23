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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/ram.v";
static int ng1[] = {1, 0};
static const char *ng2 = "1out.txt";
static int ng3[] = {2, 0};
static int ng4[] = {0, 0};
static int ng5[] = {150, 0};
static unsigned int ng6[] = {49U, 0U};



static void Initial_45_0(char *t0)
{
    char t3[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(45, ng0);

LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 424);
    t2 = *((char **)t1);
    t1 = ((char*)((ng1)));
    memset(t3, 0, 8);
    xsi_vlog_signed_equal(t3, 32, t2, 32, t1, 32);
    t4 = (t3 + 4);
    t5 = *((unsigned int *)t4);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB3;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 424);
    t2 = *((char **)t1);
    t1 = ((char*)((ng3)));
    memset(t3, 0, 8);
    xsi_vlog_signed_equal(t3, 32, t2, 32, t1, 32);
    t4 = (t3 + 4);
    t5 = *((unsigned int *)t4);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:
LAB8:
LAB5:
LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t10 = (t0 + 1780);
    xsi_vlogfile_readmemh(ng2, 0, t10, 0, 0, 0, 0);
    goto LAB5;

LAB6:    xsi_set_current_line(49, ng0);
    xsi_set_current_line(49, ng0);
    t10 = ((char*)((ng4)));
    t11 = (t0 + 1688);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 32);

LAB9:    t1 = (t0 + 1688);
    t2 = (t1 + 36U);
    t4 = *((char **)t2);
    t10 = ((char*)((ng5)));
    memset(t3, 0, 8);
    xsi_vlog_signed_less(t3, 32, t4, 32, t10, 32);
    t11 = (t3 + 4);
    t5 = *((unsigned int *)t11);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(49, ng0);

LAB12:    xsi_set_current_line(50, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 1780);
    t16 = (t0 + 1780);
    t17 = (t16 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 1780);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 1688);
    t23 = (t22 + 36U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1688);
    t2 = (t1 + 36U);
    t4 = *((char **)t2);
    t10 = ((char*)((ng1)));
    memset(t3, 0, 8);
    xsi_vlog_signed_add(t3, 32, t4, 32, t10, 32);
    t11 = (t0 + 1688);
    xsi_vlogvar_assign_value(t11, t3, 0, 0, 32);
    goto LAB9;

LAB13:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB14;

}

static void Always_79_1(char *t0)
{
    char t20[8];
    char t21[8];
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
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;

LAB0:    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2788);
    *((int *)t2) = 1;
    t3 = (t0 + 2476);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 1092U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(81, ng0);
    t11 = (t0 + 1184U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB8;

LAB9:
LAB10:    goto LAB7;

LAB8:    xsi_set_current_line(82, ng0);
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    t18 = (t0 + 1780);
    t22 = (t0 + 1780);
    t23 = (t22 + 44U);
    t24 = *((char **)t23);
    t25 = (t0 + 1780);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    t28 = (t0 + 1276U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t20, t21, t24, t27, 2, 1, t29, 5, 2);
    t28 = (t20 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (!(t30));
    t32 = (t21 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB11;

LAB12:    goto LAB10;

LAB11:    t36 = *((unsigned int *)t20);
    t37 = *((unsigned int *)t21);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t18, t19, 0, *((unsigned int *)t21), t39, 0LL);
    goto LAB12;

}

static void Cont_84_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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

LAB0:    t1 = (t0 + 2592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1780);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1780);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1780);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 1276U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2840);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 2796);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000307295519_0063236307_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_79_1,(void *)Cont_84_2};
	xsi_register_didat("work_m_00000000000307295519_0063236307", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000307295519_0063236307.didat");
	xsi_register_executes(pe);
}
