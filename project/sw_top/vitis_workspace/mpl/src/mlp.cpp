#include <iostream>
extern "C" {
	#include <stdio.h>
	#include "platform.h"
	#include "xil_printf.h"
};

#include "ML.h"

int main()
{
	std::cout << "\n\r\n\rInitializing..." << std::endl;
	init_platform();
	Xil_DCacheDisable();
	// Xil_DCacheEnable();
	std::cout << "Running Model Test..." << std::endl;
	ML::runModelTest();
	std::cout << "Cleaning Up..." << std::endl;
	cleanup_platform();
}
