Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: AboutTheHealthCheck
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - About The Health Check"
Description: "About The Health Check sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/AboutTheHealthCheck"
* name = "AboutTheHealthCheck"
* title = "Aboriginal and Torres Strait Islander Health Check - About The Health Check"
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
  * linkId = "2e82032a-dc28-45f2-916e-862303d39fe5"
  * text = "About the health check"
  * type = #group
  * repeats = false
  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "3da318f1-a5dd-4c8f-b258-99d83872a4f2"
    * text = "Eligible for health check"
    * type = #choice
    * repeats = false
    * answerValueSet = "#YesNoNA"
    * item[+]
      * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory].valueCodeableConcept = http://hl7.org/fhir/questionnaire-display-category#instructions
      * linkId = "04f00512-888b-424e-ba76-9bd6fd8da682"
      * text = "not claimed 715 or 228 in past nine months"
      * type = #display
  * item[+]
    * linkId = "5960c096-d5f7-4745-bd74-44ff2775bde9"
    * text = "Date of last health check"
    * type = #date
    * repeats = false
  /*
  * item[+]
    * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = 
      "<div xmlns=\"http://www.w3.org/1999/xhtml\">
        <p style=\"color:#006600;\"><strong>Complete tab</strong></p>
	      </div>"
    * linkId = "370f0dc8-e97a-4e6a-86b4-982a2650c63b"
    * text = "Section complete"
    * type = #boolean
    * repeats = false
  */
    





