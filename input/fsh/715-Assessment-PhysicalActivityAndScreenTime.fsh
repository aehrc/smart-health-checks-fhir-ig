Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: PhysicalActivityAndScreenTime
InstanceOf: Questionnaire
Usage: #definition
Title: "Physical Activity And Screen Time"
Description: "Physical Activity And Screen Time sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/PhysicalActivityAndScreenTime"
* name = "PhysicalActivityAndScreenTime"
* title = "Aboriginal and Torres Strait Islander Health Check - Physical Activity And Screen Time"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU


//all ages except older people
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age < 50"
  * linkId = "74736baa-455b-41d2-af98-fb65cd463e97"
  * text = "Physical activity and screen time"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * linkId = "8c5e737f-820b-47a4-8c8a-27ce1eb18cf4"
    * text = "Physical activity concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "304d0332-9bfd-42dc-a4be-a5122596fb89"
      * text = "Is there anything that you are worried about with your child's level of physical activity?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "26707b9a-4e3d-4063-a890-7ec2ff02ced1"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "304d0332-9bfd-42dc-a4be-a5122596fb89"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"  
    * linkId = "e24d487b-3dd4-4a6d-a58e-85dfa8ce3f36"
    * text = "Screen time concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "465eacce-f9ee-4022-9186-89065cf01ce2"
      * text = "Is there anything that you are worried about with your child's level of screen time?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "13040f64-5cbf-4592-a683-c03527c64ac6"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "465eacce-f9ee-4022-9186-89065cf01ce2"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12"
    * linkId = "e9b6ac74-d810-4350-8b41-8ea2e4bd14fc"
    * text = "Physical activity or screen time concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "08320c7a-831b-4237-95e2-d79aee155b90"
      * text = "Do you have any worries about physical activity or screen time?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "57fa51e3-11c5-43f1-bdf0-73b2b48414c3"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "08320c7a-831b-4237-95e2-d79aee155b90"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * linkId = "a9aaba01-5f11-4d4e-ad39-40b6bef745da"
    * text = "Document conversation about age-appropriate recommendations re physical activity and screen time"
    * type = #text
    * repeats = false 
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "64c5bab2-575b-4304-bb50-3840bae351ea"
      * text = "Details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "(%age > 12).intersect(%age <= 24)"
    * linkId = "b2269be8-3ea5-494c-9368-06912b629789"
    * text = "Document conversation about social connection, which could include questions about sports/hobbies/clubs/other activities"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "d35063fc-688b-4fab-ae3a-9aae18806043"
      * text = "Details"
      * type = #display
  * item[+]
    * linkId = "ccbd7fbf-0d40-4cb3-82b3-ad2c7cc7bba2"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false

// older people >=50
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 50"
  * linkId = "d56234a0-aafd-4c22-96c9-00ead8424f0b"
  * text = "Physical activity"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "015d986f-89cf-45b0-a753-9a3ab0c4b05b"
    * text = "Physical activity concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "b30d5d21-c6d6-4bb3-aab4-0fdee80b3093"
      * text = "Do you have any worries about physical activity?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "fd6beb79-ffc3-4879-913b-f42b0ec930ba"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "b30d5d21-c6d6-4bb3-aab4-0fdee80b3093"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * linkId = "eb326905-3709-4088-8491-8b83c97f2da4"
    * text = "Document conversation about recommendations re physical activity"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "10add54e-af14-47b7-ad1a-666692ee3767"
      * text = "Details"
      * type = #display

  * item[+]
    * linkId = "25b8b8fd-adb1-48ab-aeae-528603668c4b"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false