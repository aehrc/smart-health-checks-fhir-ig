Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: LearningAndDevelopment
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Learning And Development"
Description: "Learning And Development sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/LearningAndDevelopment"
* name = "LearningAndDevelopment"
* title = "Aboriginal and Torres Strait Islander Health Check - Learning And Development"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// This questionnaire attempts to somewhat harmonise the infant and adolescent templates but there are differences that will require confirmation.
* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age <= 12"
  * linkId = "3e7d7246-98f8-4803-b063-8405ac30b086"
  * text = "Learning and development"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 5"
    * linkId = "818c9aaa-1b00-4c76-9971-49df74edff7a"
    * text = "Is there anything that you are worried about with your child's development?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "ca6113f5-b6f6-413d-b9e1-0a34491f4be3"
      * text = "Details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "e7ef5692-25e6-4598-aa08-d0107e21fe31"
    * text = "Is there anything that you are worried about with your child's learning?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "c7c5fb28-c72b-4804-b7ec-c52fe754b689"
      * text = "Details"
      * type = #display
  * item[+]
    * linkId = "fc658147-3fad-42a0-9c10-c14fbd30775e"
    * text = "Is there anything that you are worried about with your child's behaviour?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "a3327fc8-663d-402b-8910-2b15f2a3d500"
      * text = "Details"
      * type = #display
  * item[+]
    * linkId = "582fcfe5-c7a4-4847-9881-815452b9eafe"
    * text = "Is there anything that you are worried about with your child's sleep?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "44e0023c-1b92-455f-a501-6006cf412fc5"
      * text = "Details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 5"
    * linkId = "335f4c10-a6e6-455b-8a7e-2962158f5183"
    * text = "What childcare/early learning centre/kindergarten does your child go to? How often?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "20ae39db-7bb5-4af4-ac59-3298d20719d8"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 5"
    * linkId = "e5b886ad-840e-4f01-af04-55c5ea7f215d"
    * text = "How often does your child miss childcare/early learning centre/kindergarten?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "61ff302c-9ef0-414c-a9f8-e2b8d119373c"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "f0e0ea74-cffc-46a5-8554-67e8fcc667f1"
    * text = "Is there anything you are worried about at school?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "520a4544-a48b-4864-8cfd-6af263756f1b"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "73a40641-04c9-4da4-813e-a8b9ae3a2ecf"
    * text = "How often does your child miss school?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "2e24a8de-c23d-409a-a5d6-96345177e105"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "47f09b28-9eea-4f8c-8d3c-7efef0504728"
    * text = "Is your child having any difficulties making friends?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "f95dd477-98a2-4534-b8ab-5a74d1b46502"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 5"
    * linkId = "9371dddc-49f4-4a8f-a9dc-a0e128f99636"
    * text = "Are there any other concerns about your child's learning and development"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "f513b077-5714-4b14-b44f-30a979509651"
      * text = "details"
      * type = #display


  * item[+]
    * linkId = "5ab80929-5901-431d-bf68-67d532f5fa58"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false