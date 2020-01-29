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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ahish/Sem-4/proc/alu/alu-ise/alu.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static int ng7[] = {1, 0};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static unsigned int ng15[] = {12U, 0U};
static unsigned int ng16[] = {13U, 0U};
static unsigned int ng17[] = {14U, 0U};
static unsigned int ng18[] = {15U, 0U};



static void Cont_37_0(char *t0)
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
    char *t10;

LAB0:    t1 = (t0 + 5080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7296);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 7136);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_38_1(char *t0)
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

LAB0:    t1 = (t0 + 5328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
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
    t18 = (t0 + 7152);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_39_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 5576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t4);
    t6 = *((unsigned int *)t2);
    t7 = (t5 | t6);
    if (t7 != 4294967295U)
        goto LAB5;

LAB4:    if (*((unsigned int *)t2) == 0)
        goto LAB6;

LAB7:    t8 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t8) = 1;

LAB5:    t9 = (t0 + 7424);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 1U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 0);
    t22 = (t0 + 7168);
    *((int *)t22) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t3) = 1;
    goto LAB5;

}

static void Cont_40_3(char *t0)
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

LAB0:    t1 = (t0 + 5824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
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
    t18 = (t0 + 7184);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_49_4(char *t0)
{
    char t9[8];
    char t10[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
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
    unsigned int t41;
    unsigned int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;

LAB0:    t1 = (t0 + 6072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 7200);
    *((int *)t2) = 1;
    t3 = (t0 + 6104);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB2;

LAB7:    xsi_set_current_line(55, ng0);

LAB40:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 2808U);
    t8 = *((char **)t7);
    t7 = (t0 + 3848);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB39;

LAB9:    xsi_set_current_line(63, ng0);

LAB41:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 2968U);
    t4 = *((char **)t3);
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB39;

LAB11:    xsi_set_current_line(71, ng0);

LAB42:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB13:    xsi_set_current_line(79, ng0);

LAB43:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB15:    xsi_set_current_line(87, ng0);

LAB44:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng7)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 32, t4, 32, t3, 32);
    t7 = (t0 + 3848);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB17:    xsi_set_current_line(95, ng0);

LAB45:    xsi_set_current_line(96, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng7)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 32, t4, 32, t3, 32);
    t7 = (t0 + 3848);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB19:    xsi_set_current_line(103, ng0);

LAB46:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB48;

LAB47:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB48;

LAB51:    if (*((unsigned int *)t4) > *((unsigned int *)t7))
        goto LAB49;

LAB50:    memset(t10, 0, 8);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t13) != 0)
        goto LAB54;

LAB55:    t20 = (t10 + 4);
    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB56;

LAB57:    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t20);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t20) > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t10) > 0)
        goto LAB62;

LAB63:    memcpy(t9, t29, 8);

LAB64:    t30 = (t0 + 3848);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB21:    xsi_set_current_line(111, ng0);

LAB65:    xsi_set_current_line(112, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB67;

LAB66:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB67;

LAB70:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB68;

LAB69:    memset(t10, 0, 8);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t13) != 0)
        goto LAB73;

LAB74:    t20 = (t10 + 4);
    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB75;

LAB76:    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t20);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t20) > 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t10) > 0)
        goto LAB81;

LAB82:    memcpy(t9, t29, 8);

LAB83:    t30 = (t0 + 3848);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB23:    xsi_set_current_line(119, ng0);

LAB84:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 ^ t18);
    t22 = (t16 | t21);
    t23 = *((unsigned int *)t3);
    t25 = *((unsigned int *)t8);
    t26 = (t23 | t25);
    t27 = (~(t26));
    t28 = (t22 & t27);
    if (t28 != 0)
        goto LAB88;

LAB85:    if (t26 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t11) = 1;

LAB88:    memset(t10, 0, 8);
    t13 = (t11 + 4);
    t31 = *((unsigned int *)t13);
    t32 = (~(t31));
    t33 = *((unsigned int *)t11);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t13) != 0)
        goto LAB91;

LAB92:    t20 = (t10 + 4);
    t36 = *((unsigned int *)t10);
    t37 = *((unsigned int *)t20);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB93;

LAB94:    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t20);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t20) > 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t10) > 0)
        goto LAB99;

LAB100:    memcpy(t9, t29, 8);

LAB101:    t30 = (t0 + 3848);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB25:    xsi_set_current_line(127, ng0);

LAB102:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 & t15);
    *((unsigned int *)t9) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t9 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB103;

LAB104:
LAB105:    t20 = (t0 + 3848);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB27:    xsi_set_current_line(135, ng0);

LAB106:    xsi_set_current_line(136, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t9 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB107;

LAB108:
LAB109:    t20 = (t0 + 3848);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB29:    xsi_set_current_line(143, ng0);

LAB110:    xsi_set_current_line(144, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 & t15);
    *((unsigned int *)t10) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t10 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB111;

LAB112:
LAB113:    memset(t9, 0, 8);
    t20 = (t9 + 4);
    t24 = (t10 + 4);
    t45 = *((unsigned int *)t10);
    t46 = (~(t45));
    *((unsigned int *)t9) = t46;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB115;

LAB114:    t51 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t51 & 4294967295U);
    t52 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t52 & 4294967295U);
    t29 = (t0 + 3848);
    xsi_vlogvar_assign_value(t29, t9, 0, 0, 32);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB31:    xsi_set_current_line(151, ng0);

LAB116:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 | t15);
    *((unsigned int *)t10) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t10 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB117;

LAB118:
LAB119:    memset(t9, 0, 8);
    t20 = (t9 + 4);
    t24 = (t10 + 4);
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    *((unsigned int *)t9) = t40;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB121;

LAB120:    t47 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t47 & 4294967295U);
    t48 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t48 & 4294967295U);
    t29 = (t0 + 3848);
    xsi_vlogvar_assign_value(t29, t9, 0, 0, 32);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB33:    xsi_set_current_line(159, ng0);

LAB122:    xsi_set_current_line(160, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    *((unsigned int *)t9) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t9 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB123;

LAB124:
LAB125:    t13 = (t0 + 3848);
    xsi_vlogvar_assign_value(t13, t9, 0, 0, 32);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB35:    xsi_set_current_line(167, ng0);

LAB126:    xsi_set_current_line(168, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    *((unsigned int *)t10) = t16;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = (t10 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    t21 = (t17 | t18);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t12);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB127;

LAB128:
LAB129:    memset(t9, 0, 8);
    t13 = (t9 + 4);
    t19 = (t10 + 4);
    t27 = *((unsigned int *)t10);
    t28 = (~(t27));
    *((unsigned int *)t9) = t28;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t19) != 0)
        goto LAB131;

LAB130:    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & 4294967295U);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & 4294967295U);
    t20 = (t0 + 3848);
    xsi_vlogvar_assign_value(t20, t9, 0, 0, 32);
    xsi_set_current_line(169, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB37:    xsi_set_current_line(175, ng0);

LAB132:    xsi_set_current_line(176, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB48:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB50;

LAB49:    *((unsigned int *)t11) = 1;
    goto LAB50;

LAB52:    *((unsigned int *)t10) = 1;
    goto LAB55;

LAB54:    t19 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB55;

LAB56:    t24 = ((char*)((ng2)));
    goto LAB57;

LAB58:    t29 = ((char*)((ng1)));
    goto LAB59;

LAB60:    xsi_vlog_unsigned_bit_combine(t9, 32, t24, 32, t29, 32);
    goto LAB64;

LAB62:    memcpy(t9, t24, 8);
    goto LAB64;

LAB67:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB69;

LAB68:    *((unsigned int *)t11) = 1;
    goto LAB69;

LAB71:    *((unsigned int *)t10) = 1;
    goto LAB74;

LAB73:    t19 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB74;

LAB75:    t24 = ((char*)((ng2)));
    goto LAB76;

LAB77:    t29 = ((char*)((ng1)));
    goto LAB78;

LAB79:    xsi_vlog_unsigned_bit_combine(t9, 32, t24, 32, t29, 32);
    goto LAB83;

LAB81:    memcpy(t9, t24, 8);
    goto LAB83;

LAB87:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB88;

LAB89:    *((unsigned int *)t10) = 1;
    goto LAB92;

LAB91:    t19 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB92;

LAB93:    t24 = ((char*)((ng2)));
    goto LAB94;

LAB95:    t29 = ((char*)((ng1)));
    goto LAB96;

LAB97:    xsi_vlog_unsigned_bit_combine(t9, 32, t24, 32, t29, 32);
    goto LAB101;

LAB99:    memcpy(t9, t24, 8);
    goto LAB101;

LAB103:    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t9) = (t25 | t26);
    t13 = (t4 + 4);
    t19 = (t7 + 4);
    t27 = *((unsigned int *)t4);
    t28 = (~(t27));
    t31 = *((unsigned int *)t13);
    t32 = (~(t31));
    t33 = *((unsigned int *)t7);
    t34 = (~(t33));
    t35 = *((unsigned int *)t19);
    t36 = (~(t35));
    t43 = (t28 & t32);
    t44 = (t34 & t36);
    t37 = (~(t43));
    t38 = (~(t44));
    t39 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t39 & t37);
    t40 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t40 & t38);
    t41 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t41 & t37);
    t42 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t42 & t38);
    goto LAB105;

LAB107:    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t9) = (t25 | t26);
    t13 = (t4 + 4);
    t19 = (t7 + 4);
    t27 = *((unsigned int *)t13);
    t28 = (~(t27));
    t31 = *((unsigned int *)t4);
    t43 = (t31 & t28);
    t32 = *((unsigned int *)t19);
    t33 = (~(t32));
    t34 = *((unsigned int *)t7);
    t44 = (t34 & t33);
    t35 = (~(t43));
    t36 = (~(t44));
    t37 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t37 & t35);
    t38 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t38 & t36);
    goto LAB109;

LAB111:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t10) = (t25 | t26);
    t13 = (t4 + 4);
    t19 = (t7 + 4);
    t27 = *((unsigned int *)t4);
    t28 = (~(t27));
    t31 = *((unsigned int *)t13);
    t32 = (~(t31));
    t33 = *((unsigned int *)t7);
    t34 = (~(t33));
    t35 = *((unsigned int *)t19);
    t36 = (~(t35));
    t43 = (t28 & t32);
    t44 = (t34 & t36);
    t37 = (~(t43));
    t38 = (~(t44));
    t39 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t39 & t37);
    t40 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t40 & t38);
    t41 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t41 & t37);
    t42 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t42 & t38);
    goto LAB113;

LAB115:    t47 = *((unsigned int *)t9);
    t48 = *((unsigned int *)t24);
    *((unsigned int *)t9) = (t47 | t48);
    t49 = *((unsigned int *)t20);
    t50 = *((unsigned int *)t24);
    *((unsigned int *)t20) = (t49 | t50);
    goto LAB114;

LAB117:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t10) = (t25 | t26);
    t13 = (t4 + 4);
    t19 = (t7 + 4);
    t27 = *((unsigned int *)t13);
    t28 = (~(t27));
    t31 = *((unsigned int *)t4);
    t43 = (t31 & t28);
    t32 = *((unsigned int *)t19);
    t33 = (~(t32));
    t34 = *((unsigned int *)t7);
    t44 = (t34 & t33);
    t35 = (~(t43));
    t36 = (~(t44));
    t37 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t37 & t35);
    t38 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t38 & t36);
    goto LAB119;

LAB121:    t41 = *((unsigned int *)t9);
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t9) = (t41 | t42);
    t45 = *((unsigned int *)t20);
    t46 = *((unsigned int *)t24);
    *((unsigned int *)t20) = (t45 | t46);
    goto LAB120;

LAB123:    t25 = *((unsigned int *)t9);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t9) = (t25 | t26);
    goto LAB125;

LAB127:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t12);
    *((unsigned int *)t10) = (t25 | t26);
    goto LAB129;

LAB131:    t31 = *((unsigned int *)t9);
    t32 = *((unsigned int *)t19);
    *((unsigned int *)t9) = (t31 | t32);
    t33 = *((unsigned int *)t13);
    t34 = *((unsigned int *)t19);
    *((unsigned int *)t13) = (t33 | t34);
    goto LAB130;

}

static void implSig1_execute(char *t0)
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

LAB0:    t1 = (t0 + 6320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 7552);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig2_execute(char *t0)
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

LAB0:    t1 = (t0 + 6568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng2)));
    t3 = (t0 + 7616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 6816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    *((unsigned int *)t3) = t7;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t5) != 0)
        goto LAB5;

LAB4:    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 4294967295U);
    t14 = (t0 + 7680);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 8);
    xsi_driver_vfirst_trans(t14, 0, 31);
    t19 = (t0 + 7216);
    *((int *)t19) = 1;

LAB1:    return;
LAB5:    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t5);
    *((unsigned int *)t3) = (t8 | t9);
    t10 = *((unsigned int *)t2);
    t11 = *((unsigned int *)t5);
    *((unsigned int *)t2) = (t10 | t11);
    goto LAB4;

}


extern void work_m_16520074374794006850_2725559894_init()
{
	static char *pe[] = {(void *)Cont_37_0,(void *)Cont_38_1,(void *)Cont_39_2,(void *)Cont_40_3,(void *)Always_49_4,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_16520074374794006850_2725559894", "isim/alu_tb_isim_beh.exe.sim/work/m_16520074374794006850_2725559894.didat");
	xsi_register_executes(pe);
}
