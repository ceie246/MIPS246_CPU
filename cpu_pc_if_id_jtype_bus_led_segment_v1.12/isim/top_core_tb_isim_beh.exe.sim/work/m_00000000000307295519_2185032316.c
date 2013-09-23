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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/ram_kb.v";
static unsigned int ng1[] = {255U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_79_0(char *t0)
{
    char t20[8];
    char t44[8];
    char t45[8];
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    int t55;
    char *t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;

LAB0:    t1 = (t0 + 2304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2644);
    *((int *)t2) = 1;
    t3 = (t0 + 2332);
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

LAB8:    xsi_set_current_line(81, ng0);

LAB11:    xsi_set_current_line(82, ng0);
    t18 = (t0 + 1276U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng1)));
    memset(t20, 0, 8);
    t21 = (t19 + 4);
    t22 = (t18 + 4);
    t23 = *((unsigned int *)t19);
    t24 = *((unsigned int *)t18);
    t25 = (t23 ^ t24);
    t26 = *((unsigned int *)t21);
    t27 = *((unsigned int *)t22);
    t28 = (t26 ^ t27);
    t29 = (t25 | t28);
    t30 = *((unsigned int *)t21);
    t31 = *((unsigned int *)t22);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB13;

LAB12:    if (t32 != 0)
        goto LAB14;

LAB15:    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB16;

LAB17:
LAB18:    goto LAB10;

LAB13:    *((unsigned int *)t20) = 1;
    goto LAB15;

LAB14:    t35 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(82, ng0);

LAB19:    xsi_set_current_line(83, ng0);
    t42 = (t0 + 1368U);
    t43 = *((char **)t42);
    t42 = (t0 + 1780);
    t46 = (t0 + 1780);
    t47 = (t46 + 44U);
    t48 = *((char **)t47);
    t49 = (t0 + 1780);
    t50 = (t49 + 40U);
    t51 = *((char **)t50);
    t52 = (t0 + 1276U);
    t53 = *((char **)t52);
    xsi_vlog_generic_convert_array_indices(t44, t45, t48, t51, 2, 1, t53, 8, 2);
    t52 = (t44 + 4);
    t54 = *((unsigned int *)t52);
    t55 = (!(t54));
    t56 = (t45 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (!(t57));
    t59 = (t55 && t58);
    if (t59 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1780);
    t4 = (t0 + 1780);
    t5 = (t4 + 44U);
    t11 = *((char **)t5);
    t12 = (t0 + 1780);
    t18 = (t12 + 40U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t20, t44, t11, t19, 2, 1, t21, 8, 2);
    t22 = (t20 + 4);
    t6 = *((unsigned int *)t22);
    t55 = (!(t6));
    t35 = (t44 + 4);
    t7 = *((unsigned int *)t35);
    t58 = (!(t7));
    t59 = (t55 && t58);
    if (t59 == 1)
        goto LAB22;

LAB23:    goto LAB18;

LAB20:    t60 = *((unsigned int *)t44);
    t61 = *((unsigned int *)t45);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t42, t43, 0, *((unsigned int *)t45), t63, 0LL);
    goto LAB21;

LAB22:    t8 = *((unsigned int *)t20);
    t9 = *((unsigned int *)t44);
    t62 = (t8 - t9);
    t63 = (t62 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t44), t63, 0LL);
    goto LAB23;

}

static void Cont_88_1(char *t0)
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
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
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
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t13, 8, 2);
    t12 = (t0 + 2696);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 255U;
    t19 = t18;
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t26 = (t0 + 2652);
    *((int *)t26) = 1;

LAB1:    return;
}


extern void work_m_00000000000307295519_2185032316_init()
{
	static char *pe[] = {(void *)Always_79_0,(void *)Cont_88_1};
	xsi_register_didat("work_m_00000000000307295519_2185032316", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000307295519_2185032316.didat");
	xsi_register_executes(pe);
}
