Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: SocialHistoryChild
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Social History Child"
Description: "Social History Child sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/SocialHistoryChild"
* name = "SocialHistoryChild"
* title = "Aboriginal and Torres Strait Islander Health Check - Social History Child"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age <= 12"
  * extension[sdc-questionnaire-shortText].valueString = "Social history"
  * linkId = "a5cc8a8f-89cf-470c-a6bd-ce9da2f64ee9"
  * text = "Social history: Information about family and child's living arrangements"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "1bb673a4-40f9-41c3-ad04-66c9f38fdc1b"
    * text = "Who lives in your household? / Who does the child live with?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "5b8134d2-f87e-4449-bfc1-eac1d8d3d58b"
      * text = "Details"
      * type = #display 
  * item[+]
    * linkId = "934d105e-a4d6-4926-9b64-55bb1049d839"
    * text = "Stressful life events"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "062f5234-686a-4bf3-afcd-3fcd988afd6c"
      * text = "Have there been any stressful life events that would cause you or your child to be upset?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "1ea0a898-d680-4a5d-a0f1-91b57eb77a91"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "062f5234-686a-4bf3-afcd-3fcd988afd6c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "272af1cb-4309-4227-bab4-a6cc9fb47635"
    * text = "If indicated, ask about depression and other mental health concerns"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "4048e200-1c09-441d-b25d-f8a946fac411"
      * text = "Details"
      * type = #display

  * item[+]
    * linkId = "76d51512-b94a-4092-b3ae-a656fbb9c360"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false