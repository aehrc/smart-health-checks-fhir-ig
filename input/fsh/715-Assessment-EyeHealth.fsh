Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: EyeHealth
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Eye Health"
Description: "Eye Health sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/EyeHealth"
* name = "EyeHealth"
* title = "Aboriginal and Torres Strait Islander Health Check - Eye Health"
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
  * linkId = "961da481-1698-4a1d-962b-a9c2185e335a"
  * text = "Eye health"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "0e30de87-8d5a-4b7a-893a-f1791c4f31c5"
    * text = "Vision concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age <= 12"
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "bc49ee24-62a8-4252-a5ee-9c68bfed601c"
      * text = "Is there anything that you are worried about with your child's vision?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age > 12"
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "6286346d-c805-4519-8e82-bf364a215c58"
      * text = "Is there anything that you are worried about with your vision?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "468770e4-af95-4377-8af5-280deb585e01"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "bc49ee24-62a8-4252-a5ee-9c68bfed601c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * enableWhen[+]
        * question = "6286346d-c805-4519-8e82-bf364a215c58"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * enableBehavior = #any  
  * item[+]
    * linkId = "0a68e069-0a54-4f02-b17e-dec22f008082"
    * text = "Eye examination"
    * type = #group
    * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age < 1"
      * linkId = "58e29c14-e279-4a1d-a7d6-b9d92b60d0e2"
      * text = "Red reflex (up to six months)"
      * type = #group
      * repeats = false
      * item[+]
        * linkId = "021437bf-b9ca-43e9-804c-affe84f84497"
        * text = "Right eye"
        * type = #string
        * repeats = false
      * item[+]
        * linkId = "a295c5bd-972a-41d4-9844-a5d30478cd99"
        * text = "Left eye"
        * type = #string
        * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age <= 12"
      * linkId = "70773cba-54b0-43bc-b1f2-2942693957ce"
      * text = "Evidence of squint or other abnormality"
      * type = #group
      * repeats = false
      * item[+]
        * linkId = "6c552a96-4929-458a-97b5-418a7069d9c2"
        * text = "Right eye"
        * type = #string
        * repeats = false
      * item[+]
        * linkId = "24ffc08e-dbde-43d9-ac48-7f7dba7cf396"
        * text = "Left eye"
        * type = #string
        * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age >= 3"
      * linkId = "3424f8ef-d17c-4ad6-ba09-60a0d0b7a1d2"
      * text = "Visual acuity"
      * type = #group
      * repeats = false
      * item[+]
        * linkId = "ed7900c2-8912-42e1-80f1-9ed09f8e00f8"
        * text = "Right eye"
        * type = #string
        * repeats = false
      * item[+]
        * linkId = "887b031c-d47e-42a1-aee5-4befda25ba22"
        * text = "Left eye"
        * type = #string
        * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age >= 25"
      * linkId = "f6603a1c-7176-4121-8df5-03433cdc36db"
      * text = "Trachoma Check (endemic areas)"
      * type = #group
      * repeats = false
      * item[+]
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
        * linkId = "c76f02fb-2021-4462-b6ca-1da14b772c11"
        * text = "Right eye"
        * type = #choice
        * repeats = false
        * answerOption[+].valueCoding = $SCT#60332004 "Trichiasis"
        * answerOption[+].valueCoding = $SCT#95726001 "Corneal scarring"
      * item[+]  
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
        * linkId = "ae82cf54-17a3-421f-b6f6-5ee87631e281"
        * text = "Left eye"
        * type = #choice
        * repeats = false
        * answerOption[+].valueCoding = $SCT#60332004 "Trichiasis"
        * answerOption[+].valueCoding = $SCT#95726001 "Corneal scarring"
  * item[+]
    * linkId = "8dcdc04c-7655-4b47-88eb-8425f0cdc0d0"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false  
