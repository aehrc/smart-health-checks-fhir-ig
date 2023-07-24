Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: HomeAndFamily
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Home And Family"
Description: "Home And Family sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/HomeAndFamily"
* name = "HomeAndFamily"
* title = "Aboriginal and Torres Strait Islander Health Check - Home And Family"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// for adolescents and up
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age > 12"
  * linkId = "819b3305-bf93-4502-9986-242ea2ae5f43"
  * text = "Home and family"
  * type = #group
  * repeats = false
  * item[+]
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
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "a7542da8-aad6-4a80-8b5b-806ca11d68d2"
      * text = "Do you have stable housing?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "476dae02-d0e8-4128-81a1-7ad71dd06e97"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "a7542da8-aad6-4a80-8b5b-806ca11d68d2"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N
  * item[+]
    * linkId = "367ac5dd-07fa-4bda-a775-d9f38b15affd"
    * text = "Home safety"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "6f73d1ee-dd8e-419a-9142-ede367200e3b"
      * text = "Do you feel safe at home?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "9bd5f571-8cbf-4c25-975c-5fc8395b75f5"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "6f73d1ee-dd8e-419a-9142-ede367200e3b"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N

  * item[+]
    * linkId = "08d2e80e-3bb4-4f67-8b1c-090b1ace225a"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false