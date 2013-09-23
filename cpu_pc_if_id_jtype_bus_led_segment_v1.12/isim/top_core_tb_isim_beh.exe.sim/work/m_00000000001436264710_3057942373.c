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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/addsub32.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};



static void Cont_56_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 784U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    memset(t4, 0, 8);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t14) != 0)
        goto LAB6;

LAB7:    t21 = (t4 + 4);
    t22 = *((unsigned int *)t4);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB8;

LAB9:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t21);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t21) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t42, 8);

LAB16:    t41 = (t0 + 2756);
    t43 = (t41 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t3, 8);
    xsi_driver_vfirst_trans(t41, 0, 31);
    t47 = (t0 + 2704);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB7;

LAB8:    t26 = (t0 + 692U);
    t27 = *((char **)t26);
    memset(t25, 0, 8);
    t26 = (t25 + 4);
    t28 = (t27 + 4);
    t29 = *((unsigned int *)t27);
    t30 = (~(t29));
    *((unsigned int *)t25) = t30;
    *((unsigned int *)t26) = 0;
    if (*((unsigned int *)t28) != 0)
        goto LAB18;

LAB17:    t35 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t35 & 4294967295U);
    t36 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t36 & 4294967295U);
    goto LAB9;

LAB10:    t41 = (t0 + 692U);
    t42 = *((char **)t41);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t25, 32, t42, 32);
    goto LAB16;

LAB14:    memcpy(t3, t25, 8);
    goto LAB16;

LAB18:    t31 = *((unsigned int *)t25);
    t32 = *((unsigned int *)t28);
    *((unsigned int *)t25) = (t31 | t32);
    t33 = *((unsigned int *)t26);
    t34 = *((unsigned int *)t28);
    *((unsigned int *)t26) = (t33 | t34);
    goto LAB17;

}

static void Always_61_1(char *t0)
{
    char t6[8];
    char t9[8];
    char t39[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
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
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2712);
    *((int *)t2) = 1;
    t3 = (t0 + 2536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1472);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1748);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 760U);
    t4 = (t2 + 44U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t10 = (t6 + 4);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB9;

LAB6:    if (t21 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t9) = 1;

LAB9:    t25 = (t9 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t9);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(74, ng0);

LAB22:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1472);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    memset(t39, 0, 8);
    t2 = (t39 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 0);
    t14 = (t13 & 1);
    *((unsigned int *)t39) = t14;
    t15 = *((unsigned int *)t4);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t2) = t17;
    memset(t9, 0, 8);
    t5 = (t39 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    t20 = *((unsigned int *)t39);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t5) != 0)
        goto LAB25;

LAB26:    t8 = (t9 + 4);
    t23 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t8);
    t27 = (t23 || t26);
    if (t27 > 0)
        goto LAB27;

LAB28:    t45 = *((unsigned int *)t9);
    t46 = (~(t45));
    t47 = *((unsigned int *)t8);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t8) > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t9) > 0)
        goto LAB33;

LAB34:    memcpy(t6, t49, 8);

LAB35:    t32 = (t0 + 1656);
    xsi_vlogvar_assign_value(t32, t6, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1748);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB12:    goto LAB2;

LAB8:    t24 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(66, ng0);

LAB13:    xsi_set_current_line(67, ng0);
    t31 = ((char*)((ng3)));
    t32 = (t0 + 1656);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 968U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t5 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t6) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t2) = t17;
    memset(t9, 0, 8);
    t7 = (t3 + 4);
    t8 = (t6 + 4);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t6);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t8);
    t23 = (t21 ^ t22);
    t26 = (t20 | t23);
    t27 = *((unsigned int *)t7);
    t28 = *((unsigned int *)t8);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t33 = (t26 & t30);
    if (t33 != 0)
        goto LAB17;

LAB14:    if (t29 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t9) = 1;

LAB17:    t11 = (t9 + 4);
    t34 = *((unsigned int *)t11);
    t35 = (~(t34));
    t36 = *((unsigned int *)t9);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB20:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t6) = t14;
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t5) = t17;
    t8 = (t0 + 1748);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 1);
    goto LAB12;

LAB16:    t10 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(68, ng0);

LAB21:    xsi_set_current_line(69, ng0);
    t24 = (t0 + 968U);
    t25 = *((char **)t24);
    t24 = (t0 + 1472);
    xsi_vlogvar_assign_value(t24, t25, 0, 0, 32);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB20;

LAB23:    *((unsigned int *)t9) = 1;
    goto LAB26;

LAB25:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB26;

LAB27:    t10 = (t0 + 1060U);
    t11 = *((char **)t10);
    memset(t40, 0, 8);
    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t33 = (t30 & t29);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t10) == 0)
        goto LAB36;

LAB38:    t24 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t24) = 1;

LAB39:    t25 = (t40 + 4);
    t31 = (t11 + 4);
    t35 = *((unsigned int *)t11);
    t36 = (~(t35));
    *((unsigned int *)t40) = t36;
    *((unsigned int *)t25) = 0;
    if (*((unsigned int *)t31) != 0)
        goto LAB41;

LAB40:    t43 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t43 & 1U);
    t44 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t44 & 1U);
    goto LAB28;

LAB29:    t32 = (t0 + 1060U);
    t49 = *((char **)t32);
    goto LAB30;

LAB31:    xsi_vlog_unsigned_bit_combine(t6, 1, t40, 1, t49, 1);
    goto LAB35;

LAB33:    memcpy(t6, t40, 8);
    goto LAB35;

LAB36:    *((unsigned int *)t40) = 1;
    goto LAB39;

LAB41:    t37 = *((unsigned int *)t40);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t40) = (t37 | t38);
    t41 = *((unsigned int *)t25);
    t42 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t41 | t42);
    goto LAB40;

}


extern void work_m_00000000001436264710_3057942373_init()
{
	static char *pe[] = {(void *)Cont_56_0,(void *)Always_61_1};
	xsi_register_didat("work_m_00000000001436264710_3057942373", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000001436264710_3057942373.didat");
	xsi_register_executes(pe);
}
