Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: Investigations
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Investigations"
Description: "Investigations sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."


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
* url = "http://www.health.gov.au/assessments/mbs/715/Investigations"
* name = "Investigations"
* title = "Aboriginal and Torres Strait Islander Health Check - Investigations"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU



* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age >= 12"
  * linkId = "918f7f32-cdaf-4742-b33a-8254eda2d8bd"
  * text = "Investigations"
  * type = #group
  * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 18"
    * linkId = "740cbc59-08e3-41e8-bc00-de22c1ad45a0"
    * text = "Full blood count, HbA1c or blood glucose level, serum lipids, Kidney function including eGFR, Liver function tests, ACR"
    * type = #text
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 30"
    * linkId = "73e1e470-5c41-4644-b279-03f57bde036d"
    * text = "Chlamydia, gonorrhoea: <=30, first void urine (male and female) and/or endocervical swab or self-administered vaginal swab (female) or throat and anal swab (men who have sex with men [MSM])"
    * type = #text
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 49"
    * linkId = "77847d34-103e-497d-a7d5-f62cbaf4f698"
    * text = "Syphilis (endemic areas, MSM, others at high risk)"
    * type = #text
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 30"
    * linkId = "4aa47bda-d740-4294-9466-52b1be2ec15b"
    * text = "Trichomoniasis (<=30, male and female, remote areas and other endemic areas, first void urine and/or endocervical swab or self-administered vaginal swab)"
    * type = #text
  * item[+]
    * linkId = "b919de86-d81c-470d-8cb2-9caa4f8d3a42"
    * text = "Blood-borne virus screening: HBV if status not known/not recorded on file, HCV if risk factors, HIV if risk factors"
    * type = #text

  * item[+]
    * linkId = "96a8d946-6078-4c85-9de8-3bf18d2c8150"
    * text = "Health priorities, actions and follow-up"
    * type = #text
    * repeats = false