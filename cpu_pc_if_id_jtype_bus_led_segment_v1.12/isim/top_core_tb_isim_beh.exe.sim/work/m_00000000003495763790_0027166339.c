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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/led_seg7.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {192U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {249U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {164U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {176U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {153U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {146U, 0U};
static unsigned int ng13[] = {6U, 0U};
static unsigned int ng14[] = {130U, 0U};
static unsigned int ng15[] = {7U, 0U};
static unsigned int ng16[] = {248U, 0U};
static unsigned int ng17[] = {8U, 0U};
static unsigned int ng18[] = {128U, 0U};
static unsigned int ng19[] = {9U, 0U};
static unsigned int ng20[] = {144U, 0U};
static unsigned int ng21[] = {10U, 0U};
static unsigned int ng22[] = {136U, 0U};
static unsigned int ng23[] = {11U, 0U};
static unsigned int ng24[] = {131U, 0U};
static unsigned int ng25[] = {12U, 0U};
static unsigned int ng26[] = {198U, 0U};
static unsigned int ng27[] = {13U, 0U};
static unsigned int ng28[] = {161U, 0U};
static unsigned int ng29[] = {14U, 0U};
static unsigned int ng30[] = {134U, 0U};
static unsigned int ng31[] = {15U, 0U};
static unsigned int ng32[] = {142U, 0U};
static unsigned int ng33[] = {255U, 0U};



static void Always_48_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3708);
    *((int *)t2) = 1;
    t3 = (t0 + 3108);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1960U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 0LL);
    goto LAB41;

LAB9:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB11:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB13:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB15:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB19:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB21:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB23:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB25:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 2464);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB41;

}

static void Always_71_1(char *t0)
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

LAB0:    t1 = (t0 + 3224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3716);
    *((int *)t2) = 1;
    t3 = (t0 + 3252);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 2052U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2556);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(73, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2556);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB8;

}

static void Cont_78_2(char *t0)
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

LAB0:    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2556);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3776);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3724);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_79_3(char *t0)
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

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2464);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3812);
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
    t18 = (t0 + 3732);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003495763790_0027166339_init()
{
	static char *pe[] = {(void *)Always_48_0,(void *)Always_71_1,(void *)Cont_78_2,(void *)Cont_79_3};
	xsi_register_didat("work_m_00000000003495763790_0027166339", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000003495763790_0027166339.didat");
	xsi_register_executes(pe);
}
