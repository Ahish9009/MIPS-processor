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
static const char *ng0 = "/home/ahish/Sem-4/proc/decode-instr/decode-instr-ise/extender.v";
static int ng1[] = {16, 0};
static int ng2[] = {32, 0};



static void Cont_30_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t8[8];
    char t9[8];
    char t28[8];
    char t60[8];
    char t63[8];
    char t66[8];
    char t74[8];
    char t78[8];
    char t109[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    xsi_vlog_mul_concat(t5, 16, 1, t2, 1U, t7, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t5, 16, t4, 16);
    t6 = ((char*)((ng2)));
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    memset(t9, 0, 8);
    t10 = (t11 + 4);
    t12 = *((unsigned int *)t10);
    t13 = (~(t12));
    t14 = *((unsigned int *)t11);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t10) == 0)
        goto LAB4;

LAB6:    t17 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t17) = 1;

LAB7:    t18 = (t9 + 4);
    t19 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = (~(t20));
    *((unsigned int *)t9) = t21;
    *((unsigned int *)t18) = 0;
    if (*((unsigned int *)t19) != 0)
        goto LAB9;

LAB8:    t26 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t26 & 1U);
    t27 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t27 & 1U);
    xsi_vlog_mul_concat(t8, 32, 1, t6, 1U, t9, 1);
    t29 = *((unsigned int *)t3);
    t30 = *((unsigned int *)t8);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t32 = (t3 + 4);
    t33 = (t8 + 4);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t32);
    t36 = *((unsigned int *)t33);
    t37 = (t35 | t36);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB10;

LAB11:
LAB12:    t61 = (t0 + 1208U);
    t62 = *((char **)t61);
    t61 = ((char*)((ng1)));
    t64 = (t0 + 1208U);
    t65 = *((char **)t64);
    memset(t66, 0, 8);
    t64 = (t66 + 4);
    t67 = (t65 + 4);
    t68 = *((unsigned int *)t65);
    t69 = (t68 >> 15);
    t70 = (t69 & 1);
    *((unsigned int *)t66) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 >> 15);
    t73 = (t72 & 1);
    *((unsigned int *)t64) = t73;
    xsi_vlog_mul_concat(t63, 16, 1, t61, 1U, t66, 1);
    xsi_vlogtype_concat(t60, 32, 32, 2U, t63, 16, t62, 16);
    t75 = ((char*)((ng2)));
    t76 = (t0 + 1048U);
    t77 = *((char **)t76);
    xsi_vlog_mul_concat(t74, 32, 1, t75, 1U, t77, 1);
    t79 = *((unsigned int *)t60);
    t80 = *((unsigned int *)t74);
    t81 = (t79 & t80);
    *((unsigned int *)t78) = t81;
    t76 = (t60 + 4);
    t82 = (t74 + 4);
    t83 = (t78 + 4);
    t84 = *((unsigned int *)t76);
    t85 = *((unsigned int *)t82);
    t86 = (t84 | t85);
    *((unsigned int *)t83) = t86;
    t87 = *((unsigned int *)t83);
    t88 = (t87 != 0);
    if (t88 == 1)
        goto LAB13;

LAB14:
LAB15:    t110 = *((unsigned int *)t28);
    t111 = *((unsigned int *)t78);
    t112 = (t110 | t111);
    *((unsigned int *)t109) = t112;
    t113 = (t28 + 4);
    t114 = (t78 + 4);
    t115 = (t109 + 4);
    t116 = *((unsigned int *)t113);
    t117 = *((unsigned int *)t114);
    t118 = (t116 | t117);
    *((unsigned int *)t115) = t118;
    t119 = *((unsigned int *)t115);
    t120 = (t119 != 0);
    if (t120 == 1)
        goto LAB16;

LAB17:
LAB18:    t137 = (t0 + 2920);
    t138 = (t137 + 56U);
    t139 = *((char **)t138);
    t140 = (t139 + 56U);
    t141 = *((char **)t140);
    memcpy(t141, t109, 8);
    xsi_driver_vfirst_trans(t137, 0, 31);
    t142 = (t0 + 2840);
    *((int *)t142) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB9:    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t19);
    *((unsigned int *)t9) = (t22 | t23);
    t24 = *((unsigned int *)t18);
    t25 = *((unsigned int *)t19);
    *((unsigned int *)t18) = (t24 | t25);
    goto LAB8;

LAB10:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t28) = (t40 | t41);
    t42 = (t3 + 4);
    t43 = (t8 + 4);
    t44 = *((unsigned int *)t3);
    t45 = (~(t44));
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t8);
    t49 = (~(t48));
    t50 = *((unsigned int *)t43);
    t51 = (~(t50));
    t52 = (t45 & t47);
    t53 = (t49 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t56 & t54);
    t57 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t57 & t55);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    t59 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t59 & t55);
    goto LAB12;

LAB13:    t89 = *((unsigned int *)t78);
    t90 = *((unsigned int *)t83);
    *((unsigned int *)t78) = (t89 | t90);
    t91 = (t60 + 4);
    t92 = (t74 + 4);
    t93 = *((unsigned int *)t60);
    t94 = (~(t93));
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    t97 = *((unsigned int *)t74);
    t98 = (~(t97));
    t99 = *((unsigned int *)t92);
    t100 = (~(t99));
    t101 = (t94 & t96);
    t102 = (t98 & t100);
    t103 = (~(t101));
    t104 = (~(t102));
    t105 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t105 & t103);
    t106 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t106 & t104);
    t107 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t107 & t103);
    t108 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t108 & t104);
    goto LAB15;

LAB16:    t121 = *((unsigned int *)t109);
    t122 = *((unsigned int *)t115);
    *((unsigned int *)t109) = (t121 | t122);
    t123 = (t28 + 4);
    t124 = (t78 + 4);
    t125 = *((unsigned int *)t123);
    t126 = (~(t125));
    t127 = *((unsigned int *)t28);
    t128 = (t127 & t126);
    t129 = *((unsigned int *)t124);
    t130 = (~(t129));
    t131 = *((unsigned int *)t78);
    t132 = (t131 & t130);
    t133 = (~(t128));
    t134 = (~(t132));
    t135 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t135 & t133);
    t136 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t136 & t134);
    goto LAB18;

}


extern void work_m_15716949674616126073_1739518194_init()
{
	static char *pe[] = {(void *)Cont_30_0};
	xsi_register_didat("work_m_15716949674616126073_1739518194", "isim/execute_tb4_isim_beh.exe.sim/work/m_15716949674616126073_1739518194.didat");
	xsi_register_executes(pe);
}
