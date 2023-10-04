# Corrida general del workflow final

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-final2/611_CA_reparar_dataset_09.r")
source("~/labo2023ba/src/workflow-final2/621_DR_corregir_drifting_09.r")
source("~/labo2023ba/src/workflow-final2/631_FE_historia_09.r")
source("~/labo2023ba/src/workflow-final2/641_TS_training_strategy_09.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-final2/651_HT_lightgbm_09.r")
source("~/labo2023ba/src/workflow-final2/661_ZZ_final_09.r")
