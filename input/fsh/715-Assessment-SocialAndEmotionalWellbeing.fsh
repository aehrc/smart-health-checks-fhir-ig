Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: SocialAndEmotionalWellbeing
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Social And Emotional Wellbeing"
Description: "Social And Emotional Wellbeing sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/SocialAndEmotionalWellbeing"
* name = "SocialAndEmotionalWellbeing"
* title = "Aboriginal and Torres Strait Islander Health Check - Social And Emotional Wellbeing"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age > 12"
  * linkId = "0a3c9c93-5836-4a5b-93e5-d7de559e053a"
  * text = "Social and emotional wellbeing"
  * type = #group
  * repeats = false
  * item[+]
    * linkId = "c736d065-88f6-49c3-a5a4-91a2bd7a54bb"
    * text = "Stressful life events"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "e7297156-cfed-4437-b877-c345f744168b"
      * text = "Have there been any particular stressful life events that are impacting on you/your health lately?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "4c3427ce-062f-4f62-b566-2decb506a9cb"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "e7297156-cfed-4437-b877-c345f744168b"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 24"
    * linkId = "7d783b71-7303-441b-822a-14e11a740038"
    * text = "Social and emotional wellbeing assessment: consider tools such as Aboriginal and Torres Strait Islander Youth Social Emotional Wellbeing assessment question guide or HEEADSSS"
    * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 24"
    * linkId = "9e991b80-7080-40d5-9ad9-447dc47e3a68"
    * text = "Consider conversation about social connection, which could include questions about sports/hobbies/clubs/other activities"
    * type = #text
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "2740f866-2cd7-41a1-912c-ba29cbe7a582"
      * text = "Details"
      * type = #display

  * item[+]
    * linkId = "b5a00aad-2a8b-4ac3-87b2-4a5920ca22ee"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false