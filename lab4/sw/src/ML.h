#pragma once

#ifdef ZEDBOARD
#    include <filesystem>

#    include "Model.h"
#endif

// This file should only be used when developing on the Zedboard

namespace ML {

#ifdef ZEDBOARD

template <typename TW, typename TI, typename TB>
Model buildToyModel(const std::filesystem::path modelPath);
void runTests();
int runModelTest();
#else
static_assert(false, "This file should not be in use unless developing on the Zedboards, ensure that ZEDBOARD is defined");
#endif

};  // namespace ML