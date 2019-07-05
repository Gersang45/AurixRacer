/**
 * \file IfxGtm_PinMap.h
 * \brief GTM I/O map
 * \ingroup IfxLld_Gtm
 *
 * \version iLLD_1_0_1_8_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \defgroup IfxLld_Gtm_pinmap GTM Pin Mapping
 * \ingroup IfxLld_Gtm
 */

#ifndef IFXGTM_PINMAP_H
#define IFXGTM_PINMAP_H

#include <IfxGtm_reg.h>
#include <_Impl/IfxGtm_cfg.h>
#include <Port/Std/IfxPort.h>
#include <Gtm/Std/IfxGtm_Atom.h>
#include <Gtm/Std/IfxGtm_Tom.h>
#include <Gtm/Std/IfxGtm_Tim.h>

/** \addtogroup IfxLld_Gtm_pinmap
 * \{ */

/** \brief CHxSEL register control code */
typedef enum
{
    IfxGtm_ChXSel_a,
    IfxGtm_ChXSel_b,
    IfxGtm_ChXSel_c,
    IfxGtm_ChXSel_d,

    IfxGtm_ChXSel_e,
    IfxGtm_ChXSel_f,
    IfxGtm_ChXSel_g,
    IfxGtm_ChXSel_h,

    IfxGtm_ChXSel_i,
    IfxGtm_ChXSel_j,
    IfxGtm_ChXSel_k,
    IfxGtm_ChXSel_l,

    IfxGtm_ChXSel_m,
    IfxGtm_ChXSel_n,
    IfxGtm_ChXSel_o,
    IfxGtm_ChXSel_p
} IfxGtm_ChXSel;

/** \brief TOUTSEL register control code */
typedef enum
{
    IfxGtm_ToutSel_a,
    IfxGtm_ToutSel_b,
    IfxGtm_ToutSel_c,
    IfxGtm_ToutSel_d,
    IfxGtm_ToutSel_e
} IfxGtm_ToutSel;

/** \brief TIN pin mapping structure */
typedef const struct
{
    IfxGtm_Tim      tim;        /**< \brief TIM unit index */
    IfxGtm_Tim_Ch   channel;    /**< \brief TIM channel index */
    IfxPort_Pin     pin;        /**< \brief Port pin */
    IfxGtm_ChXSel   select;     /**< \brief Input multiplexer value */
} IfxGtm_Tim_TinMap;

/** \brief ATOM TOUT pin mapping structure */
typedef const struct
{
    IfxGtm_Atom         atom;       /**< \brief ATOM unit index */
    IfxGtm_Atom_Ch      channel;    /**< \brief ATOM channel index */
    IfxGtm_ToutSel      toutSel;    /**< \brief TOUTSEL register control code */
    uint32              toutn;      /**< \brief TOUT number */
    IfxPort_Pin         pin;        /**< \brief Port pin */
    IfxPort_OutputIdx   select;     /**< \brief Port control code */
} IfxGtm_Atom_ToutMap;

/** \brief Pointer to \ref IfxGtm_Atom_ToutMap */
typedef IfxGtm_Atom_ToutMap *IfxGtm_Atom_ToutMapP;

/** \brief TOM TOUT pin mapping structure */
typedef const struct
{
    IfxGtm_Tom          tom;        /**< \brief TOM unit index */
    IfxGtm_Tom_Ch       channel;    /**< \brief TOM channel index */
    IfxGtm_ToutSel      toutSel;    /**< \brief TOUTSEL register control code */
    uint32              toutn;      /**< \brief TOUT number */
    IfxPort_Pin         pin;        /**< \brief Port pin */
    IfxPort_OutputIdx   select;     /**< \brief Port control code */
} IfxGtm_Tom_ToutMap;

/** \brief GTM Clock Output */
typedef const struct
{
    Ifx_GTM*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxGtm_Clk_Out;

/** \brief Pointer to \ref IfxGtm_Tom_ToutMap */
typedef IfxGtm_Tom_ToutMap *IfxGtm_Tom_ToutMapP;

IFX_EXTERN void IfxGtm_PinMap_setTimTin(IfxGtm_Tim_TinMap *config, IfxPort_InputMode inputMode);
IFX_EXTERN void IfxGtm_PinMap_setAtomTout(IfxGtm_Atom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
IFX_EXTERN void IfxGtm_PinMap_setTomTout(IfxGtm_Tom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);

IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT0_P02_0_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT0_P02_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT48_P22_1_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT48_P22_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT53_P21_2_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT53_P21_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT85_P14_5_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT85_P14_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT8_P02_8_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT8_P02_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_0_TOUT9_P00_0_OUT;  /**< \brief IfxGtm_ATOM0_0_TOUT9_P00_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT10_P00_1_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT10_P00_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT11_P00_2_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT11_P00_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT1_P02_1_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT1_P02_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT31_P33_9_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT31_P33_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT47_P22_0_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT47_P22_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT54_P21_3_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT54_P21_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_1_TOUT84_P14_4_OUT;  /**< \brief IfxGtm_ATOM0_1_TOUT84_P14_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT12_P00_3_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT12_P00_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT2_P02_2_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT2_P02_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT33_P33_11_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT33_P33_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT46_P23_5_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT46_P23_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT55_P21_4_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT55_P21_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_2_TOUT83_P14_3_OUT;  /**< \brief IfxGtm_ATOM0_2_TOUT83_P14_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT13_P00_4_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT13_P00_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT38_P32_2_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT38_P32_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT3_P02_3_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT3_P02_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT49_P22_2_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT49_P22_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT56_P21_5_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT56_P21_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT60_P20_1_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT60_P20_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_3_TOUT82_P14_2_OUT;  /**< \brief IfxGtm_ATOM0_3_TOUT82_P14_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT14_P00_5_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT14_P00_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT39_P32_3_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT39_P32_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT4_P02_4_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT4_P02_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT50_P22_3_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT50_P22_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT57_P21_6_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT57_P21_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT61_P20_3_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT61_P20_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_4_TOUT81_P14_1_OUT;  /**< \brief IfxGtm_ATOM0_4_TOUT81_P14_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT15_P00_6_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT15_P00_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT23_P33_1_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT23_P33_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT40_P32_4_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT40_P32_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT41_P23_0_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT41_P23_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT58_P21_7_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT58_P21_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_5_TOUT5_P02_5_OUT;  /**< \brief IfxGtm_ATOM0_5_TOUT5_P02_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT106_P10_4_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT106_P10_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT16_P00_7_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT16_P00_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT24_P33_2_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT24_P33_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT42_P23_1_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT42_P23_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT59_P20_0_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT59_P20_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_6_TOUT6_P02_6_OUT;  /**< \brief IfxGtm_ATOM0_6_TOUT6_P02_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT17_P00_8_OUT;  /**< \brief IfxGtm_ATOM0_7_TOUT17_P00_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT25_P33_3_OUT;  /**< \brief IfxGtm_ATOM0_7_TOUT25_P33_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT45_P23_4_OUT;  /**< \brief IfxGtm_ATOM0_7_TOUT45_P23_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT64_P20_8_OUT;  /**< \brief IfxGtm_ATOM0_7_TOUT64_P20_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM0_7_TOUT7_P02_7_OUT;  /**< \brief IfxGtm_ATOM0_7_TOUT7_P02_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT0_P02_0_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT0_P02_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT109_P10_7_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT109_P10_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT68_P20_12_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT68_P20_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT76_P15_5_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT76_P15_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT77_P15_6_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT77_P15_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT87_P14_7_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT87_P14_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT8_P02_8_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT8_P02_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_0_TOUT9_P00_0_OUT;  /**< \brief IfxGtm_ATOM1_0_TOUT9_P00_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT103_P10_1_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT103_P10_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT10_P00_1_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT10_P00_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT11_P00_2_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT11_P00_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT1_P02_1_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT1_P02_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT31_P33_9_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT31_P33_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT69_P20_13_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT69_P20_13_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT78_P15_7_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT78_P15_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT79_P15_8_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT79_P15_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_1_TOUT86_P14_6_OUT;  /**< \brief IfxGtm_ATOM1_1_TOUT86_P14_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT104_P10_2_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT104_P10_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT107_P10_5_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT107_P10_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT12_P00_3_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT12_P00_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT2_P02_2_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT2_P02_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT33_P33_11_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT33_P33_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT70_P20_14_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT70_P20_14_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_2_TOUT80_P14_0_OUT;  /**< \brief IfxGtm_ATOM1_2_TOUT80_P14_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT105_P10_3_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT105_P10_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT108_P10_6_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT108_P10_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT13_P00_4_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT13_P00_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT38_P32_2_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT38_P32_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT3_P02_3_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT3_P02_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT60_P20_1_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT60_P20_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_3_TOUT71_P15_0_OUT;  /**< \brief IfxGtm_ATOM1_3_TOUT71_P15_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT102_P10_0_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT102_P10_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT14_P00_5_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT14_P00_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT39_P32_3_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT39_P32_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT4_P02_4_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT4_P02_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT61_P20_3_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT61_P20_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_4_TOUT72_P15_1_OUT;  /**< \brief IfxGtm_ATOM1_4_TOUT72_P15_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT110_P10_8_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT110_P10_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT15_P00_6_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT15_P00_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT23_P33_1_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT23_P33_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT40_P32_4_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT40_P32_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT41_P23_0_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT41_P23_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT5_P02_5_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT5_P02_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT65_P20_9_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT65_P20_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_5_TOUT73_P15_2_OUT;  /**< \brief IfxGtm_ATOM1_5_TOUT73_P15_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT16_P00_7_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT16_P00_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT24_P33_2_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT24_P33_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT42_P23_1_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT42_P23_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT66_P20_10_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT66_P20_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT6_P02_6_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT6_P02_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_6_TOUT74_P15_3_OUT;  /**< \brief IfxGtm_ATOM1_6_TOUT74_P15_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT17_P00_8_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT17_P00_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT25_P33_3_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT25_P33_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT45_P23_4_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT45_P23_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT67_P20_11_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT67_P20_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT75_P15_4_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT75_P15_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM1_7_TOUT7_P02_7_OUT;  /**< \brief IfxGtm_ATOM1_7_TOUT7_P02_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT18_P00_9_OUT;  /**< \brief IfxGtm_ATOM2_0_TOUT18_P00_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT26_P33_4_OUT;  /**< \brief IfxGtm_ATOM2_0_TOUT26_P33_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT32_P33_10_OUT;  /**< \brief IfxGtm_ATOM2_0_TOUT32_P33_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_0_TOUT94_P13_3_OUT;  /**< \brief IfxGtm_ATOM2_0_TOUT94_P13_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT19_P00_10_OUT;  /**< \brief IfxGtm_ATOM2_1_TOUT19_P00_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT27_P33_5_OUT;  /**< \brief IfxGtm_ATOM2_1_TOUT27_P33_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT43_P23_2_OUT;  /**< \brief IfxGtm_ATOM2_1_TOUT43_P23_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_1_TOUT95_P11_2_OUT;  /**< \brief IfxGtm_ATOM2_1_TOUT95_P11_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT20_P00_11_OUT;  /**< \brief IfxGtm_ATOM2_2_TOUT20_P00_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT28_P33_6_OUT;  /**< \brief IfxGtm_ATOM2_2_TOUT28_P33_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT44_P23_3_OUT;  /**< \brief IfxGtm_ATOM2_2_TOUT44_P23_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT88_P14_8_OUT;  /**< \brief IfxGtm_ATOM2_2_TOUT88_P14_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_2_TOUT96_P11_3_OUT;  /**< \brief IfxGtm_ATOM2_2_TOUT96_P11_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT21_P00_12_OUT;  /**< \brief IfxGtm_ATOM2_3_TOUT21_P00_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT29_P33_7_OUT;  /**< \brief IfxGtm_ATOM2_3_TOUT29_P33_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT89_P14_9_OUT;  /**< \brief IfxGtm_ATOM2_3_TOUT89_P14_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_3_TOUT97_P11_6_OUT;  /**< \brief IfxGtm_ATOM2_3_TOUT97_P11_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT22_P33_0_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT22_P33_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT30_P33_8_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT30_P33_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT34_P33_12_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT34_P33_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT51_P21_0_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT51_P21_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT90_P14_10_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT90_P14_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_4_TOUT98_P11_9_OUT;  /**< \brief IfxGtm_ATOM2_4_TOUT98_P11_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT138_P23_6_OUT;  /**< \brief IfxGtm_ATOM2_5_TOUT138_P23_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT35_P33_13_OUT;  /**< \brief IfxGtm_ATOM2_5_TOUT35_P33_13_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT52_P21_1_OUT;  /**< \brief IfxGtm_ATOM2_5_TOUT52_P21_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT91_P13_0_OUT;  /**< \brief IfxGtm_ATOM2_5_TOUT91_P13_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_5_TOUT99_P11_10_OUT;  /**< \brief IfxGtm_ATOM2_5_TOUT99_P11_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT100_P11_11_OUT;  /**< \brief IfxGtm_ATOM2_6_TOUT100_P11_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT139_P23_7_OUT;  /**< \brief IfxGtm_ATOM2_6_TOUT139_P23_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT36_P32_0_OUT;  /**< \brief IfxGtm_ATOM2_6_TOUT36_P32_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT62_P20_6_OUT;  /**< \brief IfxGtm_ATOM2_6_TOUT62_P20_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_6_TOUT92_P13_1_OUT;  /**< \brief IfxGtm_ATOM2_6_TOUT92_P13_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT101_P11_12_OUT;  /**< \brief IfxGtm_ATOM2_7_TOUT101_P11_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT140_P32_5_OUT;  /**< \brief IfxGtm_ATOM2_7_TOUT140_P32_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT63_P20_7_OUT;  /**< \brief IfxGtm_ATOM2_7_TOUT63_P20_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM2_7_TOUT93_P13_2_OUT;  /**< \brief IfxGtm_ATOM2_7_TOUT93_P13_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT18_P00_9_OUT;  /**< \brief IfxGtm_ATOM3_0_TOUT18_P00_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT26_P33_4_OUT;  /**< \brief IfxGtm_ATOM3_0_TOUT26_P33_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT32_P33_10_OUT;  /**< \brief IfxGtm_ATOM3_0_TOUT32_P33_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_0_TOUT94_P13_3_OUT;  /**< \brief IfxGtm_ATOM3_0_TOUT94_P13_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT111_P01_3_OUT;  /**< \brief IfxGtm_ATOM3_1_TOUT111_P01_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT19_P00_10_OUT;  /**< \brief IfxGtm_ATOM3_1_TOUT19_P00_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT27_P33_5_OUT;  /**< \brief IfxGtm_ATOM3_1_TOUT27_P33_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT43_P23_2_OUT;  /**< \brief IfxGtm_ATOM3_1_TOUT43_P23_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_1_TOUT95_P11_2_OUT;  /**< \brief IfxGtm_ATOM3_1_TOUT95_P11_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT112_P01_4_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT112_P01_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT20_P00_11_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT20_P00_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT28_P33_6_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT28_P33_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT44_P23_3_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT44_P23_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT88_P14_8_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT88_P14_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_2_TOUT96_P11_3_OUT;  /**< \brief IfxGtm_ATOM3_2_TOUT96_P11_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT113_P01_5_OUT;  /**< \brief IfxGtm_ATOM3_3_TOUT113_P01_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT21_P00_12_OUT;  /**< \brief IfxGtm_ATOM3_3_TOUT21_P00_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT29_P33_7_OUT;  /**< \brief IfxGtm_ATOM3_3_TOUT29_P33_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT89_P14_9_OUT;  /**< \brief IfxGtm_ATOM3_3_TOUT89_P14_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_3_TOUT97_P11_6_OUT;  /**< \brief IfxGtm_ATOM3_3_TOUT97_P11_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT114_P01_6_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT114_P01_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT22_P33_0_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT22_P33_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT30_P33_8_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT30_P33_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT34_P33_12_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT34_P33_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT51_P21_0_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT51_P21_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT90_P14_10_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT90_P14_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_4_TOUT98_P11_9_OUT;  /**< \brief IfxGtm_ATOM3_4_TOUT98_P11_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT115_P01_7_OUT;  /**< \brief IfxGtm_ATOM3_5_TOUT115_P01_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT35_P33_13_OUT;  /**< \brief IfxGtm_ATOM3_5_TOUT35_P33_13_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT52_P21_1_OUT;  /**< \brief IfxGtm_ATOM3_5_TOUT52_P21_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT91_P13_0_OUT;  /**< \brief IfxGtm_ATOM3_5_TOUT91_P13_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_5_TOUT99_P11_10_OUT;  /**< \brief IfxGtm_ATOM3_5_TOUT99_P11_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT100_P11_11_OUT;  /**< \brief IfxGtm_ATOM3_6_TOUT100_P11_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT36_P32_0_OUT;  /**< \brief IfxGtm_ATOM3_6_TOUT36_P32_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT62_P20_6_OUT;  /**< \brief IfxGtm_ATOM3_6_TOUT62_P20_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_6_TOUT92_P13_1_OUT;  /**< \brief IfxGtm_ATOM3_6_TOUT92_P13_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT101_P11_12_OUT;  /**< \brief IfxGtm_ATOM3_7_TOUT101_P11_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT63_P20_7_OUT;  /**< \brief IfxGtm_ATOM3_7_TOUT63_P20_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM3_7_TOUT93_P13_2_OUT;  /**< \brief IfxGtm_ATOM3_7_TOUT93_P13_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT109_P10_7_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT109_P10_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT48_P22_1_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT48_P22_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT53_P21_2_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT53_P21_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT68_P20_12_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT68_P20_12_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT76_P15_5_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT76_P15_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT77_P15_6_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT77_P15_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT85_P14_5_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT85_P14_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_0_TOUT87_P14_7_OUT;  /**< \brief IfxGtm_ATOM4_0_TOUT87_P14_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT103_P10_1_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT103_P10_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT47_P22_0_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT47_P22_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT54_P21_3_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT54_P21_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT69_P20_13_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT69_P20_13_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT78_P15_7_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT78_P15_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT79_P15_8_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT79_P15_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT84_P14_4_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT84_P14_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_1_TOUT86_P14_6_OUT;  /**< \brief IfxGtm_ATOM4_1_TOUT86_P14_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT104_P10_2_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT104_P10_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT107_P10_5_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT107_P10_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT46_P23_5_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT46_P23_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT55_P21_4_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT55_P21_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT70_P20_14_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT70_P20_14_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT80_P14_0_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT80_P14_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_2_TOUT83_P14_3_OUT;  /**< \brief IfxGtm_ATOM4_2_TOUT83_P14_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT105_P10_3_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT105_P10_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT108_P10_6_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT108_P10_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT49_P22_2_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT49_P22_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT56_P21_5_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT56_P21_5_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT71_P15_0_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT71_P15_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_3_TOUT82_P14_2_OUT;  /**< \brief IfxGtm_ATOM4_3_TOUT82_P14_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT102_P10_0_OUT;  /**< \brief IfxGtm_ATOM4_4_TOUT102_P10_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT50_P22_3_OUT;  /**< \brief IfxGtm_ATOM4_4_TOUT50_P22_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT57_P21_6_OUT;  /**< \brief IfxGtm_ATOM4_4_TOUT57_P21_6_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT72_P15_1_OUT;  /**< \brief IfxGtm_ATOM4_4_TOUT72_P15_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_4_TOUT81_P14_1_OUT;  /**< \brief IfxGtm_ATOM4_4_TOUT81_P14_1_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT110_P10_8_OUT;  /**< \brief IfxGtm_ATOM4_5_TOUT110_P10_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT116_P02_9_OUT;  /**< \brief IfxGtm_ATOM4_5_TOUT116_P02_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT58_P21_7_OUT;  /**< \brief IfxGtm_ATOM4_5_TOUT58_P21_7_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT65_P20_9_OUT;  /**< \brief IfxGtm_ATOM4_5_TOUT65_P20_9_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_5_TOUT73_P15_2_OUT;  /**< \brief IfxGtm_ATOM4_5_TOUT73_P15_2_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT106_P10_4_OUT;  /**< \brief IfxGtm_ATOM4_6_TOUT106_P10_4_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT117_P02_10_OUT;  /**< \brief IfxGtm_ATOM4_6_TOUT117_P02_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT59_P20_0_OUT;  /**< \brief IfxGtm_ATOM4_6_TOUT59_P20_0_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT66_P20_10_OUT;  /**< \brief IfxGtm_ATOM4_6_TOUT66_P20_10_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_6_TOUT74_P15_3_OUT;  /**< \brief IfxGtm_ATOM4_6_TOUT74_P15_3_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT118_P02_11_OUT;  /**< \brief IfxGtm_ATOM4_7_TOUT118_P02_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT64_P20_8_OUT;  /**< \brief IfxGtm_ATOM4_7_TOUT64_P20_8_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT67_P20_11_OUT;  /**< \brief IfxGtm_ATOM4_7_TOUT67_P20_11_OUT */
IFX_EXTERN IfxGtm_Atom_ToutMap IfxGtm_ATOM4_7_TOUT75_P15_4_OUT;  /**< \brief IfxGtm_ATOM4_7_TOUT75_P15_4_OUT */
IFX_EXTERN IfxGtm_Clk_Out IfxGtm_CLK0_P23_1_OUT;  /**< \brief GTM_CLK0: GTM output */
IFX_EXTERN IfxGtm_Clk_Out IfxGtm_CLK1_P32_4_OUT;  /**< \brief GTM_CLK1: GTM output */
IFX_EXTERN IfxGtm_Clk_Out IfxGtm_CLK2_P11_12_OUT;  /**< \brief GTM_CLK2: GTM output */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN0_P02_0_IN;  /**< \brief IfxGtm_TIM0_0_TIN0_P02_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN109_P10_7_IN;  /**< \brief IfxGtm_TIM0_0_TIN109_P10_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN18_P00_9_IN;  /**< \brief IfxGtm_TIM0_0_TIN18_P00_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN26_P33_4_IN;  /**< \brief IfxGtm_TIM0_0_TIN26_P33_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN32_P33_10_IN;  /**< \brief IfxGtm_TIM0_0_TIN32_P33_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN48_P22_1_IN;  /**< \brief IfxGtm_TIM0_0_TIN48_P22_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN53_P21_2_IN;  /**< \brief IfxGtm_TIM0_0_TIN53_P21_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN77_P15_6_IN;  /**< \brief IfxGtm_TIM0_0_TIN77_P15_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN85_P14_5_IN;  /**< \brief IfxGtm_TIM0_0_TIN85_P14_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN87_P14_7_IN;  /**< \brief IfxGtm_TIM0_0_TIN87_P14_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN103_P10_1_IN;  /**< \brief IfxGtm_TIM0_1_TIN103_P10_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN19_P00_10_IN;  /**< \brief IfxGtm_TIM0_1_TIN19_P00_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN1_P02_1_IN;  /**< \brief IfxGtm_TIM0_1_TIN1_P02_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN27_P33_5_IN;  /**< \brief IfxGtm_TIM0_1_TIN27_P33_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN31_P33_9_IN;  /**< \brief IfxGtm_TIM0_1_TIN31_P33_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN47_P22_0_IN;  /**< \brief IfxGtm_TIM0_1_TIN47_P22_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN54_P21_3_IN;  /**< \brief IfxGtm_TIM0_1_TIN54_P21_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN78_P15_7_IN;  /**< \brief IfxGtm_TIM0_1_TIN78_P15_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN86_P14_6_IN;  /**< \brief IfxGtm_TIM0_1_TIN86_P14_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN104_P10_2_IN;  /**< \brief IfxGtm_TIM0_2_TIN104_P10_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN107_P10_5_IN;  /**< \brief IfxGtm_TIM0_2_TIN107_P10_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN116_P02_9_IN;  /**< \brief IfxGtm_TIM0_2_TIN116_P02_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN20_P00_11_IN;  /**< \brief IfxGtm_TIM0_2_TIN20_P00_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN28_P33_6_IN;  /**< \brief IfxGtm_TIM0_2_TIN28_P33_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN2_P02_2_IN;  /**< \brief IfxGtm_TIM0_2_TIN2_P02_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN33_P33_11_IN;  /**< \brief IfxGtm_TIM0_2_TIN33_P33_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN46_P23_5_IN;  /**< \brief IfxGtm_TIM0_2_TIN46_P23_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN55_P21_4_IN;  /**< \brief IfxGtm_TIM0_2_TIN55_P21_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN79_P15_8_IN;  /**< \brief IfxGtm_TIM0_2_TIN79_P15_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN105_P10_3_IN;  /**< \brief IfxGtm_TIM0_3_TIN105_P10_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN108_P10_6_IN;  /**< \brief IfxGtm_TIM0_3_TIN108_P10_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN117_P02_10_IN;  /**< \brief IfxGtm_TIM0_3_TIN117_P02_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN21_P00_12_IN;  /**< \brief IfxGtm_TIM0_3_TIN21_P00_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN29_P33_7_IN;  /**< \brief IfxGtm_TIM0_3_TIN29_P33_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN38_P32_2_IN;  /**< \brief IfxGtm_TIM0_3_TIN38_P32_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN3_P02_3_IN;  /**< \brief IfxGtm_TIM0_3_TIN3_P02_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN49_P22_2_IN;  /**< \brief IfxGtm_TIM0_3_TIN49_P22_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN56_P21_5_IN;  /**< \brief IfxGtm_TIM0_3_TIN56_P21_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN80_P14_0_IN;  /**< \brief IfxGtm_TIM0_3_TIN80_P14_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN102_P10_0_IN;  /**< \brief IfxGtm_TIM0_4_TIN102_P10_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN22_P33_0_IN;  /**< \brief IfxGtm_TIM0_4_TIN22_P33_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN30_P33_8_IN;  /**< \brief IfxGtm_TIM0_4_TIN30_P33_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN39_P32_3_IN;  /**< \brief IfxGtm_TIM0_4_TIN39_P32_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN4_P02_4_IN;  /**< \brief IfxGtm_TIM0_4_TIN4_P02_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN50_P22_3_IN;  /**< \brief IfxGtm_TIM0_4_TIN50_P22_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN57_P21_6_IN;  /**< \brief IfxGtm_TIM0_4_TIN57_P21_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN81_P14_1_IN;  /**< \brief IfxGtm_TIM0_4_TIN81_P14_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN110_P10_8_IN;  /**< \brief IfxGtm_TIM0_5_TIN110_P10_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN111_P01_3_IN;  /**< \brief IfxGtm_TIM0_5_TIN111_P01_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN23_P33_1_IN;  /**< \brief IfxGtm_TIM0_5_TIN23_P33_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN40_P32_4_IN;  /**< \brief IfxGtm_TIM0_5_TIN40_P32_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN41_P23_0_IN;  /**< \brief IfxGtm_TIM0_5_TIN41_P23_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN58_P21_7_IN;  /**< \brief IfxGtm_TIM0_5_TIN58_P21_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN5_P02_5_IN;  /**< \brief IfxGtm_TIM0_5_TIN5_P02_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN82_P14_2_IN;  /**< \brief IfxGtm_TIM0_5_TIN82_P14_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN106_P10_4_IN;  /**< \brief IfxGtm_TIM0_6_TIN106_P10_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN112_P01_4_IN;  /**< \brief IfxGtm_TIM0_6_TIN112_P01_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN24_P33_2_IN;  /**< \brief IfxGtm_TIM0_6_TIN24_P33_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN42_P23_1_IN;  /**< \brief IfxGtm_TIM0_6_TIN42_P23_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN43_P23_2_IN;  /**< \brief IfxGtm_TIM0_6_TIN43_P23_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN59_P20_0_IN;  /**< \brief IfxGtm_TIM0_6_TIN59_P20_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN6_P02_6_IN;  /**< \brief IfxGtm_TIM0_6_TIN6_P02_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN83_P14_3_IN;  /**< \brief IfxGtm_TIM0_6_TIN83_P14_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN118_P02_11_IN;  /**< \brief IfxGtm_TIM0_7_TIN118_P02_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN127_P11_15_IN;  /**< \brief IfxGtm_TIM0_7_TIN127_P11_15_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN25_P33_3_IN;  /**< \brief IfxGtm_TIM0_7_TIN25_P33_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN44_P23_3_IN;  /**< \brief IfxGtm_TIM0_7_TIN44_P23_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN45_P23_4_IN;  /**< \brief IfxGtm_TIM0_7_TIN45_P23_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN64_P20_8_IN;  /**< \brief IfxGtm_TIM0_7_TIN64_P20_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN7_P02_7_IN;  /**< \brief IfxGtm_TIM0_7_TIN7_P02_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN84_P14_4_IN;  /**< \brief IfxGtm_TIM0_7_TIN84_P14_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN0_P02_0_IN;  /**< \brief IfxGtm_TIM1_0_TIN0_P02_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN109_P10_7_IN;  /**< \brief IfxGtm_TIM1_0_TIN109_P10_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN18_P00_9_IN;  /**< \brief IfxGtm_TIM1_0_TIN18_P00_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN26_P33_4_IN;  /**< \brief IfxGtm_TIM1_0_TIN26_P33_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN32_P33_10_IN;  /**< \brief IfxGtm_TIM1_0_TIN32_P33_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN48_P22_1_IN;  /**< \brief IfxGtm_TIM1_0_TIN48_P22_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN53_P21_2_IN;  /**< \brief IfxGtm_TIM1_0_TIN53_P21_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN77_P15_6_IN;  /**< \brief IfxGtm_TIM1_0_TIN77_P15_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN85_P14_5_IN;  /**< \brief IfxGtm_TIM1_0_TIN85_P14_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_0_TIN87_P14_7_IN;  /**< \brief IfxGtm_TIM1_0_TIN87_P14_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN103_P10_1_IN;  /**< \brief IfxGtm_TIM1_1_TIN103_P10_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN19_P00_10_IN;  /**< \brief IfxGtm_TIM1_1_TIN19_P00_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN1_P02_1_IN;  /**< \brief IfxGtm_TIM1_1_TIN1_P02_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN27_P33_5_IN;  /**< \brief IfxGtm_TIM1_1_TIN27_P33_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN31_P33_9_IN;  /**< \brief IfxGtm_TIM1_1_TIN31_P33_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN47_P22_0_IN;  /**< \brief IfxGtm_TIM1_1_TIN47_P22_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN54_P21_3_IN;  /**< \brief IfxGtm_TIM1_1_TIN54_P21_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN78_P15_7_IN;  /**< \brief IfxGtm_TIM1_1_TIN78_P15_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_1_TIN86_P14_6_IN;  /**< \brief IfxGtm_TIM1_1_TIN86_P14_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN104_P10_2_IN;  /**< \brief IfxGtm_TIM1_2_TIN104_P10_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN107_P10_5_IN;  /**< \brief IfxGtm_TIM1_2_TIN107_P10_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN138_P23_6_IN;  /**< \brief IfxGtm_TIM1_2_TIN138_P23_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN20_P00_11_IN;  /**< \brief IfxGtm_TIM1_2_TIN20_P00_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN28_P33_6_IN;  /**< \brief IfxGtm_TIM1_2_TIN28_P33_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN2_P02_2_IN;  /**< \brief IfxGtm_TIM1_2_TIN2_P02_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN33_P33_11_IN;  /**< \brief IfxGtm_TIM1_2_TIN33_P33_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN46_P23_5_IN;  /**< \brief IfxGtm_TIM1_2_TIN46_P23_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN55_P21_4_IN;  /**< \brief IfxGtm_TIM1_2_TIN55_P21_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_2_TIN79_P15_8_IN;  /**< \brief IfxGtm_TIM1_2_TIN79_P15_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN105_P10_3_IN;  /**< \brief IfxGtm_TIM1_3_TIN105_P10_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN108_P10_6_IN;  /**< \brief IfxGtm_TIM1_3_TIN108_P10_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN139_P23_7_IN;  /**< \brief IfxGtm_TIM1_3_TIN139_P23_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN21_P00_12_IN;  /**< \brief IfxGtm_TIM1_3_TIN21_P00_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN29_P33_7_IN;  /**< \brief IfxGtm_TIM1_3_TIN29_P33_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN38_P32_2_IN;  /**< \brief IfxGtm_TIM1_3_TIN38_P32_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN3_P02_3_IN;  /**< \brief IfxGtm_TIM1_3_TIN3_P02_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN49_P22_2_IN;  /**< \brief IfxGtm_TIM1_3_TIN49_P22_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN56_P21_5_IN;  /**< \brief IfxGtm_TIM1_3_TIN56_P21_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_3_TIN80_P14_0_IN;  /**< \brief IfxGtm_TIM1_3_TIN80_P14_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN102_P10_0_IN;  /**< \brief IfxGtm_TIM1_4_TIN102_P10_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN22_P33_0_IN;  /**< \brief IfxGtm_TIM1_4_TIN22_P33_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN30_P33_8_IN;  /**< \brief IfxGtm_TIM1_4_TIN30_P33_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN39_P32_3_IN;  /**< \brief IfxGtm_TIM1_4_TIN39_P32_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN4_P02_4_IN;  /**< \brief IfxGtm_TIM1_4_TIN4_P02_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN50_P22_3_IN;  /**< \brief IfxGtm_TIM1_4_TIN50_P22_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN57_P21_6_IN;  /**< \brief IfxGtm_TIM1_4_TIN57_P21_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_4_TIN81_P14_1_IN;  /**< \brief IfxGtm_TIM1_4_TIN81_P14_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN110_P10_8_IN;  /**< \brief IfxGtm_TIM1_5_TIN110_P10_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN23_P33_1_IN;  /**< \brief IfxGtm_TIM1_5_TIN23_P33_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN40_P32_4_IN;  /**< \brief IfxGtm_TIM1_5_TIN40_P32_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN41_P23_0_IN;  /**< \brief IfxGtm_TIM1_5_TIN41_P23_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN58_P21_7_IN;  /**< \brief IfxGtm_TIM1_5_TIN58_P21_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN5_P02_5_IN;  /**< \brief IfxGtm_TIM1_5_TIN5_P02_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_5_TIN82_P14_2_IN;  /**< \brief IfxGtm_TIM1_5_TIN82_P14_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN106_P10_4_IN;  /**< \brief IfxGtm_TIM1_6_TIN106_P10_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN24_P33_2_IN;  /**< \brief IfxGtm_TIM1_6_TIN24_P33_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN42_P23_1_IN;  /**< \brief IfxGtm_TIM1_6_TIN42_P23_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN43_P23_2_IN;  /**< \brief IfxGtm_TIM1_6_TIN43_P23_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN59_P20_0_IN;  /**< \brief IfxGtm_TIM1_6_TIN59_P20_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN6_P02_6_IN;  /**< \brief IfxGtm_TIM1_6_TIN6_P02_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_6_TIN83_P14_3_IN;  /**< \brief IfxGtm_TIM1_6_TIN83_P14_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN25_P33_3_IN;  /**< \brief IfxGtm_TIM1_7_TIN25_P33_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN44_P23_3_IN;  /**< \brief IfxGtm_TIM1_7_TIN44_P23_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN45_P23_4_IN;  /**< \brief IfxGtm_TIM1_7_TIN45_P23_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN64_P20_8_IN;  /**< \brief IfxGtm_TIM1_7_TIN64_P20_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN7_P02_7_IN;  /**< \brief IfxGtm_TIM1_7_TIN7_P02_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM1_7_TIN84_P14_4_IN;  /**< \brief IfxGtm_TIM1_7_TIN84_P14_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN119_P11_0_IN;  /**< \brief IfxGtm_TIM2_0_TIN119_P11_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN143_P33_14_IN;  /**< \brief IfxGtm_TIM2_0_TIN143_P33_14_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN34_P33_12_IN;  /**< \brief IfxGtm_TIM2_0_TIN34_P33_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN68_P20_12_IN;  /**< \brief IfxGtm_TIM2_0_TIN68_P20_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN76_P15_5_IN;  /**< \brief IfxGtm_TIM2_0_TIN76_P15_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN8_P02_8_IN;  /**< \brief IfxGtm_TIM2_0_TIN8_P02_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN94_P13_3_IN;  /**< \brief IfxGtm_TIM2_0_TIN94_P13_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_0_TIN9_P00_0_IN;  /**< \brief IfxGtm_TIM2_0_TIN9_P00_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN10_P00_1_IN;  /**< \brief IfxGtm_TIM2_1_TIN10_P00_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN11_P00_2_IN;  /**< \brief IfxGtm_TIM2_1_TIN11_P00_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN120_P11_1_IN;  /**< \brief IfxGtm_TIM2_1_TIN120_P11_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN144_P33_15_IN;  /**< \brief IfxGtm_TIM2_1_TIN144_P33_15_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN35_P33_13_IN;  /**< \brief IfxGtm_TIM2_1_TIN35_P33_13_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN69_P20_13_IN;  /**< \brief IfxGtm_TIM2_1_TIN69_P20_13_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_1_TIN95_P11_2_IN;  /**< \brief IfxGtm_TIM2_1_TIN95_P11_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN121_P11_4_IN;  /**< \brief IfxGtm_TIM2_2_TIN121_P11_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN12_P00_3_IN;  /**< \brief IfxGtm_TIM2_2_TIN12_P00_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN36_P32_0_IN;  /**< \brief IfxGtm_TIM2_2_TIN36_P32_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN70_P20_14_IN;  /**< \brief IfxGtm_TIM2_2_TIN70_P20_14_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN88_P14_8_IN;  /**< \brief IfxGtm_TIM2_2_TIN88_P14_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_2_TIN96_P11_3_IN;  /**< \brief IfxGtm_TIM2_2_TIN96_P11_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN113_P01_5_IN;  /**< \brief IfxGtm_TIM2_3_TIN113_P01_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN122_P11_5_IN;  /**< \brief IfxGtm_TIM2_3_TIN122_P11_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN13_P00_4_IN;  /**< \brief IfxGtm_TIM2_3_TIN13_P00_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN146_P34_1_IN;  /**< \brief IfxGtm_TIM2_3_TIN146_P34_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN60_P20_1_IN;  /**< \brief IfxGtm_TIM2_3_TIN60_P20_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN71_P15_0_IN;  /**< \brief IfxGtm_TIM2_3_TIN71_P15_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN89_P14_9_IN;  /**< \brief IfxGtm_TIM2_3_TIN89_P14_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_3_TIN97_P11_6_IN;  /**< \brief IfxGtm_TIM2_3_TIN97_P11_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN123_P11_7_IN;  /**< \brief IfxGtm_TIM2_4_TIN123_P11_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN147_P34_2_IN;  /**< \brief IfxGtm_TIM2_4_TIN147_P34_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN14_P00_5_IN;  /**< \brief IfxGtm_TIM2_4_TIN14_P00_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN51_P21_0_IN;  /**< \brief IfxGtm_TIM2_4_TIN51_P21_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN61_P20_3_IN;  /**< \brief IfxGtm_TIM2_4_TIN61_P20_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN72_P15_1_IN;  /**< \brief IfxGtm_TIM2_4_TIN72_P15_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN90_P14_10_IN;  /**< \brief IfxGtm_TIM2_4_TIN90_P14_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_4_TIN98_P11_9_IN;  /**< \brief IfxGtm_TIM2_4_TIN98_P11_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN114_P01_6_IN;  /**< \brief IfxGtm_TIM2_5_TIN114_P01_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN124_P11_8_IN;  /**< \brief IfxGtm_TIM2_5_TIN124_P11_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN148_P34_3_IN;  /**< \brief IfxGtm_TIM2_5_TIN148_P34_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN15_P00_6_IN;  /**< \brief IfxGtm_TIM2_5_TIN15_P00_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN52_P21_1_IN;  /**< \brief IfxGtm_TIM2_5_TIN52_P21_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN65_P20_9_IN;  /**< \brief IfxGtm_TIM2_5_TIN65_P20_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN73_P15_2_IN;  /**< \brief IfxGtm_TIM2_5_TIN73_P15_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN91_P13_0_IN;  /**< \brief IfxGtm_TIM2_5_TIN91_P13_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_5_TIN99_P11_10_IN;  /**< \brief IfxGtm_TIM2_5_TIN99_P11_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN100_P11_11_IN;  /**< \brief IfxGtm_TIM2_6_TIN100_P11_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN125_P11_13_IN;  /**< \brief IfxGtm_TIM2_6_TIN125_P11_13_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN149_P34_4_IN;  /**< \brief IfxGtm_TIM2_6_TIN149_P34_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN16_P00_7_IN;  /**< \brief IfxGtm_TIM2_6_TIN16_P00_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN62_P20_6_IN;  /**< \brief IfxGtm_TIM2_6_TIN62_P20_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN66_P20_10_IN;  /**< \brief IfxGtm_TIM2_6_TIN66_P20_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN74_P15_3_IN;  /**< \brief IfxGtm_TIM2_6_TIN74_P15_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_6_TIN92_P13_1_IN;  /**< \brief IfxGtm_TIM2_6_TIN92_P13_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN101_P11_12_IN;  /**< \brief IfxGtm_TIM2_7_TIN101_P11_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN115_P01_7_IN;  /**< \brief IfxGtm_TIM2_7_TIN115_P01_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN126_P11_14_IN;  /**< \brief IfxGtm_TIM2_7_TIN126_P11_14_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN150_P34_5_IN;  /**< \brief IfxGtm_TIM2_7_TIN150_P34_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN17_P00_8_IN;  /**< \brief IfxGtm_TIM2_7_TIN17_P00_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN63_P20_7_IN;  /**< \brief IfxGtm_TIM2_7_TIN63_P20_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN67_P20_11_IN;  /**< \brief IfxGtm_TIM2_7_TIN67_P20_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN75_P15_4_IN;  /**< \brief IfxGtm_TIM2_7_TIN75_P15_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM2_7_TIN93_P13_2_IN;  /**< \brief IfxGtm_TIM2_7_TIN93_P13_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN128_P12_0_IN;  /**< \brief IfxGtm_TIM3_0_TIN128_P12_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN130_P22_4_IN;  /**< \brief IfxGtm_TIM3_0_TIN130_P22_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN34_P33_12_IN;  /**< \brief IfxGtm_TIM3_0_TIN34_P33_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN68_P20_12_IN;  /**< \brief IfxGtm_TIM3_0_TIN68_P20_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN76_P15_5_IN;  /**< \brief IfxGtm_TIM3_0_TIN76_P15_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN8_P02_8_IN;  /**< \brief IfxGtm_TIM3_0_TIN8_P02_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN94_P13_3_IN;  /**< \brief IfxGtm_TIM3_0_TIN94_P13_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_0_TIN9_P00_0_IN;  /**< \brief IfxGtm_TIM3_0_TIN9_P00_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN10_P00_1_IN;  /**< \brief IfxGtm_TIM3_1_TIN10_P00_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN11_P00_2_IN;  /**< \brief IfxGtm_TIM3_1_TIN11_P00_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN129_P12_1_IN;  /**< \brief IfxGtm_TIM3_1_TIN129_P12_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN131_P22_5_IN;  /**< \brief IfxGtm_TIM3_1_TIN131_P22_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN35_P33_13_IN;  /**< \brief IfxGtm_TIM3_1_TIN35_P33_13_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN69_P20_13_IN;  /**< \brief IfxGtm_TIM3_1_TIN69_P20_13_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_1_TIN95_P11_2_IN;  /**< \brief IfxGtm_TIM3_1_TIN95_P11_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN12_P00_3_IN;  /**< \brief IfxGtm_TIM3_2_TIN12_P00_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN132_P22_6_IN;  /**< \brief IfxGtm_TIM3_2_TIN132_P22_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN36_P32_0_IN;  /**< \brief IfxGtm_TIM3_2_TIN36_P32_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN70_P20_14_IN;  /**< \brief IfxGtm_TIM3_2_TIN70_P20_14_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN88_P14_8_IN;  /**< \brief IfxGtm_TIM3_2_TIN88_P14_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_2_TIN96_P11_3_IN;  /**< \brief IfxGtm_TIM3_2_TIN96_P11_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN133_P22_7_IN;  /**< \brief IfxGtm_TIM3_3_TIN133_P22_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN13_P00_4_IN;  /**< \brief IfxGtm_TIM3_3_TIN13_P00_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN60_P20_1_IN;  /**< \brief IfxGtm_TIM3_3_TIN60_P20_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN71_P15_0_IN;  /**< \brief IfxGtm_TIM3_3_TIN71_P15_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN89_P14_9_IN;  /**< \brief IfxGtm_TIM3_3_TIN89_P14_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_3_TIN97_P11_6_IN;  /**< \brief IfxGtm_TIM3_3_TIN97_P11_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN134_P22_8_IN;  /**< \brief IfxGtm_TIM3_4_TIN134_P22_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN14_P00_5_IN;  /**< \brief IfxGtm_TIM3_4_TIN14_P00_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN51_P21_0_IN;  /**< \brief IfxGtm_TIM3_4_TIN51_P21_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN61_P20_3_IN;  /**< \brief IfxGtm_TIM3_4_TIN61_P20_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN72_P15_1_IN;  /**< \brief IfxGtm_TIM3_4_TIN72_P15_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN90_P14_10_IN;  /**< \brief IfxGtm_TIM3_4_TIN90_P14_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_4_TIN98_P11_9_IN;  /**< \brief IfxGtm_TIM3_4_TIN98_P11_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN135_P22_9_IN;  /**< \brief IfxGtm_TIM3_5_TIN135_P22_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN140_P32_5_IN;  /**< \brief IfxGtm_TIM3_5_TIN140_P32_5_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN15_P00_6_IN;  /**< \brief IfxGtm_TIM3_5_TIN15_P00_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN52_P21_1_IN;  /**< \brief IfxGtm_TIM3_5_TIN52_P21_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN65_P20_9_IN;  /**< \brief IfxGtm_TIM3_5_TIN65_P20_9_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN73_P15_2_IN;  /**< \brief IfxGtm_TIM3_5_TIN73_P15_2_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN91_P13_0_IN;  /**< \brief IfxGtm_TIM3_5_TIN91_P13_0_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_5_TIN99_P11_10_IN;  /**< \brief IfxGtm_TIM3_5_TIN99_P11_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN100_P11_11_IN;  /**< \brief IfxGtm_TIM3_6_TIN100_P11_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN136_P22_10_IN;  /**< \brief IfxGtm_TIM3_6_TIN136_P22_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN141_P32_6_IN;  /**< \brief IfxGtm_TIM3_6_TIN141_P32_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN16_P00_7_IN;  /**< \brief IfxGtm_TIM3_6_TIN16_P00_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN62_P20_6_IN;  /**< \brief IfxGtm_TIM3_6_TIN62_P20_6_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN66_P20_10_IN;  /**< \brief IfxGtm_TIM3_6_TIN66_P20_10_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN74_P15_3_IN;  /**< \brief IfxGtm_TIM3_6_TIN74_P15_3_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_6_TIN92_P13_1_IN;  /**< \brief IfxGtm_TIM3_6_TIN92_P13_1_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN101_P11_12_IN;  /**< \brief IfxGtm_TIM3_7_TIN101_P11_12_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN137_P22_11_IN;  /**< \brief IfxGtm_TIM3_7_TIN137_P22_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN142_P32_7_IN;  /**< \brief IfxGtm_TIM3_7_TIN142_P32_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN17_P00_8_IN;  /**< \brief IfxGtm_TIM3_7_TIN17_P00_8_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN63_P20_7_IN;  /**< \brief IfxGtm_TIM3_7_TIN63_P20_7_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN67_P20_11_IN;  /**< \brief IfxGtm_TIM3_7_TIN67_P20_11_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN75_P15_4_IN;  /**< \brief IfxGtm_TIM3_7_TIN75_P15_4_IN */
IFX_EXTERN IfxGtm_Tim_TinMap IfxGtm_TIM3_7_TIN93_P13_2_IN;  /**< \brief IfxGtm_TIM3_7_TIN93_P13_2_IN */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT109_P10_7_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT109_P10_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT18_P00_9_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT18_P00_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT26_P33_4_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT26_P33_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT32_P33_10_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT32_P33_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT53_P21_2_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT53_P21_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT76_P15_5_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT76_P15_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT77_P15_6_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT77_P15_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT85_P14_5_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT85_P14_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT87_P14_7_OUT;  /**< \brief IfxGtm_TOM0_0_TOUT87_P14_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT12_P00_3_OUT;  /**< \brief IfxGtm_TOM0_10_TOUT12_P00_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT2_P02_2_OUT;  /**< \brief IfxGtm_TOM0_10_TOUT2_P02_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT41_P23_0_OUT;  /**< \brief IfxGtm_TOM0_10_TOUT41_P23_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT46_P23_5_OUT;  /**< \brief IfxGtm_TOM0_10_TOUT46_P23_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT96_P11_3_OUT;  /**< \brief IfxGtm_TOM0_10_TOUT96_P11_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT13_P00_4_OUT;  /**< \brief IfxGtm_TOM0_11_TOUT13_P00_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT3_P02_3_OUT;  /**< \brief IfxGtm_TOM0_11_TOUT3_P02_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT43_P23_2_OUT;  /**< \brief IfxGtm_TOM0_11_TOUT43_P23_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT49_P22_2_OUT;  /**< \brief IfxGtm_TOM0_11_TOUT49_P22_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT97_P11_6_OUT;  /**< \brief IfxGtm_TOM0_11_TOUT97_P11_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT14_P00_5_OUT;  /**< \brief IfxGtm_TOM0_12_TOUT14_P00_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT44_P23_3_OUT;  /**< \brief IfxGtm_TOM0_12_TOUT44_P23_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT4_P02_4_OUT;  /**< \brief IfxGtm_TOM0_12_TOUT4_P02_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT50_P22_3_OUT;  /**< \brief IfxGtm_TOM0_12_TOUT50_P22_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT98_P11_9_OUT;  /**< \brief IfxGtm_TOM0_12_TOUT98_P11_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT15_P00_6_OUT;  /**< \brief IfxGtm_TOM0_13_TOUT15_P00_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT5_P02_5_OUT;  /**< \brief IfxGtm_TOM0_13_TOUT5_P02_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT99_P11_10_OUT;  /**< \brief IfxGtm_TOM0_13_TOUT99_P11_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT100_P11_11_OUT;  /**< \brief IfxGtm_TOM0_14_TOUT100_P11_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT16_P00_7_OUT;  /**< \brief IfxGtm_TOM0_14_TOUT16_P00_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT6_P02_6_OUT;  /**< \brief IfxGtm_TOM0_14_TOUT6_P02_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT101_P11_12_OUT;  /**< \brief IfxGtm_TOM0_15_TOUT101_P11_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT17_P00_8_OUT;  /**< \brief IfxGtm_TOM0_15_TOUT17_P00_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT42_P23_1_OUT;  /**< \brief IfxGtm_TOM0_15_TOUT42_P23_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT7_P02_7_OUT;  /**< \brief IfxGtm_TOM0_15_TOUT7_P02_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT103_P10_1_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT103_P10_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT19_P00_10_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT19_P00_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT27_P33_5_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT27_P33_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT31_P33_9_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT31_P33_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT54_P21_3_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT54_P21_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT78_P15_7_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT78_P15_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT86_P14_6_OUT;  /**< \brief IfxGtm_TOM0_1_TOUT86_P14_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT104_P10_2_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT104_P10_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT107_P10_5_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT107_P10_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT20_P00_11_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT20_P00_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT28_P33_6_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT28_P33_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT33_P33_11_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT33_P33_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT55_P21_4_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT55_P21_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT79_P15_8_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT79_P15_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT88_P14_8_OUT;  /**< \brief IfxGtm_TOM0_2_TOUT88_P14_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT105_P10_3_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT105_P10_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT108_P10_6_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT108_P10_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT21_P00_12_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT21_P00_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT29_P33_7_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT29_P33_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT38_P32_2_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT38_P32_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT56_P21_5_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT56_P21_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT80_P14_0_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT80_P14_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT89_P14_9_OUT;  /**< \brief IfxGtm_TOM0_3_TOUT89_P14_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT102_P10_0_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT102_P10_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT22_P33_0_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT22_P33_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT30_P33_8_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT30_P33_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT39_P32_3_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT39_P32_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT57_P21_6_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT57_P21_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT81_P14_1_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT81_P14_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT90_P14_10_OUT;  /**< \brief IfxGtm_TOM0_4_TOUT90_P14_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT110_P10_8_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT110_P10_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT23_P33_1_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT23_P33_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT40_P32_4_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT40_P32_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT58_P21_7_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT58_P21_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT82_P14_2_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT82_P14_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT91_P13_0_OUT;  /**< \brief IfxGtm_TOM0_5_TOUT91_P13_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT106_P10_4_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT106_P10_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT24_P33_2_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT24_P33_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT42_P23_1_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT42_P23_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT59_P20_0_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT59_P20_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT83_P14_3_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT83_P14_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT92_P13_1_OUT;  /**< \brief IfxGtm_TOM0_6_TOUT92_P13_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT25_P33_3_OUT;  /**< \brief IfxGtm_TOM0_7_TOUT25_P33_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT45_P23_4_OUT;  /**< \brief IfxGtm_TOM0_7_TOUT45_P23_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT84_P14_4_OUT;  /**< \brief IfxGtm_TOM0_7_TOUT84_P14_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT93_P13_2_OUT;  /**< \brief IfxGtm_TOM0_7_TOUT93_P13_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT0_P02_0_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT0_P02_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT48_P22_1_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT48_P22_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT51_P21_0_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT51_P21_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT8_P02_8_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT8_P02_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT94_P13_3_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT94_P13_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT95_P11_2_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT95_P11_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT9_P00_0_OUT;  /**< \brief IfxGtm_TOM0_8_TOUT9_P00_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT10_P00_1_OUT;  /**< \brief IfxGtm_TOM0_9_TOUT10_P00_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT11_P00_2_OUT;  /**< \brief IfxGtm_TOM0_9_TOUT11_P00_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT1_P02_1_OUT;  /**< \brief IfxGtm_TOM0_9_TOUT1_P02_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT47_P22_0_OUT;  /**< \brief IfxGtm_TOM0_9_TOUT47_P22_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT52_P21_1_OUT;  /**< \brief IfxGtm_TOM0_9_TOUT52_P21_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT18_P00_9_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT18_P00_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT26_P33_4_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT26_P33_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT32_P33_10_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT32_P33_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT68_P20_12_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT68_P20_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT76_P15_5_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT76_P15_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT77_P15_6_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT77_P15_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT85_P14_5_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT85_P14_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT8_P02_8_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT8_P02_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT9_P00_0_OUT;  /**< \brief IfxGtm_TOM1_0_TOUT9_P00_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT143_P33_14_OUT;  /**< \brief IfxGtm_TOM1_10_TOUT143_P33_14_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT2_P02_2_OUT;  /**< \brief IfxGtm_TOM1_10_TOUT2_P02_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT62_P20_6_OUT;  /**< \brief IfxGtm_TOM1_10_TOUT62_P20_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT144_P33_15_OUT;  /**< \brief IfxGtm_TOM1_11_TOUT144_P33_15_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT3_P02_3_OUT;  /**< \brief IfxGtm_TOM1_11_TOUT3_P02_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT60_P20_1_OUT;  /**< \brief IfxGtm_TOM1_11_TOUT60_P20_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT63_P20_7_OUT;  /**< \brief IfxGtm_TOM1_11_TOUT63_P20_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT34_P33_12_OUT;  /**< \brief IfxGtm_TOM1_12_TOUT34_P33_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT4_P02_4_OUT;  /**< \brief IfxGtm_TOM1_12_TOUT4_P02_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT61_P20_3_OUT;  /**< \brief IfxGtm_TOM1_12_TOUT61_P20_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT146_P34_1_OUT;  /**< \brief IfxGtm_TOM1_13_TOUT146_P34_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT35_P33_13_OUT;  /**< \brief IfxGtm_TOM1_13_TOUT35_P33_13_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT5_P02_5_OUT;  /**< \brief IfxGtm_TOM1_13_TOUT5_P02_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT65_P20_9_OUT;  /**< \brief IfxGtm_TOM1_13_TOUT65_P20_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT147_P34_2_OUT;  /**< \brief IfxGtm_TOM1_14_TOUT147_P34_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT36_P32_0_OUT;  /**< \brief IfxGtm_TOM1_14_TOUT36_P32_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT66_P20_10_OUT;  /**< \brief IfxGtm_TOM1_14_TOUT66_P20_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT6_P02_6_OUT;  /**< \brief IfxGtm_TOM1_14_TOUT6_P02_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT148_P34_3_OUT;  /**< \brief IfxGtm_TOM1_15_TOUT148_P34_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT150_P34_5_OUT;  /**< \brief IfxGtm_TOM1_15_TOUT150_P34_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT67_P20_11_OUT;  /**< \brief IfxGtm_TOM1_15_TOUT67_P20_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT7_P02_7_OUT;  /**< \brief IfxGtm_TOM1_15_TOUT7_P02_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT10_P00_1_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT10_P00_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT11_P00_2_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT11_P00_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT19_P00_10_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT19_P00_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT27_P33_5_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT27_P33_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT31_P33_9_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT31_P33_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT69_P20_13_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT69_P20_13_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT78_P15_7_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT78_P15_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT86_P14_6_OUT;  /**< \brief IfxGtm_TOM1_1_TOUT86_P14_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT12_P00_3_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT12_P00_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT20_P00_11_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT20_P00_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT28_P33_6_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT28_P33_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT33_P33_11_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT33_P33_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT70_P20_14_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT70_P20_14_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT79_P15_8_OUT;  /**< \brief IfxGtm_TOM1_2_TOUT79_P15_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT13_P00_4_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT13_P00_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT21_P00_12_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT21_P00_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT29_P33_7_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT29_P33_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT38_P32_2_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT38_P32_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT71_P15_0_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT71_P15_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT80_P14_0_OUT;  /**< \brief IfxGtm_TOM1_3_TOUT80_P14_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT14_P00_5_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT14_P00_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT22_P33_0_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT22_P33_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT30_P33_8_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT30_P33_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT39_P32_3_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT39_P32_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT72_P15_1_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT72_P15_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT81_P14_1_OUT;  /**< \brief IfxGtm_TOM1_4_TOUT81_P14_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT15_P00_6_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT15_P00_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT23_P33_1_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT23_P33_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT40_P32_4_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT40_P32_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT41_P23_0_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT41_P23_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT73_P15_2_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT73_P15_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT82_P14_2_OUT;  /**< \brief IfxGtm_TOM1_5_TOUT82_P14_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT16_P00_7_OUT;  /**< \brief IfxGtm_TOM1_6_TOUT16_P00_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT24_P33_2_OUT;  /**< \brief IfxGtm_TOM1_6_TOUT24_P33_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT43_P23_2_OUT;  /**< \brief IfxGtm_TOM1_6_TOUT43_P23_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT74_P15_3_OUT;  /**< \brief IfxGtm_TOM1_6_TOUT74_P15_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT83_P14_3_OUT;  /**< \brief IfxGtm_TOM1_6_TOUT83_P14_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT17_P00_8_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT17_P00_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT25_P33_3_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT25_P33_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT44_P23_3_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT44_P23_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT45_P23_4_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT45_P23_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT64_P20_8_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT64_P20_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT75_P15_4_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT75_P15_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT84_P14_4_OUT;  /**< \brief IfxGtm_TOM1_7_TOUT84_P14_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT0_P02_0_OUT;  /**< \brief IfxGtm_TOM1_8_TOUT0_P02_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT128_P12_0_OUT;  /**< \brief IfxGtm_TOM1_8_TOUT128_P12_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT141_P32_6_OUT;  /**< \brief IfxGtm_TOM1_8_TOUT141_P32_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT129_P12_1_OUT;  /**< \brief IfxGtm_TOM1_9_TOUT129_P12_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT142_P32_7_OUT;  /**< \brief IfxGtm_TOM1_9_TOUT142_P32_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT1_P02_1_OUT;  /**< \brief IfxGtm_TOM1_9_TOUT1_P02_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT119_P11_0_OUT;  /**< \brief IfxGtm_TOM2_0_TOUT119_P11_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT48_P22_1_OUT;  /**< \brief IfxGtm_TOM2_0_TOUT48_P22_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT53_P21_2_OUT;  /**< \brief IfxGtm_TOM2_0_TOUT53_P21_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT87_P14_7_OUT;  /**< \brief IfxGtm_TOM2_0_TOUT87_P14_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_0_TOUT94_P13_3_OUT;  /**< \brief IfxGtm_TOM2_0_TOUT94_P13_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT104_P10_2_OUT;  /**< \brief IfxGtm_TOM2_10_TOUT104_P10_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT107_P10_5_OUT;  /**< \brief IfxGtm_TOM2_10_TOUT107_P10_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT133_P22_7_OUT;  /**< \brief IfxGtm_TOM2_10_TOUT133_P22_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT62_P20_6_OUT;  /**< \brief IfxGtm_TOM2_10_TOUT62_P20_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_10_TOUT70_P20_14_OUT;  /**< \brief IfxGtm_TOM2_10_TOUT70_P20_14_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT105_P10_3_OUT;  /**< \brief IfxGtm_TOM2_11_TOUT105_P10_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT108_P10_6_OUT;  /**< \brief IfxGtm_TOM2_11_TOUT108_P10_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT134_P22_8_OUT;  /**< \brief IfxGtm_TOM2_11_TOUT134_P22_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT63_P20_7_OUT;  /**< \brief IfxGtm_TOM2_11_TOUT63_P20_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_11_TOUT71_P15_0_OUT;  /**< \brief IfxGtm_TOM2_11_TOUT71_P15_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT102_P10_0_OUT;  /**< \brief IfxGtm_TOM2_12_TOUT102_P10_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT135_P22_9_OUT;  /**< \brief IfxGtm_TOM2_12_TOUT135_P22_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT34_P33_12_OUT;  /**< \brief IfxGtm_TOM2_12_TOUT34_P33_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_12_TOUT72_P15_1_OUT;  /**< \brief IfxGtm_TOM2_12_TOUT72_P15_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT110_P10_8_OUT;  /**< \brief IfxGtm_TOM2_13_TOUT110_P10_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT136_P22_10_OUT;  /**< \brief IfxGtm_TOM2_13_TOUT136_P22_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT35_P33_13_OUT;  /**< \brief IfxGtm_TOM2_13_TOUT35_P33_13_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT65_P20_9_OUT;  /**< \brief IfxGtm_TOM2_13_TOUT65_P20_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_13_TOUT73_P15_2_OUT;  /**< \brief IfxGtm_TOM2_13_TOUT73_P15_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT137_P22_11_OUT;  /**< \brief IfxGtm_TOM2_14_TOUT137_P22_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT36_P32_0_OUT;  /**< \brief IfxGtm_TOM2_14_TOUT36_P32_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT66_P20_10_OUT;  /**< \brief IfxGtm_TOM2_14_TOUT66_P20_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_14_TOUT74_P15_3_OUT;  /**< \brief IfxGtm_TOM2_14_TOUT74_P15_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT149_P34_4_OUT;  /**< \brief IfxGtm_TOM2_15_TOUT149_P34_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT67_P20_11_OUT;  /**< \brief IfxGtm_TOM2_15_TOUT67_P20_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_15_TOUT75_P15_4_OUT;  /**< \brief IfxGtm_TOM2_15_TOUT75_P15_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT120_P11_1_OUT;  /**< \brief IfxGtm_TOM2_1_TOUT120_P11_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT47_P22_0_OUT;  /**< \brief IfxGtm_TOM2_1_TOUT47_P22_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT54_P21_3_OUT;  /**< \brief IfxGtm_TOM2_1_TOUT54_P21_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_1_TOUT95_P11_2_OUT;  /**< \brief IfxGtm_TOM2_1_TOUT95_P11_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT121_P11_4_OUT;  /**< \brief IfxGtm_TOM2_2_TOUT121_P11_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT46_P23_5_OUT;  /**< \brief IfxGtm_TOM2_2_TOUT46_P23_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT55_P21_4_OUT;  /**< \brief IfxGtm_TOM2_2_TOUT55_P21_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT88_P14_8_OUT;  /**< \brief IfxGtm_TOM2_2_TOUT88_P14_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_2_TOUT96_P11_3_OUT;  /**< \brief IfxGtm_TOM2_2_TOUT96_P11_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT122_P11_5_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT122_P11_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT49_P22_2_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT49_P22_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT56_P21_5_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT56_P21_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT60_P20_1_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT60_P20_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT89_P14_9_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT89_P14_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_3_TOUT97_P11_6_OUT;  /**< \brief IfxGtm_TOM2_3_TOUT97_P11_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT123_P11_7_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT123_P11_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT50_P22_3_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT50_P22_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT57_P21_6_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT57_P21_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT61_P20_3_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT61_P20_3_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT90_P14_10_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT90_P14_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_4_TOUT98_P11_9_OUT;  /**< \brief IfxGtm_TOM2_4_TOUT98_P11_9_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT124_P11_8_OUT;  /**< \brief IfxGtm_TOM2_5_TOUT124_P11_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT58_P21_7_OUT;  /**< \brief IfxGtm_TOM2_5_TOUT58_P21_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT91_P13_0_OUT;  /**< \brief IfxGtm_TOM2_5_TOUT91_P13_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_5_TOUT99_P11_10_OUT;  /**< \brief IfxGtm_TOM2_5_TOUT99_P11_10_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT100_P11_11_OUT;  /**< \brief IfxGtm_TOM2_6_TOUT100_P11_11_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT106_P10_4_OUT;  /**< \brief IfxGtm_TOM2_6_TOUT106_P10_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT125_P11_13_OUT;  /**< \brief IfxGtm_TOM2_6_TOUT125_P11_13_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT59_P20_0_OUT;  /**< \brief IfxGtm_TOM2_6_TOUT59_P20_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_6_TOUT92_P13_1_OUT;  /**< \brief IfxGtm_TOM2_6_TOUT92_P13_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT101_P11_12_OUT;  /**< \brief IfxGtm_TOM2_7_TOUT101_P11_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT126_P11_14_OUT;  /**< \brief IfxGtm_TOM2_7_TOUT126_P11_14_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT130_P22_4_OUT;  /**< \brief IfxGtm_TOM2_7_TOUT130_P22_4_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT64_P20_8_OUT;  /**< \brief IfxGtm_TOM2_7_TOUT64_P20_8_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_7_TOUT93_P13_2_OUT;  /**< \brief IfxGtm_TOM2_7_TOUT93_P13_2_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT109_P10_7_OUT;  /**< \brief IfxGtm_TOM2_8_TOUT109_P10_7_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT127_P11_15_OUT;  /**< \brief IfxGtm_TOM2_8_TOUT127_P11_15_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT131_P22_5_OUT;  /**< \brief IfxGtm_TOM2_8_TOUT131_P22_5_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT51_P21_0_OUT;  /**< \brief IfxGtm_TOM2_8_TOUT51_P21_0_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_8_TOUT68_P20_12_OUT;  /**< \brief IfxGtm_TOM2_8_TOUT68_P20_12_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT103_P10_1_OUT;  /**< \brief IfxGtm_TOM2_9_TOUT103_P10_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT132_P22_6_OUT;  /**< \brief IfxGtm_TOM2_9_TOUT132_P22_6_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT52_P21_1_OUT;  /**< \brief IfxGtm_TOM2_9_TOUT52_P21_1_OUT */
IFX_EXTERN IfxGtm_Tom_ToutMap IfxGtm_TOM2_9_TOUT69_P20_13_OUT;  /**< \brief IfxGtm_TOM2_9_TOUT69_P20_13_OUT */

/** \} */

#endif /* IFXGTM_PINMAP_H */
