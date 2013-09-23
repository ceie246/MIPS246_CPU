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
static const char *ng0 = "E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/bus_controller.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {65535U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {31, 0};
static unsigned int ng5[] = {4293918208U, 0U};
static unsigned int ng6[] = {4294966784U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {4294967040U, 0U};
static int ng9[] = {2, 0};
static unsigned int ng10[] = {268435440U, 0U};
static int ng11[] = {0, 0};
static unsigned int ng12[] = {268435441U, 0U};
static int ng13[] = {1, 0};



static void Always_30_0(char *t0)
{
    char t6[8];
    char t13[8];
    char t17[8];
    char t29[8];
    char t40[8];
    char t44[8];
    char t52[8];
    char t92[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
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
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    int t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    int t99;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1876);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 4294967295U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4294967295U);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t14 = (t6 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB7;

LAB6:    t15 = (t5 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t6) < *((unsigned int *)t5))
        goto LAB9;

LAB8:    *((unsigned int *)t13) = 1;

LAB9:    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t18) != 0)
        goto LAB13;

LAB14:    t25 = (t17 + 4);
    t26 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t25);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB15;

LAB16:    memcpy(t52, t17, 8);

LAB17:    t84 = (t52 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t52);
    t88 = (t87 & t86);
    t89 = (t88 != 0);
    if (t89 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 4294967295U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4294967295U);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t14 = (t6 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB37;

LAB36:    t15 = (t5 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t6) < *((unsigned int *)t5))
        goto LAB39;

LAB38:    *((unsigned int *)t13) = 1;

LAB39:    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t18) != 0)
        goto LAB43;

LAB44:    t25 = (t17 + 4);
    t26 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t25);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB45;

LAB46:    memcpy(t52, t17, 8);

LAB47:    t84 = (t52 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t52);
    t88 = (t87 & t86);
    t89 = (t88 != 0);
    if (t89 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 4294967295U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4294967295U);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    t14 = (t6 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB67;

LAB66:    t15 = (t5 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB67;

LAB70:    if (*((unsigned int *)t6) < *((unsigned int *)t5))
        goto LAB69;

LAB68:    *((unsigned int *)t13) = 1;

LAB69:    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (~(t19));
    t21 = *((unsigned int *)t13);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t18) != 0)
        goto LAB73;

LAB74:    t25 = (t17 + 4);
    t26 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t25);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB75;

LAB76:    memcpy(t52, t17, 8);

LAB77:    t84 = (t52 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t52);
    t88 = (t87 & t86);
    t89 = (t88 != 0);
    if (t89 > 0)
        goto LAB90;

LAB91:    xsi_set_current_line(38, ng0);

LAB96:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 4);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 4);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 268435455U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 268435455U);

LAB97:    t5 = ((char*)((ng10)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 28, t5, 28);
    if (t76 == 1)
        goto LAB98;

LAB99:    t2 = ((char*)((ng12)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 28, t2, 28);
    if (t76 == 1)
        goto LAB100;

LAB101:
LAB103:
LAB102:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB104:
LAB92:
LAB62:
LAB32:    goto LAB2;

LAB7:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t17) = 1;
    goto LAB14;

LAB13:    t24 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB14;

LAB15:    t30 = (t0 + 600U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t29 + 4);
    t32 = (t31 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 0);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 0);
    *((unsigned int *)t30) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 4294967295U);
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = ((char*)((ng2)));
    memset(t40, 0, 8);
    t41 = (t29 + 4);
    if (*((unsigned int *)t41) != 0)
        goto LAB19;

LAB18:    t42 = (t39 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB19;

LAB22:    if (*((unsigned int *)t29) < *((unsigned int *)t39))
        goto LAB20;

LAB21:    memset(t44, 0, 8);
    t45 = (t40 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t40);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t45) != 0)
        goto LAB25;

LAB26:    t53 = *((unsigned int *)t17);
    t54 = *((unsigned int *)t44);
    t55 = (t53 & t54);
    *((unsigned int *)t52) = t55;
    t56 = (t17 + 4);
    t57 = (t44 + 4);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB17;

LAB19:    t43 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB21;

LAB20:    *((unsigned int *)t40) = 1;
    goto LAB21;

LAB23:    *((unsigned int *)t44) = 1;
    goto LAB26;

LAB25:    t51 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB26;

LAB27:    t64 = *((unsigned int *)t52);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t52) = (t64 | t65);
    t66 = (t17 + 4);
    t67 = (t44 + 4);
    t68 = *((unsigned int *)t17);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (~(t70));
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (~(t74));
    t76 = (t69 & t71);
    t77 = (t73 & t75);
    t78 = (~(t76));
    t79 = (~(t77));
    t80 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t80 & t78);
    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & t79);
    t82 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t82 & t78);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    goto LAB29;

LAB30:    xsi_set_current_line(32, ng0);

LAB33:    xsi_set_current_line(33, ng0);
    t90 = ((char*)((ng3)));
    t91 = (t0 + 1012);
    t93 = (t0 + 1012);
    t94 = (t93 + 44U);
    t95 = *((char **)t94);
    t96 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t92, t95, 2, t96, 32, 1);
    t97 = (t92 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (!(t98));
    if (t99 == 1)
        goto LAB34;

LAB35:    goto LAB32;

LAB34:    xsi_vlogvar_assign_value(t91, t90, 0, *((unsigned int *)t92), 1);
    goto LAB35;

LAB37:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB39;

LAB41:    *((unsigned int *)t17) = 1;
    goto LAB44;

LAB43:    t24 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB44;

LAB45:    t30 = (t0 + 600U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t29 + 4);
    t32 = (t31 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 0);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 0);
    *((unsigned int *)t30) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 4294967295U);
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = ((char*)((ng6)));
    memset(t40, 0, 8);
    t41 = (t29 + 4);
    if (*((unsigned int *)t41) != 0)
        goto LAB49;

LAB48:    t42 = (t39 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB49;

LAB52:    if (*((unsigned int *)t29) < *((unsigned int *)t39))
        goto LAB50;

LAB51:    memset(t44, 0, 8);
    t45 = (t40 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t40);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t45) != 0)
        goto LAB55;

LAB56:    t53 = *((unsigned int *)t17);
    t54 = *((unsigned int *)t44);
    t55 = (t53 & t54);
    *((unsigned int *)t52) = t55;
    t56 = (t17 + 4);
    t57 = (t44 + 4);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB47;

LAB49:    t43 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB51;

LAB50:    *((unsigned int *)t40) = 1;
    goto LAB51;

LAB53:    *((unsigned int *)t44) = 1;
    goto LAB56;

LAB55:    t51 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB56;

LAB57:    t64 = *((unsigned int *)t52);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t52) = (t64 | t65);
    t66 = (t17 + 4);
    t67 = (t44 + 4);
    t68 = *((unsigned int *)t17);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (~(t70));
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (~(t74));
    t76 = (t69 & t71);
    t77 = (t73 & t75);
    t78 = (~(t76));
    t79 = (~(t77));
    t80 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t80 & t78);
    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & t79);
    t82 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t82 & t78);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    goto LAB59;

LAB60:    xsi_set_current_line(34, ng0);

LAB63:    xsi_set_current_line(35, ng0);
    t90 = ((char*)((ng3)));
    t91 = (t0 + 1012);
    t93 = (t0 + 1012);
    t94 = (t93 + 44U);
    t95 = *((char **)t94);
    t96 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t92, t95, 2, t96, 32, 1);
    t97 = (t92 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (!(t98));
    if (t99 == 1)
        goto LAB64;

LAB65:    goto LAB62;

LAB64:    xsi_vlogvar_assign_value(t91, t90, 0, *((unsigned int *)t92), 1);
    goto LAB65;

LAB67:    t16 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB69;

LAB71:    *((unsigned int *)t17) = 1;
    goto LAB74;

LAB73:    t24 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB74;

LAB75:    t30 = (t0 + 600U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t29 + 4);
    t32 = (t31 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 0);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 0);
    *((unsigned int *)t30) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 4294967295U);
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = ((char*)((ng8)));
    memset(t40, 0, 8);
    t41 = (t29 + 4);
    if (*((unsigned int *)t41) != 0)
        goto LAB79;

LAB78:    t42 = (t39 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB79;

LAB82:    if (*((unsigned int *)t29) < *((unsigned int *)t39))
        goto LAB80;

LAB81:    memset(t44, 0, 8);
    t45 = (t40 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t40);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t45) != 0)
        goto LAB85;

LAB86:    t53 = *((unsigned int *)t17);
    t54 = *((unsigned int *)t44);
    t55 = (t53 & t54);
    *((unsigned int *)t52) = t55;
    t56 = (t17 + 4);
    t57 = (t44 + 4);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB87;

LAB88:
LAB89:    goto LAB77;

LAB79:    t43 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB81;

LAB80:    *((unsigned int *)t40) = 1;
    goto LAB81;

LAB83:    *((unsigned int *)t44) = 1;
    goto LAB86;

LAB85:    t51 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB86;

LAB87:    t64 = *((unsigned int *)t52);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t52) = (t64 | t65);
    t66 = (t17 + 4);
    t67 = (t44 + 4);
    t68 = *((unsigned int *)t17);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (~(t70));
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (~(t74));
    t76 = (t69 & t71);
    t77 = (t73 & t75);
    t78 = (~(t76));
    t79 = (~(t77));
    t80 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t80 & t78);
    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & t79);
    t82 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t82 & t78);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    goto LAB89;

LAB90:    xsi_set_current_line(36, ng0);

LAB93:    xsi_set_current_line(37, ng0);
    t90 = ((char*)((ng3)));
    t91 = (t0 + 1012);
    t93 = (t0 + 1012);
    t94 = (t93 + 44U);
    t95 = *((char **)t94);
    t96 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t92, t95, 2, t96, 32, 1);
    t97 = (t92 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (!(t98));
    if (t99 == 1)
        goto LAB94;

LAB95:    goto LAB92;

LAB94:    xsi_vlogvar_assign_value(t91, t90, 0, *((unsigned int *)t92), 1);
    goto LAB95;

LAB98:    xsi_set_current_line(40, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    t16 = (t0 + 1012);
    t18 = (t16 + 44U);
    t24 = *((char **)t18);
    t25 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t13, t24, 2, t25, 32, 1);
    t30 = (t13 + 4);
    t19 = *((unsigned int *)t30);
    t77 = (!(t19));
    if (t77 == 1)
        goto LAB105;

LAB106:    goto LAB104;

LAB100:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1012);
    t5 = (t0 + 1012);
    t14 = (t5 + 44U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng13)));
    xsi_vlog_generic_convert_bit_index(t13, t15, 2, t16, 32, 1);
    t18 = (t13 + 4);
    t7 = *((unsigned int *)t18);
    t77 = (!(t7));
    if (t77 == 1)
        goto LAB107;

LAB108:    goto LAB104;

LAB105:    xsi_vlogvar_assign_value(t15, t14, 0, *((unsigned int *)t13), 1);
    goto LAB106;

LAB107:    xsi_vlogvar_assign_value(t4, t3, 0, *((unsigned int *)t13), 1);
    goto LAB108;

}

static void Cont_49_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 1884);
    *((int *)t16) = 1;

LAB1:    return;
}


extern void work_m_00000000000755985893_0370779545_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Cont_49_1};
	xsi_register_didat("work_m_00000000000755985893_0370779545", "isim/top_core_tb_isim_beh.exe.sim/work/m_00000000000755985893_0370779545.didat");
	xsi_register_executes(pe);
}
