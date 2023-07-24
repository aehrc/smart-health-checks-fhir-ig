Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: RegularMedications
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Regular Medications"
Description: "Regular Medications sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/RegularMedications"
* name = "RegularMedications"
* title = "Aboriginal and Torres Strait Islander Health Check - Regular Medications"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]  
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age.exists()"
  * linkId = "7dfe7c6a-ca7f-4ddf-9241-a7b918a9695a"
  * text = "Regular medications: check if still required, appropriate dose, understanding of medication and adherence"
  * extension[sdc-questionnaire-shortText].valueString = "Regular medications"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "6eb59145-ed9a-4184-af83-3506d47e4d4e"
    * text = "Does your child take any regular medications (prescribed, over-the-counter, traditional, complementary and alternative)?"
    * extension[sdc-questionnaire-shortText].valueString = "Does your child take any regular medications?"
    * type = #choice
    * repeats = false 
    * answerValueSet = "#YesNo"
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "3a2d27b6-e918-4df5-aca9-b374fcf9faad"
    * text = "Do you take any regular medications (prescribed, over-the-counter, traditional, complementary and alternative)?"
    * extension[sdc-questionnaire-shortText].valueString = "Do you take any regular medications?"
    * type = #choice
    * repeats = false  
    * answerValueSet = "#YesNo"
  * item[+]
    * linkId = "874ec8db-95c9-4cc0-95db-e45edaa3cd12"
    * text = "Up to date in the health record?"
    * type = #boolean
    * repeats = false
    * required = true
    * enableWhen[+]
      * question = "6eb59145-ed9a-4184-af83-3506d47e4d4e"
      * operator = #=
      * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
    * enableWhen[+]
      * question = "3a2d27b6-e918-4df5-aca9-b374fcf9faad"
      * operator = #=
      * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
    * enableBehavior = #any
  * item[+]
    * linkId = "36290837-ad70-48b2-9c66-31533fec918b"
    * text = "Medication understanding and adherence has been checked with patient"
    * extension[sdc-questionnaire-shortText].valueString = "Understanding and adherence checked"
    * type = #boolean
    * repeats = false
    * required = true
    * enableWhen[+]
      * question = "6eb59145-ed9a-4184-af83-3506d47e4d4e"
      * operator = #=
      * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
    * enableWhen[+]
      * question = "3a2d27b6-e918-4df5-aca9-b374fcf9faad"
      * operator = #=
      * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
    * enableBehavior = #any


  * item[+]
    * linkId = "aa9ff2ed-bcd2-406d-a9ff-89c201df2605"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false