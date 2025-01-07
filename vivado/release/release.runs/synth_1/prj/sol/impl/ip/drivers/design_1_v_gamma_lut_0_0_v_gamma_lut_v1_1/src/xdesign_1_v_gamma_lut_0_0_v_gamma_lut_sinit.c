// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdesign_1_v_gamma_lut_0_0_v_gamma_lut.h"

extern XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config XDesign_1_v_gamma_lut_0_0_v_gamma_lut_ConfigTable[];

XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config *XDesign_1_v_gamma_lut_0_0_v_gamma_lut_LookupConfig(u16 DeviceId) {
	XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDESIGN_1_V_GAMMA_LUT_0_0_V_GAMMA_LUT_NUM_INSTANCES; Index++) {
		if (XDesign_1_v_gamma_lut_0_0_v_gamma_lut_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDesign_1_v_gamma_lut_0_0_v_gamma_lut_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Initialize(XDesign_1_v_gamma_lut_0_0_v_gamma_lut *InstancePtr, u16 DeviceId) {
	XDesign_1_v_gamma_lut_0_0_v_gamma_lut_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDesign_1_v_gamma_lut_0_0_v_gamma_lut_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDesign_1_v_gamma_lut_0_0_v_gamma_lut_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

