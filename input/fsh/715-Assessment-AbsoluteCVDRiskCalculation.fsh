Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: AbsoluteCVDRiskCalculation
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Absolute Cardiovascular Disease Risk Calculation"
Description: "Absolute Cardiovascular Disease Risk Calculation sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."


//assemble expectation
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
  * valueCode = #assemble-child

//launch context
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[+]
    * url = "name"
    * valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient
  * extension[+]
    * url = "description"
    * valueString = "The patient that is to be used to pre-populate the form"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  * extension[+]
    * url = "name"
    * valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#user
  * extension[+]
    * url = "type"
    * valueCode = #Practitioner
  * extension[+]
    * url = "description"
    * valueString = "The practitioner user that is to be used to pre-populate the form"

* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* url = "http://www.health.gov.au/assessments/mbs/715/AbsoluteCVDRiskCalculation"
* name = "AbsoluteCVDRiskCalculation"
* title = "Aboriginal and Torres Strait Islander Health Check - Absolute Cardiovascular Disease Risk Calculation"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU


* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 25"
  * linkId = "d95abe99-8ef2-4b97-bc88-a2901e2ebc9c"
  * text = "Absolute cardiovascular risk calculation"
  * type = #group
  * repeats = false
  * item[+]
    * extension[+][sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%ObsBloodPressure.entry.resource.component.where(code.coding.where(code='8480-6')).value.value"
    * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-unit].valueCoding = $UCUM#mm[Hg]
    * linkId = "4b98f514-2f6a-41f3-ad9d-185abc68ae34"
    * text = "Systolic Blood Pressure"
    * type = #decimal
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "1624394a-1777-4692-b304-03cd42de4c27"
      * text = "75 or more"
      * type = #display
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#unit
      * linkId = "414f230f-7b33-4e55-b323-724206f6825e"
      * text = "mm Hg"
      * type = #display
  * item[+]        
    * extension[+][sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%ObsTotalCholesterol.entry.resource.value.value"
    * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-unit].valueCoding = $UCUM#mmol/L
    * linkId = "f11feebc-fc4a-40d5-8481-b87d9f5a89aa"
    * text = "Total Cholesterol"
    * type = #decimal
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "0f260464-fcfc-46d1-b04b-c8fb061b781e"
      * text = "2 or more"
      * type = #display
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#unit
      * linkId = "d5a18260-0376-4c73-97a9-a23198bccce1"
      * text = "mmol/L"
      * type = #display
  * item[+]
    * extension[+][sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%ObsHDLCholesterol.entry.resource.value.value"
    * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-unit].valueCoding = $UCUM#mmol/L
    * linkId = "c47a7fae-0c60-40f8-8426-1019b1f0dd8f"
    * text = "HDL Cholesterol"
    * type = #decimal
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "9b05a756-40f6-4ae4-9ec9-179e55685531"
      * text = "Between 0.2 - 5"
      * type = #display
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#unit
      * linkId = "28576058-6a24-4516-900a-42c9452722d3"
      * text = "mmol/L"
      * type = #display
  * item[+]
    * extension[+][sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%Condition.entry.resource.code.coding.where(system='http://snomed.info/sct' and code='44054006').exists()" //type 2 diabetes
    * linkId = "e8fed84e-6c15-4f62-bc95-cd08033af3f7"
    * text = "Diabetes"
    * type = #boolean
    * repeats = false
  * item[+]
    * linkId = "b980624c-e91a-44d4-80ba-a9f34c0e1188"
    * text = "ECG LVH"
    * type = #boolean
    * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "CVD Risk Score"
      * language = #text/fhirpath
      * expression = "%cvdScore.round(0)"
    * linkId = "ca830916-e2ee-4b24-a4c1-13eee23f8733"
    * text = "Cardiovascular disease risk calculated result"
    // * code = $SCT#827181004 "Risk of cardiovascular disease"
    * type = #integer   
    * repeats = false
    * readOnly = true  
    * item[+]
      * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory].valueCodeableConcept = http://hl7.org/fhir/questionnaire-display-category#instructions
      * linkId = "1d0b746d-70a3-4c09-a33b-f67fd6db63a0"
      * text = "https://auscvdrisk.com.au/risk-calculator"
      * type = #display

  * item[+]
    * linkId = "f8022f3f-21fe-42c0-8abd-95f24e2e37e5"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false