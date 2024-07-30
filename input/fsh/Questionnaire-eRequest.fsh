Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $display-category = http://hl7.org/fhir/questionnaire-display-category

Instance: eRequest
InstanceOf: Questionnaire
Usage: #definition
Title: "eRequest"
Description: "eRequest."


//launch context
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The patient that is to be used to pre-populate the form"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#user
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Practitioner
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The practitioner user that is to be used to pre-populate the form"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#encounter
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Encounter
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The encounter that is to be used to pre-populate the form"

// Structure Map
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "https://smartforms.csiro.au/ig/StructureMap/AUeReqFormExtract" 

//fhir query variables
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "PractitionerRole"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "PractitionerRole?practitioner={{%user.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "Condition"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "Condition?patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "AllergyIntolerance"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "AllergyIntolerance?patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "Device"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "Device?patient={{%patient.id}}"

// Metadata
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* name = "eRequest"
* title = "eRequest"
* status = #draft
* experimental = true
* subjectType[+] = #Patient
* date = "2024-03-18"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// Container
* item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.extension[=].valueCodeableConcept = $questionnaire-item-control|1.0.0#tab-container
* item.linkId = "tab-container"
* item.type = #group
* item.repeats = false

// Patient
* item.item[+].linkId = "patient"
* item.item[=].text = "Patient Details"
* item.item[=].type = #group
* item.item[=].repeats = false

* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%patient.id"
* item.item[=].item[=].linkId = "id"
* item.item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.id"
* item.item[=].item[=].type = #string
* item.item[=].item[=].repeats = false

* item.item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].extension.valueExpression.expression = "(%patient.name.where(use='official').select(((prefix | given).join(' ') | family).join(' ').where($this != '') | text) | %patient.name.select(((prefix | given).join(' ') | family).join(' ').where($this != '') | text)).first()"
* item.item[=].item[=].linkId = "patient-name"
* item.item[=].item[=].text = "Name"
* item.item[=].item[=].type = #string
* item.item[=].item[=].repeats = false

/*
// * item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
// * item.item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "name"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%patient.name"
* item.item[=].item[=].linkId = "patient-structuredname"
* item.item[=].item[=].text = "Structured name"
* item.item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%name.use"
* item.item[=].item[=].item[=].linkId = "patient-structuredname.use"
* item.item[=].item[=].item[=].text = "use"
* item.item[=].item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name.use"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%name.text"
* item.item[=].item[=].item[=].linkId = "patient-structuredname.text"
* item.item[=].item[=].item[=].text = "text"
* item.item[=].item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name.text"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%name.family"
* item.item[=].item[=].item[=].linkId = "patient-structuredname.family"
* item.item[=].item[=].item[=].text = "family"
* item.item[=].item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name.family"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%name.given"
* item.item[=].item[=].item[=].linkId = "patient-structuredname.given"
* item.item[=].item[=].item[=].text = "given"
* item.item[=].item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name.given"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%name.prefix"
* item.item[=].item[=].item[=].linkId = "patient-structuredname.prefix"
* item.item[=].item[=].item[=].text = "prefix"
* item.item[=].item[=].item[=].definition = "http://hl7.org.au/fhir/StructureDefinition/au-patient#Patient.name.prefix"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true
*/

* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%patient.gender"
* item.item[=].item[=].linkId = "patient-gender"
* item.item[=].item[=].text = "Administrative gender"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].repeats = false
* item.item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1"

* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%patient.extension.where(exists(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender' and extension.where(exists(url='type' and value.coding.code='1515311000168102')) and extension.where(url='effectivePeriod').value.end.empty())).extension.where(url='value').value.coding"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].linkId = "patient-sex"
* item.item[=].item[=].text = "Sex assigned at birth"
* item.item[=].item[=].type = #choice
* item.item[=].item[=].repeats = false
* item.item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1"

* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%patient.birthDate"
* item.item[=].item[=].linkId = "patient-dob"
* item.item[=].item[=].text = "Date of birth"
* item.item[=].item[=].type = #date
* item.item[=].item[=].repeats = false

* item.item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].extension.valueExpression.expression = "iif(today().toString().select(substring(5,2) & substring(8,2)).toInteger() > %patient.birthDate.toString().select(substring(5,2) & substring(8,2)).toInteger(), today().toString().substring(0,4).toInteger() - %patient.birthDate.toString().substring(0,4).toInteger(), today().toString().substring(0,4).toInteger() - %patient.birthDate.toString().substring(0,4).toInteger() - 1)"
* item.item[=].item[=].linkId = "patient-age"
* item.item[=].item[=].text = "Age"
* item.item[=].item[=].type = #integer
* item.item[=].item[=].repeats = false

/*
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension.valueExpression.name = "PatientAddressContext"
* item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].extension.valueExpression.expression = "%patient.address"
* item.item[=].item[=].linkId = "Patient.address"
* item.item[=].item[=].text = "Patient.address"
* item.item[=].item[=].type = #group
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = true

* item.item[=].item[=].item[+].linkId = "Patient.address.extension:noFixedAddress"
* item.item[=].item[=].item[=].text = "Patient.address.extension:noFixedAddress"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%PatientAddressContext.extension.where(url='http://hl7.org.au/fhir/StructureDefinition/no-fixed-address').value"
* item.item[=].item[=].item[=].item[=].linkId = "Patient.address.extension:noFixedAddress.valueBoolean"
* item.item[=].item[=].item[=].item[=].text = "Patient.address.extension:noFixedAddress.valueBoolean"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.use"
* item.item[=].item[=].item[=].linkId = "Patient.address.use"
* item.item[=].item[=].item[=].text = "Patient.address.use"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/address-use|4.0.1"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.type"
* item.item[=].item[=].item[=].linkId = "Patient.address.type"
* item.item[=].item[=].item[=].text = "Patient.address.type"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/address-type|4.0.1"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.text"
* item.item[=].item[=].item[=].linkId = "Patient.address.text"
* item.item[=].item[=].item[=].text = "Patient.address.text"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.line"
* item.item[=].item[=].item[=].linkId = "Patient.address.line"
* item.item[=].item[=].item[=].text = "Patient.address.line"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.city"
* item.item[=].item[=].item[=].linkId = "Patient.address.city"
* item.item[=].item[=].item[=].text = "Patient.address.city"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.state"
* item.item[=].item[=].item[=].linkId = "Patient.address.state"
* item.item[=].item[=].item[=].text = "Patient.address.state"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.postalCode"
* item.item[=].item[=].item[=].linkId = "Patient.address.postalCode"
* item.item[=].item[=].item[=].text = "Patient.address.postalCode"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression.expression = "%PatientAddressContext.country"
* item.item[=].item[=].item[=].linkId = "Patient.address.country"
* item.item[=].item[=].item[=].text = "Patient.address.country"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
*/

// Requester

* item.item[+].linkId = "radiology-requester"
* item.item[=].text = "Requester details"
* item.item[=].type = #group
* item.item[=].repeats = false

* item.item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].extension.valueExpression.expression = "%user.name.text"
* item.item[=].item[=].linkId = "radiology-requester-name"
* item.item[=].item[=].text = "Practitioner name"
* item.item[=].item[=].type = #string
* item.item[=].item[=].repeats = false

* item.item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].item[=].extension.valueExpression.expression = "%PractitionerRole.entry.resource.identifier.where(system = 'http://ns.electronichealth.net.au/id/medicare-provider-number').value"
* item.item[=].item[=].linkId = "radiology-requester-providernumber"
* item.item[=].item[=].text = "Provider number"
* item.item[=].item[=].type = #string
* item.item[=].item[=].repeats = true

* item.item[=].item[+].linkId = "radiology-requester-organisation"
* item.item[=].item[=].text = "Requester organisation"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRole.entry.resource.organization.display"
* item.item[=].item[=].item[=].linkId = "radiology-requester-organisation-name"
* item.item[=].item[=].item[=].text = "Requester organisation name"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRole.entry.resource.organization.identifier.where(system = 'http://ns.electronichealth.net.au/id/hi/hpio/1.0').value"
// which identifier system to filter?
* item.item[=].item[=].item[=].linkId = "radiology-requester-organisation-identifier"
* item.item[=].item[=].item[=].text = "Requester organisation identifier"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false



// Clinical summary
* item.item[+].linkId = "clinicalsummary"
* item.item[=].text = "Clinical summary"
* item.item[=].type = #group
* item.item[=].repeats = false

// Medical device summary
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "DeviceRepeat"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%Device.entry.resource"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#gtable
* item.item[=].item[=].linkId = "clinicalsummary-device-table"
* item.item[=].item[=].text = "Implanted medical device summary"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%DeviceRepeat.type.text"
* item.item[=].item[=].item[=].linkId = "clinicalsummary-device-table-type"
* item.item[=].item[=].item[=].text = "Type"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].required = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%DeviceRepeat.status"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].item[=].linkId = "clinicalsummary-device-table-status"
* item.item[=].item[=].item[=].text = "Status"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/device-status|4.0.1#active "Current"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/device-status|4.0.1#inactive "Past"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%DeviceRepeat.note.text"
* item.item[=].item[=].item[=].linkId = "clinicalsummary-device-table-comment"
* item.item[=].item[=].item[=].text = "Comment"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

// Problem/diagnosis summary
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "ConditionRepeat"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%Condition.entry.resource.where(category.coding.exists(code='problem-list-item'))"
* item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#gtable
* item.item[=].item[=].linkId = "clinicalsummary-problemdiagnosis-table"
* item.item[=].item[=].text = "Problem/diagnosis summary"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.code.select((coding.where(system='http://snomed.info/sct') | coding.where(system!='http://snomed.info/sct').first() | text ).first())"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "clinicalsummary-problemdiagnosis-table-name"
* item.item[=].item[=].item[=].text = "Name"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.bodySite[0].coding"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "clinicalsummary-problemdiagnosis-table-bodysite"
* item.item[=].item[=].item[=].text = "Body site"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.clinicalStatus.coding"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].item[=].linkId = "clinicalsummary-problemdiagnosis-table-status"
* item.item[=].item[=].item[=].text = "Clinical status"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/condition-clinical|4.0.1"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.note.text"
* item.item[=].item[=].item[=].linkId = "clinicalsummary-problemdiagnosis-table-comment"
* item.item[=].item[=].item[=].text = "Comment"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

// Adverse reaction risk summary
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "AllergyIntoleranceRepeat"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntolerance.entry.resource.where(clinicalStatus.coding.exists(code='active'))"
* item.item[=].item[=].linkId = "clinicalsummary-adversereaction"
* item.item[=].item[=].text = "Adverse reaction risk summary"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.code.select((coding.where(system='http://snomed.info/sct') | coding.where(system!='http://snomed.info/sct').first() | text ).first())"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "clinicalsummary-adversereaction-substance"
* item.item[=].item[=].item[=].text = "Substance"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1"

/*
* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].name = "AllergyIntoleranceRepeatReaction"
* item.item[=].item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.reaction"
*/
* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.reaction.manifestation.coding"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "clinicalsummary-adversereaction-manifestation"
* item.item[=].item[=].item[=].text = "Manifestation"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = true
// * item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1"
* item.item[=].item[=].item[=].answerValueSet = "http://snomed.info/sct/32506021000036107?fhir_vs=refset/142341000036103"

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.note.text"
* item.item[=].item[=].item[=].linkId = "clinicalsummary-adversereaction-comment"
* item.item[=].item[=].item[=].text = "Comment"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false



//Radiology
* item.item[+].linkId = "radiology"
* item.item[=].text = "Radiology"
* item.item[=].type = #group
* item.item[=].repeats = false

    // Provider
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "PractitionerRoleRepeat"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRole.entry.resource"
* item.item[=].item[=].linkId = "radiology-order"
* item.item[=].item[=].text = "Order details"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = false
* item.item[=].item[=].required = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "now().toString()"
* item.item[=].item[=].item[=].linkId = "radiology-order-number"
* item.item[=].item[=].item[=].text = "Order number"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].required = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "'PractitionerRole/' + %PractitionerRoleRepeat.id"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].item[=].linkId = "radiology-order-requesterreference"
* item.item[=].item[=].item[=].text = "Requester reference"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRoleRepeat.identifier.where(system='http://ns.electronichealth.net.au/id/medicare-provider-number').value"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].item[=].linkId = "radiology-order-requesterdisplay"
* item.item[=].item[=].item[=].text = "Requester display"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

    // Service details
* item.item[=].item[+].linkId = "radiology-service"
* item.item[=].item[=].text = "Service details"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].item[=].required = true

* item.item[=].item[=].item[+].linkId = "radiology-service-examination"
* item.item[=].item[=].item[=].text = "Examination"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].required = true

* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].item[=].linkId = "radiology-service-examination-procedure"
* item.item[=].item[=].item[=].item[=].text = "Procedure"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].answerValueSet = "http://erequestingexample.org.au/fhir/ValueSet/radiology-services-1"
/*
* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].item[=].linkId = "radiology-service-examination-bodysite"
* item.item[=].item[=].item[=].item[=].text = "Body site"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
* item.item[=].item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory"
* item.item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $display-category#instructions
* item.item[=].item[=].item[=].item[=].item[=].linkId = "radiology-service-examination-components-bodysite-instructions"
* item.item[=].item[=].item[=].item[=].item[=].text = "Include lateralised body site where appropriate"
* item.item[=].item[=].item[=].item[=].item[=].type = #display

* item.item[=].item[=].item[=].item[+].linkId = "radiology-service-examination-contrast"
* item.item[=].item[=].item[=].item[=].text = "Contrast"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory"
* item.item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $display-category#instructions
* item.item[=].item[=].item[=].item[=].item[=].linkId = "radiology-service-examination-components-contrast-instructions"
* item.item[=].item[=].item[=].item[=].item[=].text = "Leave unanswered if no specific instruction"
* item.item[=].item[=].item[=].item[=].item[=].type = #display
*/
* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].item[=].item[=].linkId = "radiology-service-examination-priority"
* item.item[=].item[=].item[=].item[=].text = "Urgency"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#stat "Emergency"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#urgent "Urgent"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#routine "Routine"

* item.item[=].item[=].item[=].item[+].linkId = "radiology-service-examination-timing"
* item.item[=].item[=].item[=].item[=].text = "Service due"
* item.item[=].item[=].item[=].item[=].type = #dateTime
* item.item[=].item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "radiology-service-clinicalindication"
* item.item[=].item[=].item[=].text = "Clinical indication"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1"

* item.item[=].item[=].item[+].linkId = "radiology-service-clinicalnotes"
* item.item[=].item[=].item[=].text = "Clinical context"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].linkId = "radiology-service-comment"
* item.item[=].item[=].item[=].text = "Comment"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].repeats = false

/*
// Radiology protocol
* item.item[=].item[+].linkId = "radiology-protocol"
* item.item[=].item[=].text = "Protocol"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = false

* item.item[=].item[=].item[+].linkId = "radiology-protocol-distributionlist"
* item.item[=].item[=].item[=].text = "Distribution list"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].linkId = "radiology-protocol-urgentcontact"
* item.item[=].item[=].item[=].text = "Urgent contact"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].linkId = "radiology-protocol-billingguidance"
* item.item[=].item[=].item[=].text = "Billing guidance"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

*/



//Pathology
* item.item[+].linkId = "pathology"
* item.item[=].text = "Pathology"
* item.item[=].type = #group
* item.item[=].repeats = false
    // Provider
* item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item.item[=].item[=].extension[=].valueExpression[+].name = "PractitionerRoleRepeat"
* item.item[=].item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item.item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRole.entry.resource"
* item.item[=].item[=].linkId = "pathology-order"
* item.item[=].item[=].text = "Order details"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = false
* item.item[=].item[=].required = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "now().toString()"
* item.item[=].item[=].item[=].linkId = "pathology-order-number"
* item.item[=].item[=].item[=].text = "Order number"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].required = true

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "'PractitionerRole/' + %PractitionerRoleRepeat.id"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].item[=].linkId = "pathology-order-requesterreference"
* item.item[=].item[=].item[=].text = "Requester reference"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item.item[=].item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item.item[=].item[=].item[=].extension[=].valueExpression[=].expression = "%PractitionerRoleRepeat.identifier.where(system='http://ns.electronichealth.net.au/id/medicare-provider-number').value"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = true
* item.item[=].item[=].item[=].linkId = "pathology-order-requesterdisplay"
* item.item[=].item[=].item[=].text = "Requester display"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false

    // Service details
* item.item[=].item[+].linkId = "pathology-service"
* item.item[=].item[=].text = "Service details"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].item[=].required = true

* item.item[=].item[=].item[+].linkId = "pathology-service-test"
* item.item[=].item[=].item[=].text = "Test"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].required = true

* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].item[=].linkId = "pathology-service-test-testname"
* item.item[=].item[=].item[=].item[=].text = "Test name"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3"
/*
* item.item[=].item[=].item[=].item[+].linkId = "pathology-service-test-fasting"
* item.item[=].item[=].item[=].item[=].text = "Fasting"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory"
* item.item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $display-category#instructions
* item.item[=].item[=].item[=].item[=].item[=].linkId = "pathology-service-test-fasting-instructions"
* item.item[=].item[=].item[=].item[=].item[=].text = "Leave unanswered if no specific instruction"
* item.item[=].item[=].item[=].item[=].item[=].type = #display
*/
* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].item[=].item[=].linkId = "pathology-service-examination-priority"
* item.item[=].item[=].item[=].item[=].text = "Urgency"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#stat "Emergency"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#urgent "Urgent"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority|4.0.1#routine "Routine"

* item.item[=].item[=].item[=].item[+].linkId = "pathology-service-examination-timing"
* item.item[=].item[=].item[=].item[=].text = "Service due"
* item.item[=].item[=].item[=].item[=].type = #dateTime
* item.item[=].item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item.item[=].item[=].item[=].linkId = "pathology-service-clinicalindication"
* item.item[=].item[=].item[=].text = "Clinical indication"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1"

* item.item[=].item[=].item[+].linkId = "pathology-service-clinicalnotes"
* item.item[=].item[=].item[=].text = "Clinical context"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].repeats = false

* item.item[=].item[=].item[+].linkId = "pathology-service-comment"
* item.item[=].item[=].item[=].text = "Comment"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].repeats = false

/*
// Pathology protocol
* item.item[=].item[+].linkId = "pathology-protocol"
* item.item[=].item[=].text = "Protocol"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = false

* item.item[=].item[=].item[+].linkId = "pathology-protocol-distributionlist"
* item.item[=].item[=].item[=].text = "Distribution list"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].linkId = "pathology-protocol-urgentcontact"
* item.item[=].item[=].item[=].text = "Urgent contact"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = true

* item.item[=].item[=].item[+].linkId = "pathology-protocol-billingguidance"
* item.item[=].item[=].item[=].text = "Billing guidance"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].repeats = false
*/
/*
* item.item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item.item[=].item[=].item[=].item[=].linkId = "pathology-service-testdetails-testcategory"
* item.item[=].item[=].item[=].item[=].text = "Category"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].repeats = false 
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1"
*/



