Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: EarHealthAndHearing
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Ear Health And Hearing"
Description: "Ear Health And Hearing sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/EarHealthAndHearing"
* name = "EarHealthAndHearing"
* title = "Aboriginal and Torres Strait Islander Health Check - Ear Health And Hearing"
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
  * linkId = "de71bbd0-178c-4974-9c75-55d5a48c66f7"
  * text = "Ear health and hearing"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * linkId = "f3473e82-4336-4858-96de-3a61eff5abfb"
    * text = "Child listening concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "f982c374-f023-4e68-8968-1f1f5d3969ae"
      * text = "Is there anything that you are worried about with your child's listening?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "297114f4-8c3f-4916-b840-c38ea14d37b1"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "f982c374-f023-4e68-8968-1f1f5d3969ae"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * linkId = "d2a3a346-7b20-4634-beb4-f2bdc7252fe5"
    * text = "Child language concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "06c150f8-4d54-4d10-aeff-2ef7567b6812"
      * text = "Is there anything you are worried about with your child's language/talking?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "30dc1581-f6b7-49f0-be09-3902178a495f"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "06c150f8-4d54-4d10-aeff-2ef7567b6812"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * linkId = "6662bc91-fd05-4ea0-a96b-1cc124a9769a"
    * text = "Child snoring"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "b326271b-e9b1-45a0-b899-125364833702"
      * text = "Do you notice snoring/noisy breathing at night/while your child is sleeping?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "36a3967c-e79a-49a7-8022-ac9561c4e656"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "b326271b-e9b1-45a0-b899-125364833702"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12"
    * linkId = "ec7b6e93-e1f0-41f5-b2c2-43c7ddff8aed"
    * text = "Hearing concerns"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "3e53edc7-c90e-4681-a006-b7a05b91a02c"
      * text = "Is there anything that you are worried about with your hearing?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNo"
    * item[+]
      * linkId = "d72dacb8-a9b3-483b-ae24-8b062873b2cb"
      * text = "Details"
      * type = #text
      * repeats = false
      * enableWhen[+]
        * question = "3e53edc7-c90e-4681-a006-b7a05b91a02c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
  * item[+]
    * linkId = "11aa62ca-5a52-428b-952b-cfbcd2c75824"
    * text = "Last hearing test (audiology)"
    * type = #date
    * repeats = false
  * item[+]
    * linkId = "31452c47-30b2-4590-95f4-b2b75aad2fb6"
    * text = "Ear examination"
    * type = #group
    * repeats = false 
    * item[+]
      * linkId = "44c3434d-ea52-43bd-b635-34184e5f037d"
      * text = "Otoscopy"
      * type = #group
      * repeats = false
      * item[+]
        * extension[questionnaire-displayCategory].valueCodeableConcept = http://hl7.org/fhir/questionnaire-display-category#instructions
        * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%age <= 12"
        * linkId = "fe96046a-a202-4c22-ad3e-00419e717185"
        * text = "Video otoscopy procedure recommended where possible as it allows for parental education and for images to be saved for tracking over time"
        * type = #display 
      * item[+]
        * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%age <= 12"
        * linkId = "2841915f-c8d2-4edb-8bc7-39b63385a2fb"
        * text = "Otoscopy findings" //children
        * type = #group
        * repeats = false
        * item[+]
          * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
          * extension[sdc-questionnaire-openLabel].valueString = "Other, please specify"
          * linkId = "dedfc83e-7451-404d-bd24-97b1254304eb"
          * text = "Left ear"
          * type = #open-choice
          * repeats = true
          // potential for coding with additional SCTAU content
          * answerOption[+].valueString = "Clear and intact"
          * answerOption[+].valueString = "Dull and intact"
          * answerOption[+].valueString = "Discharge"
          * answerOption[+].valueString = "Retracted"
          * answerOption[+].valueString = "Unable to view eardrum"
          * answerOption[+].valueString = "Wax"
          * answerOption[+].valueString = "Grommet in canal"
          * answerOption[+].valueString = "Grommet in eardrum"
          * answerOption[+].valueString = "Perforation"
          * answerOption[+].valueString = "Red/bulging"
        * item[+]
          * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
          * extension[sdc-questionnaire-openLabel].valueString = "Other, please specify"
          * linkId = "23daa784-4476-447f-8aa2-42933b4490d9"
          * text = "Right ear"
          * type = #open-choice
          * repeats = true
          // potential for coding with additional SCTAU content
          * answerOption[+].valueString = "Clear and intact"
          * answerOption[+].valueString = "Dull and intact"
          * answerOption[+].valueString = "Discharge"
          * answerOption[+].valueString = "Retracted"
          * answerOption[+].valueString = "Unable to view eardrum"
          * answerOption[+].valueString = "Wax"
          * answerOption[+].valueString = "Grommet in canal"
          * answerOption[+].valueString = "Grommet in eardrum"
          * answerOption[+].valueString = "Perforation"
          * answerOption[+].valueString = "Red/bulging"
      * item[+]
        * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%age > 12"
        * linkId = "361b3c80-375b-423e-bb61-5732826bc2f0"
        * text = "Otoscopy findings" //adolescents +
        * type = #group
        * repeats = false
        * item[+]
          * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
          * extension[sdc-questionnaire-openLabel].valueString = "Other, please specify"
          * linkId = "079df9c5-234c-4129-8769-800dab47a59a"
          * text = "Left ear"
          * type = #open-choice
          * repeats = true
          // potential for coding with additional SCTAU content
          * answerOption[+].valueString = "Clear and intact"
          * answerOption[+].valueString = "Dull and intact"
          * answerOption[+].valueString = "Discharge"
          * answerOption[+].valueString = "Retracted"
          * answerOption[+].valueString = "Unable to view eardrum"
          * answerOption[+].valueString = "Wax"
        * item[+]
          * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
          * extension[sdc-questionnaire-openLabel].valueString = "Other, please specify"
          * linkId = "ce1fc869-a412-4aea-aa53-36e794a14519"
          * text = "Right ear"
          * type = #open-choice
          * repeats = true
          // potential for coding with additional SCTAU content
          * answerOption[+].valueString = "Clear and intact"
          * answerOption[+].valueString = "Dull and intact"
          * answerOption[+].valueString = "Discharge"
          * answerOption[+].valueString = "Retracted"
          * answerOption[+].valueString = "Unable to view eardrum"
          * answerOption[+].valueString = "Wax"  
    * item[+] // this group needs better modelling. The template is ambiguous so not properly represented. 
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "(%age > 5).intersect(%age <= 12)"
      * linkId = "972afa06-9649-43d9-b8ce-c802f7f27e39"
      * text = "Tympanometry"
      * type = #group
      * repeats = false 
      * item[+]
        * linkId = "a0d1413f-31e5-4b29-a00b-235f50f91cf7"
        * text = "Left ear"
        * type = #text
        * repeats = false
      * item[+]
        * linkId = "6423348a-943f-41e5-b4f2-ef5a34e56414"
        * text = "Right ear"
        * type = #text
        * repeats = false

  * item[+]
    * linkId = "ac87b23a-b022-4d62-9e82-1c56583bca34"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false