Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: ChronicDiseaseAgeing
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Chronic Disease Ageing"
Description: "Chronic Disease Ageing sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."


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
* url = "http://www.health.gov.au/assessments/mbs/715/ChronicDiseaseAgeing"
* name = "ChronicDiseaseAgeing"
* title = "Aboriginal and Torres Strait Islander Health Check - Chronic Disease Ageing"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 50"
  * linkId = "c5da020c-c4f3-437c-b658-ea7e7667514d"
  * text = "Chronic disease associated with ageing"
  * type = #group
  * repeats = false
  * item[+]
    * extension[sdc-questionnaire-shortText].valueString = "Assessment of chronic disease associated with ageing"
    * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div>For older people with chronic disease and/or conditions associated with ageing, consider assessing:</div>
    <ul>
      <li>Osteoporosis risk</li>
      <li>Falls risk</li>
      <li>Balance, coordination and mobility</li>
      <li>Pain</li>
      <li>Nutrition</li>
      <li>Regularity of chronic disease management and review</li>
    </ul>
    </div>"
    * linkId = "12e244c0-2887-4230-8792-9521d4f1ab33"
    * text = "For older people with chronic disease and/or conditions associated with ageing, consider assessing: Osteoporosis risk; Falls risk; Balance, coordination and mobility; Pain; Nutrition; Regularity of chronic disease management and review"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "d6337ce3-ec9a-44e2-a69a-2355025b3e8c"
      * text = "Details"
      * type = #display

  * item[+]
    * linkId = "7292070b-8944-4a40-bcf6-9aaf1721e986"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false