Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: MemoryAndThinking
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Memory And Thinking"
Description: "Memory And Thinking sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

* contained[+] = YesNo

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
* url = "http://www.health.gov.au/assessments/mbs/715/MemoryAndThinking"
* name = "MemoryAndThinking"
* title = "Aboriginal and Torres Strait Islander Health Check - Memory And Thinking"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 50"
  * linkId = "1bd58e7b-2cb7-45fb-965f-d5fa33d0bb4c"
  * text = "Memory and thinking"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "64fd0c95-b57b-4319-bf40-ad77d10a9832"
    * text = "Personal concerns about your memory or thinking"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "e29701be-2b79-471d-a42e-7e3830459080"
      * text = "Do you have any worries about your memory or thinking?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "69985e2e-4619-42fa-a111-e6fb3118ef74"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "e29701be-2b79-471d-a42e-7e3830459080"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y 
  * item[+]
    * linkId = "44da9ba8-4636-4eaa-8bb1-aaa65f117fab"
    * text = "Family concerns about your memory or thinking"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "06a67326-9e3d-4c4c-b271-af5b168d077c"
      * text = "Does anyone in your family have any worries about your memory or thinking?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "43d2cb6c-29a7-4293-a6c8-87a228a82e19"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "06a67326-9e3d-4c4c-b271-af5b168d077c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * linkId = "4ebb3c30-936b-4932-a330-f1e643b5ccd4"
    * text = "If any concerns are raised and/or high risk for cognitive impairment identified, follow up with cognitive screening (eg clock test, GPCOG, KICA-Cog, MMSE)"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "c563f52d-d3cc-4687-9863-0f1b7d00d942"
      * text = "Details"
      * type = #display


  * item[+]
    * linkId = "1f0e7fde-e964-4f36-9151-dbdc5e145f94"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false