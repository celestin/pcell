/* 	Intellectual Properties of RFVLSI LAB, NCTU, TAIWAN. 
	Intended for Internal Use Only, All Rights Reserved, 2012 
	*DO NOT DISCLOSE*
	Author : Tao-Yi Lee */
	
strLibName="RFVLSI_N65";       
strCellName="xfm_ct"

cellId = ddGetObj(strLibName strCellName)
if(g_cdfDataId = cdfGetBaseCellCDF(cellId)
then
        ret = cdfDeleteCDF(g_cdfDataId)
        fprintf(stderr "*** CDF of %L deleted (%L)\n" strCellName ret)
)

g_cdfDataId = cdfCreateBaseCellCDF(cellId ?fieldWidth 580 ?fieldHeight 35 ?buttonFieldWidth 340 ?promptWidth 300)

cdfCreateParam(g_cdfDataId ?name "para_model" ?type "radio" ?defValue "OFF"
?prompt "Model Parameters" ?display "t" ?editable "t" ?storeDefault nil ?choices list("ON" "OFF") ?parseAsCEL "no" ?callback "")


cdfCreateParam(g_cdfDataId ?name "L1" ?type "string" ?defValue "1n" ?prompt "Main Inductance" 
	?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "inductance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "L2" ?type "string" ?defValue "1n" ?prompt "Secondary Inductance" 
	?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "inductance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "L3" ?type "string" ?defValue "1n" ?prompt "L3" 
	?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "inductance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "L4" ?type "string" ?defValue "1n" ?prompt "L4" 
	?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "inductance" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "R1" ?type "string" ?defValue "3.0" ?prompt "R1" ?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "R2" ?type "string" ?defValue "3.0" ?prompt "R2" ?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "R3" ?type "string" ?defValue "3.0" ?prompt "R3" ?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "R4" ?type "string" ?defValue "3.0" ?prompt "R4" ?display "cdfgData->para_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "subs_model" ?type "radio" ?defValue "OFF"
?prompt "Substrate Parameters" ?display "t" ?editable "t" ?storeDefault nil ?choices list("ON" "OFF") ?parseAsCEL "no" ?callback "")
cdfCreateParam(g_cdfDataId ?name "RS5" ?type "string" ?defValue "3.0" ?prompt "RS5" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "RS6" ?type "string" ?defValue "3.0" ?prompt "RS6" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "RS7" ?type "string" ?defValue "3.0" ?prompt "RS7" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "RS8" ?type "string" ?defValue "3.0" ?prompt "RS8" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "resistance" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "CS1" ?type "string" ?defValue "3f" ?prompt "CS1" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS2" ?type "string" ?defValue "3f" ?prompt "CS2" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS3" ?type "string" ?defValue "3f" ?prompt "CS3" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS4" ?type "string" ?defValue "3f" ?prompt "CS4" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS5" ?type "string" ?defValue "3f" ?prompt "CS5" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS6" ?type "string" ?defValue "3f" ?prompt "CS6" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS7" ?type "string" ?defValue "3f" ?prompt "CS7" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "CS8" ?type "string" ?defValue "3f" ?prompt "CS8" ?display "cdfgData->subs_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "mucap_model" ?type "radio" ?defValue "OFF"
?prompt "Mutual Cap Parameters" ?display "t" ?editable "t" ?storeDefault nil ?choices list("ON" "OFF") ?parseAsCEL "no" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C12" ?type "string" ?defValue "3f" ?prompt "C12" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C14" ?type "string" ?defValue "3f" ?prompt "C14" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C13" ?type "string" ?defValue "3f" ?prompt "C13" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C24" ?type "string" ?defValue "3f" ?prompt "C24" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C32" ?type "string" ?defValue "3f" ?prompt "C32" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")
cdfCreateParam(g_cdfDataId ?name "C34" ?type "string" ?defValue "3f" ?prompt "C34" ?display "cdfgData->mucap_model->value == \"ON\"" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?units "capacitance" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "kf" ?type "string" ?defValue "1" ?prompt "Coupling Coeffcient" ?display "t" ?editable "t" 
	?storeDefault nil ?parseAsCEL "yes" ?parseAsNumber "yes" ?callback "")
/* end modeling params */

cdfCreateParam(g_cdfDataId ?name "OD" ?type "float" ?defValue 180.0 	?prompt "Outer Diameter" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")

cdfCreateParam(g_cdfDataId ?name "ROP" ?type "float" ?defValue 20.0 	?prompt "Pri. Lead Opening" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")
cdfCreateParam(g_cdfDataId ?name "LOP" ?type "float" ?defValue 20.0 	?prompt "Sec. Lead Opening" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")

cdfCreateParam(g_cdfDataId ?name "WI" ?type "float" ?defValue 4.0 	?prompt "Pri. Line Width" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")
cdfCreateParam(g_cdfDataId ?name "WO" ?type "float" ?defValue 2.0 	?prompt "Sec. Line Width" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")

cdfCreateParam(g_cdfDataId ?name "S" ?type "float" ?defValue 2.0 	?prompt "Spacing" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")


cdfCreateParam(g_cdfDataId ?name "TOP_ME" ?type "cyclic" ?defValue "9" ?choices list("1" "2" "3" "4" "5" "6" "7" "8" "9")
?prompt "Top Metal" ?display "t" ?editable "t" ?storeDefault nil ?parseAsCEL "no" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "BTM_ME" ?type "cyclic" ?defValue "9" ?choices list("1" "2" "3" "4" "5" "6" "7" "8" "9")
?prompt "Bottom Metal" ?display "t" ?editable "t" ?storeDefault nil ?parseAsCEL "yes" ?parseAsNumber "yes" ?callback "")

cdfCreateParam(g_cdfDataId ?name "NT_N" ?type "boolean" ?defValue nil ?prompt "Native N-TYPE doping" ?display "t" ?editable "t" ?storeDefault nil ?parseAsCEL "no" ?callback "")

cdfCreateParam(g_cdfDataId ?name "dummy" ?type "boolean" ?defValue t ?prompt "Enable Dummy" ?display "t" ?editable "t" ?storeDefault nil  ?callback "")
cdfCreateParam(g_cdfDataId ?name "xfm_str" ?type "string" ?defValue "xfm" ?prompt "Text Label" ?display "cdfgData->dummy->value" ?editable "t" ?storeDefault nil  ?callback "")
cdfCreateParam(g_cdfDataId ?name "DUMMYL" ?type "cyclic" ?defValue "drawing" ?choices list("drawing" "dummy1"  "dummy2"  "dummy3"  "dummy4"  "dummy5")
?prompt "Main Dummy Layer" ?display "cdfgData->dummy->value" ?editable "t" ?storeDefault nil ?parseAsCEL "no" ?callback "")

g_cdfDataId->simInfo = list( nil )
g_cdfDataId->simInfo->auCdl = '( nil
        dollarEqualParams nil
        dollarParams      nil
        modelName         "xfm_ct"
        namePrefix        "T"
        propMapping       nil
        termOrder         (p1 p2 p3 p4 ct vss)
        componentName     xfm_ct
        instParameters    (OD WI WO S)
        otherParameters   nil
        netlistProcedure  ansCdlSubcktCall
    )

cdfSaveCDF( g_cdfDataId )