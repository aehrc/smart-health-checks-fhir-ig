Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: LearningAndWork
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Learning And Work"
Description: "Learning And Work sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

* contained[+] = YesNo
* contained[+] = YesNoNA

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
* url = "http://www.health.gov.au/assessments/mbs/715/LearningAndWork"
* name = "LearningAndWork"
* title = "Aboriginal and Torres Strait Islander Health Check - Learning And Work"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// adolescents and adults
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "(%age > 12).intersect(%age < 50)"
  * linkId = "5437e30d-8a0a-4785-974e-00a10d2a1df0"
  * text = "Learning and work"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age < 25"
    * linkId = "0e30e9b4-ec83-44ea-88ab-47963e52a2d7"
    * text = "Learning"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "0cd9e27b-1e98-41af-917b-0c6ee21c0819"
      * text = "Are you studying at school/uni?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "18bdfa42-9845-4c6e-b737-843b14d54641"
      * text = "Details"
      * type = #text
      * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 25"
    * linkId = "c0ba8a79-a9c5-40cc-b0c2-041e736784e9"
    * text = "Learning"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "4a81afc0-f0da-49e1-b8cc-c19cb0f5f4e9"
      * text = "Are you studying?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "1c648524-558e-4d24-bd83-c9f5cd35e97b"
      * text = "Details"
      * type = #text
      * repeats = false
  * item[+]
    * linkId = "ccf6f0b0-57ae-473e-9929-2a09184c8a14"
    * text = "Work"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "aaead1e2-ea54-4979-be0a-647e61ab59a9"
      * text = "Are you working?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * extension[sdc-questionnaire-shortText].valueString = "Details"
      * linkId = "749a4e1e-35ab-4f37-ab28-cb3f0830bb2a"
      * text = "Details (occupation including occupational hazards, study, training, disability, etc)"
      * type = #text
      * repeats = false

  * item[+]
    * linkId = "3569e514-a74b-4343-b31b-3395e58d991a"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false

// older people
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 50"
  * linkId = "dec713ae-246a-4961-95c9-0626bfebfed2"
  * text = "Work"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "2bfc99a5-677c-4aea-a1ad-c37a181a3733"
    * text = "Work"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "4c68ff3e-0e73-4ea2-b295-5057deaa590e"
      * text = "Are you working?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[sdc-questionnaire-shortText].valueString = "Details"
      * linkId = "794fc001-6799-4a51-9a80-f2ed7c685a42"
      * text = "Details (occupation including occupational hazards, study, training, disability, etc)"
      * type = #text
      * repeats = false

  * item[+]
    * linkId = "ed6f7800-e22a-4639-9d11-faf845513500"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false