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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/slt.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Cont_34_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t17[8];
    char t40[8];
    char t41[8];
    char *t1;
    char *t2;
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
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 784U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t12);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t40, 8);

LAB16:    t60 = (t0 + 2388);
    t61 = (t60 + 32U);
    t62 = *((char **)t61);
    t63 = (t62 + 40U);
    t64 = *((char **)t63);
    memcpy(t64, t3, 8);
    xsi_driver_vfirst_trans(t60, 0, 31);
    t65 = (t0 + 2336);
    *((int *)t65) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1060U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t19 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t19);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t18) != 0)
        goto LAB19;

LAB20:    t26 = (t17 + 4);
    t27 = *((unsigned int *)t17);
    t28 = *((unsigned int *)t26);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB21;

LAB22:    t31 = *((unsigned int *)t17);
    t32 = (~(t31));
    t33 = *((unsigned int *)t26);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t26) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t17) > 0)
        goto LAB27;

LAB28:    memcpy(t16, t35, 8);

LAB29:    goto LAB9;

LAB10:    t42 = (t0 + 968U);
    t43 = *((char **)t42);
    memset(t41, 0, 8);
    t42 = (t43 + 4);
    t44 = *((unsigned int *)t42);
    t45 = (~(t44));
    t46 = *((unsigned int *)t43);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t42) != 0)
        goto LAB32;

LAB33:    t50 = (t41 + 4);
    t51 = *((unsigned int *)t41);
    t52 = *((unsigned int *)t50);
    t53 = (t51 || t52);
    if (t53 > 0)
        goto LAB34;

LAB35:    t55 = *((unsigned int *)t41);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t50) > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t41) > 0)
        goto LAB40;

LAB41:    memcpy(t40, t59, 8);

LAB42:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t40, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t17) = 1;
    goto LAB20;

LAB19:    t25 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB20;

LAB21:    t30 = ((char*)((ng1)));
    goto LAB22;

LAB23:    t35 = ((char*)((ng2)));
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t16, 32, t30, 32, t35, 32);
    goto LAB29;

LAB27:    memcpy(t16, t30, 8);
    goto LAB29;

LAB30:    *((unsigned int *)t41) = 1;
    goto LAB33;

LAB32:    t49 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB33;

LAB34:    t54 = ((char*)((ng1)));
    goto LAB35;

LAB36:    t59 = ((char*)((ng2)));
    goto LAB37;

LAB38:    xsi_vlog_unsigned_bit_combine(t40, 32, t54, 32, t59, 32);
    goto LAB42;

LAB40:    memcpy(t40, t54, 8);
    goto LAB42;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
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

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    xsi_vlogtype_concat(t3, 2, 2, 2U, t5, 1, t2, 1);
    t4 = (t0 + 2424);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t3);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 1);
    t18 = (t0 + 2344);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000004135803533_3402758622_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000004135803533_3402758622", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000004135803533_3402758622.didat");
	xsi_register_executes(pe);
}
