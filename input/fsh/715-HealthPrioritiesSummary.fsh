Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: HealthPrioritiesSummary
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Health Priorities, Actions And Follow-Up Summary"
Description: "Health Priorities, Actions And Follow-Up Summary sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."


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

* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* url = "http://www.health.gov.au/assessments/mbs/715/HealthPrioritiesSummary"
* name = "HealthPrioritiesActionsAndFollowUpSummary"
* title = "Aboriginal and Torres Strait Islander Health Check - Health Priorities, Actions And Follow-Up Summary"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// some linkIds maintained from full assessment questionnaire
* item[+]
  * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#tab
  * extension[sdc-questionnaire-shortText].valueString = "Health Priorities Summary" 
  * linkId = "e2c778e2-83df-40d5-89ea-f0f91b666b04"
  * text = "Health Priorities, Actions And Follow-Up Summary"
  * type = #group
  * repeats = false
  * enableWhen[+]
    * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
    * operator = #exists
    * answerBoolean = true
  * item[+]
    * linkId = "f948fb81-48e9-4bc6-bf81-8d778ac4375a"
    * text = "The following information is a read-only collection of the 'Health priorities, actions and follow-up' sections entered in the previous tabs."
    * type = #display 
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Current priorities calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryCurrentPriorities"
    * linkId = "4b03d116-84ee-488c-b132-427472d21fcd"
    * text = "Current health/patient priorities"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Medical history calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryMedicalHistory"
    * linkId = "c848098c-85f3-487b-91af-01da4eba3aba"
    * text = "Medical history and current problems"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Regular medications calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryRegularMedications"
    * linkId = "0c0a389e-c23a-4687-84d9-e00c5a258c7a"
    * text = "Regular medications"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Allergies/adverse reactions calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryAllergiesAdverseReactions"
    * linkId = "34b7c4f3-c848-4dcb-ba9b-0b4c5ccd0785"
    * text = "Allergies/adverse reactions"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Family history Calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryFamilyHistory"
    * linkId = "f81c85c7-587e-47de-8b02-9c1eeee13949"
    * text = "Family history"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Social and emotional wellbeing calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySocialEmotionalWellbeing"
    * linkId = "a57d29d3-b875-47ac-b8ed-c95eaa6a027d"
    * text = "Social and emotional wellbeing"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Social history calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySocialHistory"
    * linkId = "ad9b85fc-24fe-495d-a980-941e2ad16533"
    * text = "Social history"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Home and family calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryHomeFamily"
    * linkId = "622f0877-80ec-4b91-bb1c-e741e5657e4c"
    * text = "Home and family"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Learning and development calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryLearningDevelopment"
    * linkId = "9a88bdf6-e97a-4c54-96ff-1dad9701b5ab"
    * text = "Learning and development"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Learning and work for adolescents and adults calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryLearningWorkAdults"
    * linkId = "aefbee8b-64fc-4cdc-9902-d6c3f50a2e18"
    * text = "Learning and work"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<
      * answerInteger = 50
    * enableBehavior = #all
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Learning and work calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryLearningWorkOlder"
    * linkId = "a96cce74-cda3-4b6b-adc4-1b7d73df2317"
    * text = "Work"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Mood calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryMood"
    * linkId = "58bf5a0f-6c68-4d1f-b352-bfcba8e1e05e"
    * text = "Mood"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Memory and thinking calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryMemoryThinking"
    * linkId = "d963364a-e2d3-4382-8430-c47c19fc206c"
    * text = "Memory and thinking"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50  
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Chronic disease associated with ageing calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryChronicDiseaseAgeing"
    * linkId = "1877223d-8cae-48af-8add-fd6b10b37209"
    * text = "Chronic disease associated with ageing"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Participation in screening programs calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryScreeningPrograms"
    * linkId = "b031bccf-5413-4c57-8e70-f464d24a6e6c"
    * text = "Participation in screening programs"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 74
    * enableBehavior = #all
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Healthy eating calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryHealthyEating"
    * linkId = "6ef556cb-2a69-4d28-a6cf-b4866303a564"
    * text = "Healthy eating"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Physical activity and screen time calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryPhysicalActivityScreenTimeNotOlder"
    * linkId = "b7e32f62-a4e7-4419-a728-6addceefeb02"
    * text = "Physical activity and screen time"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<
      * answerInteger = 50
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Physical activity and screen time calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryPhysicalActivityScreenTimeOlder"
    * linkId = "f1c3d1ba-240c-4e68-8afc-62c50cc313d1"
    * text = "Physical activity"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Substance use, including tobacco calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySubstanceUse"
    * linkId = "c94f2749-4353-4f51-9c75-106f81c5b69f"
    * text = "Substance use, including tobacco"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 12
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Gambling calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryGambling"
    * linkId = "931457d4-0de0-434c-88af-eb1b17746953"
    * text = "Gambling"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12 
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Sexual health calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySexualHealthAdolescents"
    * linkId = "797402ac-95de-4c0b-a04f-44b669755f7c"
    * text = "Sexual health"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 24
    * enableBehavior = #all
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Sexual health calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySexualHealthAdults"
    * linkId = "e4df6f14-7a9c-445c-8cf5-3fc489db7307"
    * text = "Genitourinary and sexual health"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 24
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 49
    * enableBehavior = #all
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Sexual health calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySexualHealthOlder"
    * linkId = "23e293c4-537f-46ca-90f9-c8dfb7630211"
    * text = "Genitourinary and sexual health"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 50
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Eye health calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryEyeHealth"
    * linkId = "4b1bf353-a422-40fb-a6d3-42807ebf1a6a"
    * text = "Eye health"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Ear health and hearing calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryEarHealthHearing"
    * linkId = "c292557b-2798-4b45-854d-58c20ecf8233"
    * text = "Ear health and hearing"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Oral and dental health calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryOralDentalHealth"
    * linkId = "93c33ba0-e4cc-4e9d-978b-49f57ce4a5eb"
    * text = "Oral and dental health"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Skin calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummarySkin"
    * linkId = "0ccc2bce-899f-42b0-9100-05e6874372a3"
    * text = "Skin"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 24 
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Immunisation calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryImmunisation"
    * linkId = "8a33280b-19b9-4e0f-a26f-d9a0f95a7714"
    * text = "Immunisation"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Examination calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryExamination"
    * linkId = "a889034b-7942-460d-ada6-b728a9f57dc0"
    * text = "Examination"
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Absolute cardiovascular risk calculation calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryAbsoluteCVDRisk"
    * linkId = "fd51cc3f-f53d-4a7d-a3a3-4a3b7232d4ee"
    * text = "Absolute cardiovascular risk calculation"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 25
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Investigations calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummaryInvestigations"
    * linkId = "84fa4cca-aff7-4357-8d92-bb827074dc6a"
    * text = "Investigations"
    * type = #text
    * repeats = false 
    * readOnly = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>=
      * answerInteger = 12
    /*
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummary"
    * linkId = "f579ca65-d3eb-4f9c-88c9-719574eb21ee"
    * text = ""
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummary"
    * linkId = "bf281310-51d7-4372-95d1-827064a90628"
    * text = ""
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummary"
    * linkId = "eb6d2f22-721e-41e6-9c96-a3d3917abb8a"
    * text = ""
    * type = #text
    * repeats = false 
    * readOnly = true
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression].valueExpression
      * description = "Calculation"
      * language = #text/fhirpath
      * expression = "%HealthPrioritiesSummary"
    * linkId = "3d59fa4f-f1d6-45ac-bc75-e54f299d9a21"
    * text = ""
    * type = #text
    * repeats = false 
    * readOnly = true
    */