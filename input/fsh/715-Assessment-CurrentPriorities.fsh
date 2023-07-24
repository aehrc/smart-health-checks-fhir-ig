Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: CurrentPriorities
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Current Priorities"
Description: "Current Priorities sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/CurrentPriorities"
* name = "CurrentPriorities"
* title = "Aboriginal and Torres Strait Islander Health Check - Current Priorities"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[sdc-questionnaire-shortText].valueString = "Current priorities"   
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age.exists()" 
  * linkId = "b3a3eee2-f340-452e-9d05-d1f54f677b81"
  * text = "Current health/patient priorities"
  * type = #group
  * repeats = false 
  * item[+]
    * linkId = "dcf182c0-a2bf-46ac-a19b-72e4d24ef24d"
    * text = "What are the important things for you in this health check today?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "3ac0c629-9acc-48af-bafe-6b05dfd06281"
      * text = "details"
      * type = #display      
  * item[+]  
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12" 
    * linkId = "a0c06f8d-3210-480b-9031-7b5eb5bf1dda"
    * text = "Is there anything you are worried about?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "43fb3316-64a4-41dc-b12c-2f3fcee3eb84"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12" 
    * linkId = "96f3396e-f5f8-4347-8692-9abdecb97768"
    * text = "Is there anything that you are worried about with your child's health or wellbeing?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "75b39c42-8a15-4fdf-9129-936072336456"
      * text = "details"
      * type = #display

  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 5" 
    * linkId = "17651f83-8476-499c-a5ef-dd4e1a6c9f13"
    * text = "Child Health Book"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "2655e0e1-fe4b-431e-87af-30d4ff1aca76"
      * text = "Does your child have a Child Health Book?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "a30d0101-06ce-4481-b142-9fa2c091fe4f"
      * text = "Is it up to date?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
      * enableWhen[+]
        * question = "2655e0e1-fe4b-431e-87af-30d4ff1aca76"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
    


  * item[+]    
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12" 
    * linkId = "35b3f6d8-2907-4134-ae55-1e321b908f70"
    * text = "Do you have any specific health goals? Is there anything in particular about your health and wellbeing that you would like to improve?"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "bb176839-5cc8-4fb5-a919-0904968418be"
      * text = "details"
      * type = #display
        
  * item[+]
    * linkId = "7cd424e5-7672-4e99-8a99-30b1fb3043fd"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false