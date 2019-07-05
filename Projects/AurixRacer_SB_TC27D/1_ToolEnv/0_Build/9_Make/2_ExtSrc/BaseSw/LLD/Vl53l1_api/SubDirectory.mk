# -----------------------------------------------------------------------------
#
# Copyright (C) 2015-2017 Infineon Technologies AG. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# - Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation.
#   and/or other materials provided with the distribution.
# - Neither the name of the copyright holders nor the names of its
#   contributors may be used to endorse or promote products derived from this
#   software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# To improve the quality of the software, users are encouraged to share
# modifications, enhancements or bug fixes with Infineon Technologies AG
# (support@infineon.com).
# 
# -----------------------------------------------------------------------------
# Subdirectory make file for ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------


# Make-Rules:
# Make-rules for architecture: Tricore

#Make-rule to build file: vl53l1_api.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_api_calibration.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api_calibration.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_api_core.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api_core.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_api_debug.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_debug.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_debug.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_debug.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_debug.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api_debug.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_api_preset_modes.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api_preset_modes.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_api_strings.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_api_strings.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_core.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_core.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_core_support.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_core_support.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_error_strings.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_error_strings.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_error_strings.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_error_strings.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_strings.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_error_strings.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_platform.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_platform.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_platform.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_platform.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_platform.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_register_funcs.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_register_funcs.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_silicon_core.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_silicon_core.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_silicon_core.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_silicon_core.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_silicon_core.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_silicon_core.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: vl53l1_wait.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_wait.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_wait.o

2_Out/Tricore_Gnuc/Gnuc_Files/2_ExtSrc/BaseSw/LLD/Vl53l1_api/vl53l1_wait.o: ../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file vl53l1_wait.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -DBOARD=SHIELD_BUDDY @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD
