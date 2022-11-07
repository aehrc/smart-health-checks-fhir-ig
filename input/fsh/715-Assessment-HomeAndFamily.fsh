Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: 715AssessmentHomeAndFamily
InstanceOf: Questionnaire
Usage: #definition
Title: "715 Assessment Home And Family"
Description: "Sub-questionnaire for Aboriginal and Torres Strait Islander Health Checks"

* contained[+] = PrePopQuery

* extension[sdc-questionnaire-assemble-expectation].valueCode = #assemble-child
* extension[sdc-questionnaire-launchContext].extension[name].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[sdc-questionnaire-launchContext].extension[type].valueCode = #Patient
* extension[sdc-questionnaire-launchContext].extension[description].valueString = "The patient that is to be used to pre-populate the form"
* extension[sdc-questionnaire-sourceQueries].valueReference = Reference(PrePopQuery)

* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
//* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-obsn"
//* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-obsn"
* url = "http://www.health.gov.au/assessments/mbs/715/715AssessmentHomeAndFamily"
* name = "715AssessmentHomeAndFamily"
* title = "715 Assessment Home And Family"
* status = #draft
* experimental = true
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// for adolescents and up
* item[+]
  * extension[questionnaire-itemControl].valueCodeableConcept = https://aehrc.csiro.au/fhir/CodeSystem/QuestionnaireItemControlExtended#tab
  * linkId = "819b3305-bf93-4502-9986-242ea2ae5f43"
  * text = "Home and family"
  * type = #group
  * repeats = false
  * enableWhen[+]
    * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
    * operator = #>
    * answerInteger = 12
  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#text-box
    * linkId = "29bb209f-6dfc-4ed0-8b8d-741016c0ac61"
    * text = "Who do you live with?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "f3e122f3-77ff-4e07-a45b-1511a85a9a83"
      * text = "Details"
      * type = #display
  * item[+]
    * linkId = "64b979b6-cfc1-4024-868c-94e7be90d12b"
    * text = "Housing stability"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * linkId = "a7542da8-aad6-4a80-8b5b-806ca11d68d2"
      * text = "Do you have stable housing?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#text-box
      * linkId = "476dae02-d0e8-4128-81a1-7ad71dd06e97"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "a7542da8-aad6-4a80-8b5b-806ca11d68d2"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * linkId = "367ac5dd-07fa-4bda-a775-d9f38b15affd"
    * text = "Home safety"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * linkId = "6f73d1ee-dd8e-419a-9142-ede367200e3b"
      * text = "Do you feel safe at home?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#text-box
      * linkId = "9bd5f571-8cbf-4c25-975c-5fc8395b75f5"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "6f73d1ee-dd8e-419a-9142-ede367200e3b"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y

  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#text-box
    * linkId = "08d2e80e-3bb4-4f67-8b1c-090b1ace225a"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false