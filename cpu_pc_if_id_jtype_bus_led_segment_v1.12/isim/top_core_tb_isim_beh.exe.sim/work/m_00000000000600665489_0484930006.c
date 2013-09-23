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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/kb2ascii.v";
static unsigned int ng1[] = {22U, 0U};
static unsigned int ng2[] = {49U, 0U};
static unsigned int ng3[] = {30U, 0U};
static unsigned int ng4[] = {50U, 0U};
static unsigned int ng5[] = {38U, 0U};
static unsigned int ng6[] = {51U, 0U};
static unsigned int ng7[] = {37U, 0U};
static unsigned int ng8[] = {52U, 0U};
static unsigned int ng9[] = {46U, 0U};
static unsigned int ng10[] = {53U, 0U};
static unsigned int ng11[] = {54U, 0U};
static unsigned int ng12[] = {61U, 0U};
static unsigned int ng13[] = {55U, 0U};
static unsigned int ng14[] = {62U, 0U};
static unsigned int ng15[] = {56U, 0U};
static unsigned int ng16[] = {70U, 0U};
static unsigned int ng17[] = {57U, 0U};
static unsigned int ng18[] = {69U, 0U};
static unsigned int ng19[] = {48U, 0U};
static unsigned int ng20[] = {28U, 0U};
static unsigned int ng21[] = {97U, 0U};
static unsigned int ng22[] = {98U, 0U};
static unsigned int ng23[] = {33U, 0U};
static unsigned int ng24[] = {99U, 0U};
static unsigned int ng25[] = {35U, 0U};
static unsigned int ng26[] = {100U, 0U};
static unsigned int ng27[] = {36U, 0U};
static unsigned int ng28[] = {101U, 0U};
static unsigned int ng29[] = {43U, 0U};
static unsigned int ng30[] = {102U, 0U};
static unsigned int ng31[] = {103U, 0U};
static unsigned int ng32[] = {104U, 0U};
static unsigned int ng33[] = {67U, 0U};
static unsigned int ng34[] = {105U, 0U};
static unsigned int ng35[] = {59U, 0U};
static unsigned int ng36[] = {106U, 0U};
static unsigned int ng37[] = {66U, 0U};
static unsigned int ng38[] = {107U, 0U};
static unsigned int ng39[] = {75U, 0U};
static unsigned int ng40[] = {108U, 0U};
static unsigned int ng41[] = {58U, 0U};
static unsigned int ng42[] = {109U, 0U};
static unsigned int ng43[] = {110U, 0U};
static unsigned int ng44[] = {68U, 0U};
static unsigned int ng45[] = {111U, 0U};
static unsigned int ng46[] = {77U, 0U};
static unsigned int ng47[] = {112U, 0U};
static unsigned int ng48[] = {21U, 0U};
static unsigned int ng49[] = {113U, 0U};
static unsigned int ng50[] = {45U, 0U};
static unsigned int ng51[] = {114U, 0U};
static unsigned int ng52[] = {27U, 0U};
static unsigned int ng53[] = {115U, 0U};
static unsigned int ng54[] = {44U, 0U};
static unsigned int ng55[] = {116U, 0U};
static unsigned int ng56[] = {60U, 0U};
static unsigned int ng57[] = {117U, 0U};
static unsigned int ng58[] = {42U, 0U};
static unsigned int ng59[] = {118U, 0U};
static unsigned int ng60[] = {29U, 0U};
static unsigned int ng61[] = {119U, 0U};
static unsigned int ng62[] = {34U, 0U};
static unsigned int ng63[] = {120U, 0U};
static unsigned int ng64[] = {121U, 0U};
static unsigned int ng65[] = {26U, 0U};
static unsigned int ng66[] = {122U, 0U};
static unsigned int ng67[] = {14U, 0U};
static unsigned int ng68[] = {96U, 0U};
static unsigned int ng69[] = {78U, 0U};
static unsigned int ng70[] = {85U, 0U};
static unsigned int ng71[] = {84U, 0U};
static unsigned int ng72[] = {91U, 0U};
static unsigned int ng73[] = {93U, 0U};
static unsigned int ng74[] = {92U, 0U};
static unsigned int ng75[] = {76U, 0U};
static unsigned int ng76[] = {82U, 0U};
static unsigned int ng77[] = {39U, 0U};
static unsigned int ng78[] = {65U, 0U};
static unsigned int ng79[] = {73U, 0U};
static unsigned int ng80[] = {74U, 0U};
static unsigned int ng81[] = {47U, 0U};



static void Always_30_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 12724U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 13064);
    *((int *)t2) = 1;
    t3 = (t0 + 12752);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 11880U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t4, 8);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng44)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng46)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng48)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng50)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng52)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng54)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng56)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng58)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng60)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng62)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB73;

LAB74:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB75;

LAB76:    t2 = ((char*)((ng65)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB77;

LAB78:    t2 = ((char*)((ng67)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB79;

LAB80:    t2 = ((char*)((ng69)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB81;

LAB82:    t2 = ((char*)((ng70)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB83;

LAB84:    t2 = ((char*)((ng71)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB85;

LAB86:    t2 = ((char*)((ng72)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB87;

LAB88:    t2 = ((char*)((ng73)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB89;

LAB90:    t2 = ((char*)((ng75)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB91;

LAB92:    t2 = ((char*)((ng76)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB93;

LAB94:    t2 = ((char*)((ng78)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB95;

LAB96:    t2 = ((char*)((ng79)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB97;

LAB98:    t2 = ((char*)((ng80)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t2, 8);
    if (t6 == 1)
        goto LAB99;

LAB100:
LAB102:
LAB101:    xsi_set_current_line(80, ng0);

LAB104:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 11880U);
    t3 = *((char **)t2);
    t2 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);

LAB103:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 8, 0LL);
    goto LAB103;

LAB9:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB11:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB13:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB15:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB17:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB19:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB21:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB23:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB25:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB27:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB29:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB31:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB33:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB35:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB37:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB39:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng31)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB41:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB43:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB45:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB47:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB49:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB51:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng42)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB53:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng43)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB55:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng45)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB57:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng47)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB59:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng49)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB61:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng51)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB63:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng53)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB65:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng55)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB67:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng57)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB69:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng59)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB71:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng61)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB73:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng63)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB75:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng64)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB77:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng66)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB79:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng68)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB81:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng50)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB83:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB85:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng72)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB87:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng73)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB89:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng74)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB91:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng35)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB93:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng77)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB95:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng54)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB97:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

LAB99:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng81)));
    t4 = (t0 + 12200);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB103;

}

static void Cont_86_1(char *t0)
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

LAB0:    t1 = (t0 + 12868U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 12200);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 13116);
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
    t18 = (t0 + 13072);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000600665489_0484930006_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Cont_86_1};
	xsi_register_didat("work_m_00000000000600665489_0484930006", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000600665489_0484930006.didat");
	xsi_register_executes(pe);
}
