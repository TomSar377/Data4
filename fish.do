
*Import dataset
import excel "C:/Users/42190/Desktop/fish.xlsx", sheet("fish") firstrow clear

*Generate interaction variable
gen TREAT_STAGE = TREATMENT*STAGE

*Regression model
reg SHOALING TREATMENT STAGE TREAT_STAGE

*Visualisation of model
graph twoway scatter SHOALING TREATMENT || lfit SHOALING TREATMENT

*Robustness check
reg SHOALING TREATMENT STAGE TREAT_STAGE, vce(robust)
