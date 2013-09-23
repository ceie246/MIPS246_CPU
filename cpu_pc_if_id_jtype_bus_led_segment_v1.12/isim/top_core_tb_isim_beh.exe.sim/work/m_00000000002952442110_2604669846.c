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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/file_write.v";
static const char *ng1 = "file_test.out";
static const char *ng2 = "";
static const char *ng3 = "%s = %h";
static int ng4[] = {1702048306, 0, 1734764908, 0, 29285, 0};



static void Initial_29_0(char *t0)
{

LAB0:    xsi_set_current_line(29, ng0);

LAB2:
LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2036);
    *((int *)t2) = 1;
    t3 = (t0 + 1868);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    *((int *)t4) = xsi_vlogfile_file_open_of_cname(ng1);
    t5 = (t4 + 4);
    *((int *)t5) = 0;
    t6 = (t0 + 1080);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1080);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(0, 0, 0, ng2, 2, t0, (char)119, t5, 32);
    t6 = ((char*)((ng4)));
    t7 = (t0 + 852U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t6, 80, (char)118, t8, 32);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1080);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    xsi_vlogfile_fclose(*((unsigned int *)t5));
    goto LAB2;

}


extern void work_m_00000000002952442110_2604669846_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Always_35_1};
	xsi_register_didat("work_m_00000000002952442110_2604669846", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000002952442110_2604669846.didat");
	xsi_register_executes(pe);
}
