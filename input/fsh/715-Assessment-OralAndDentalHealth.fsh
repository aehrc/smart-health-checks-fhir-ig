Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: OralAndDentalHealth
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Oral And Dental Health"
Description: "Oral And Dental Health sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
    
//assemble context
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
  * valueString = "age"

* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* url = "http://www.health.gov.au/assessments/mbs/715/OralAndDentalHealth"
* name = "OralAndDentalHealth"
* title = "Aboriginal and Torres Strait Islander Health Check - Oral And Dental Health"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2024-04-02"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age.exists()"
  * linkId = "bde9ab00-a20f-4a7c-9266-11f53f60c65f"
  * text = "Oral and dental health"
  * type = #group
  * repeats = false
  * item[+] //in-progress
    * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#context-display    
    * linkId = "CD-in-progress-20"
    * text = "In progress"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div title=\"In progress\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<div style=\"display: flex; flex-direction: row;\">\r\n\t\t<img width='24' height='24' src='data:image/svg+xml;base64,\r\n\t\tPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxZW0iIGhlaWdodD0iMWVtIiB2aWV3Qm94PSIwIDAgMjQgMjQiPjxwYXRoIGZpbGw9IiM3NTc1NzUiIGQ9Im0xNS44NCAxMC4ybC0xLjAxIDEuMDFsLTIuMDctMi4wM2wxLjAxLTEuMDJjLjItLjIxLjU0LS4yMi43OCAwbDEuMjkgMS4yNWMuMjEuMjEuMjIuNTUgMCAuNzlNOCAxMy45MWw0LjE3LTQuMTlsMi4wNyAyLjA4bC00LjE2IDQuMkg4di0yLjA5TTEzIDJ2MmM0LjM5LjU0IDcuNSA0LjUzIDYuOTYgOC45MkE4LjAxNCA4LjAxNCAwIDAgMSAxMyAxOS44OHYyYzUuNS0uNiA5LjQ1LTUuNTQgOC44NS0xMS4wM0MyMS4zMyA2LjE5IDE3LjY2IDIuNSAxMyAybS0yIDBjLTEuOTYuMTgtMy44MS45NS01LjMzIDIuMkw3LjEgNS43NGMxLjEyLS45IDIuNDctMS40OCAzLjktMS42OHYtMk00LjI2IDUuNjdBOS44MSA5LjgxIDAgMCAwIDIuMDUgMTFoMmMuMTktMS40Mi43NS0yLjc3IDEuNjQtMy45TDQuMjYgNS42N00yLjA2IDEzYy4yIDEuOTYuOTcgMy44MSAyLjIxIDUuMzNsMS40Mi0xLjQzQTguMDAyIDguMDAyIDAgMCAxIDQuMDYgMTNoLTJtNSA1LjM3bC0xLjM5IDEuMzdBOS45OTQgOS45OTQgMCAwIDAgMTEgMjJ2LTJhOC4wMDIgOC4wMDIgMCAwIDEtMy45LTEuNjNoLS4wNFoiLz48L3N2Zz4=' \r\n\t\tstyle=\"align-self: center;\"/>\r\n\t</div>\r\n</div>" 
    * type = #display
    * enableWhen[+]
      * question = "MarkComplete-20" // Section complete item
      * operator = #=
      * answerBoolean = false  
  * item[+] //complete
    * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#context-display
    * linkId = "CD-complete-20"
    * text = "Complete"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div title=\"Section completed\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<div style=\"display: flex; flex-direction: row;\">\r\n\t\t<img width='24' height='24' src='data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxZW0iIGhlaWdodD0iMWVtIiB2aWV3Qm94PSIwIDAgMjQgMjQiPjxwYXRoIGZpbGw9IiMyZTdkMzIiIGQ9Ik0yMCAxMmE4IDggMCAwIDEtOCA4YTggOCAwIDAgMS04LThhOCA4IDAgMCAxIDgtOGMuNzYgMCAxLjUuMTEgMi4yLjMxbDEuNTctMS41N0E5LjgyMiA5LjgyMiAwIDAgMCAxMiAyQTEwIDEwIDAgMCAwIDIgMTJhMTAgMTAgMCAwIDAgMTAgMTBhMTAgMTAgMCAwIDAgMTAtMTBNNy45MSAxMC4wOEw2LjUgMTEuNUwxMSAxNkwyMSA2bC0xLjQxLTEuNDJMMTEgMTMuMTdsLTMuMDktMy4wOVoiLz48L3N2Zz4='\r\n\t\tstyle=\"align-self: center;\"/>\r\n\t</div>\r\n</div>\r\n"
    * type = #display
    * enableWhen[+]
      * question = "MarkComplete-20" // Section complete item
      * operator = #=
      * answerBoolean = true
  * item[+]
    * linkId = "70714d58-d936-4170-9763-82398f84a7a7"
    * text = "Dental concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age <= 12"
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "e4cf4f15-7eed-4aa1-9f9d-61ccd659685c"
      * text = "Is there anything that you are worried about with your child's teeth or mouth?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age > 12"
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "cb287506-9a64-4ee8-8f24-ba7cb77756f3"
      * text = "Is there anything that you are worried about with your teeth?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "cf949305-5ff7-4767-b946-7a50efd21cfc"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "e4cf4f15-7eed-4aa1-9f9d-61ccd659685c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * enableWhen[+]
        * question = "cb287506-9a64-4ee8-8f24-ba7cb77756f3"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * enableBehavior = #any
  * item[+]
    * linkId = "1f362cb2-911f-448b-b717-2614f1aced86"
    * text = "Last dental checkup"
    * type = #date
    * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 50"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "ffe81bde-608f-4e3f-98ae-39d0b9884dcc"
    * text = "Dentures?"
    * type = #choice
    * repeats = false
    * answerValueSet = "#YesNo"
  * item[+]
    * linkId = "5a3a56c6-b953-4d96-894d-95e07268473f"
    * text = "Teeth and mouth check"
    * type = #group
    * repeats = false
    * item[+]
      * linkId = "6247ab4c-41cb-4e77-b028-c9c2a8c7da91"
      * text = "Examination findings"
      * type = #text
      * repeats = false
    * item[+]
      * linkId = "79e09f4d-dac6-4088-baa0-d95dc658fb0b"
      * text = "Document conversation about oral health and care of teeth"
      * type = #text
      * repeats = false
      * item[+]
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
        * linkId = "39ddbf92-847d-4c98-adff-6aa3013f8b39"
        * text = "Details"
        * type = #display

  * item[+]
    * linkId = "875574fa-9769-42ca-8381-9e80c3e5233d"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false

  
  * item[+]
    * linkId = "MarkComplete-20"
    * text = "Mark section as complete"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <style type=\"text/css\">\r\n        .alert {\r\n            padding: 0.875rem;\r\n            margin-bottom: 1rem;\r\n            font-size: 0.875rem;\r\n            color: #2E7D32;\r\n            border-radius: 0.5rem;\r\n            background-color: #d5e5d6;\r\n            font-weight: 700;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<div class=\"alert\">Mark section as complete</div>\r\n</body>\r\n</div>"
    * type = #boolean
    * repeats = false