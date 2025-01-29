Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $display-category = http://hl7.org/fhir/questionnaire-display-category

Instance: ChronicConditionManagementPlan
InstanceOf: Questionnaire
Usage: #definition
Title: "Chronic Condition Management Plan"
Description: "Chronic Condition Management Plan."


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

//fhir query variables
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "Condition"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "Condition?patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "AllergyIntolerance"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "AllergyIntolerance?clinical-status=active&patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression[+].name = "Medication"
* extension[=].valueExpression[=].language = #application/x-fhir-query
* extension[=].valueExpression[=].expression = "MedicationStatement?status=active&patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ObsWaistCircumference"
* extension[=].valueExpression.language = #application/x-fhir-query
* extension[=].valueExpression.expression = "Observation?code=8280-0&_count=1&_sort=-date&patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ObsHeartRate"
* extension[=].valueExpression.language = #application/x-fhir-query
* extension[=].valueExpression.expression = "Observation?code=8867-4&_count=1&_sort=-date&patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ObsBodyHeight"
* extension[=].valueExpression.language = #application/x-fhir-query
* extension[=].valueExpression.expression = "Observation?code=8302-2&_count=1&_sort=-date&patient={{%patient.id}}"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "ObsBodyWeight"
* extension[=].valueExpression.language = #application/x-fhir-query
* extension[=].valueExpression.expression = "Observation?code=29463-7&_count=1&_sort=-date&patient={{%patient.id}}"



// Metadata
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* name = "ChronicConditionManagementPlan"
* title = "Chronic Condition Management Plan"
* status = #draft
* experimental = true
* subjectType[+] = #Patient
* date = "2025-01-29"
* jurisdiction.coding = urn:iso:std:iso:3166#AU



// Problem/diagnosis summary
* item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item[=].extension[=].valueExpression[+].name = "ConditionRepeat"
* item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item[=].extension[=].valueExpression[=].expression = "%Condition.entry.resource.where(category.coding.exists(code='problem-list-item'))"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-closed
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#gtable
* item[=].linkId = "problemdiagnosis-table"
* item[=].text = "Problem/diagnosis summary"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.code.select((coding.where(system='http://snomed.info/sct') | coding.where(system!='http://snomed.info/sct').first() | text ).first())"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "problemdiagnosis-table-item"
* item[=].item[=].text = "Item"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.bodySite[0].coding"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "problemdiagnosis-table-bodysite"
* item[=].item[=].text = "Body site"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.clinicalStatus.coding"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down
* item[=].item[=].linkId = "problemdiagnosis-table-status"
* item[=].item[=].text = "Clinical status"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/condition-clinical|4.0.1"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.onset.ofType(dateTime)"
* item[=].item[=].linkId = "problemdiagnosis-table-onset"
* item[=].item[=].text = "Onset date"
* item[=].item[=].type = #date
* item[=].item[=].repeats = false

// Medication summary
* item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item[=].extension[=].valueExpression[+].name = "MedicationRepeat"
* item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item[=].extension[=].valueExpression[=].expression = "%Medication.entry.resource"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-closed
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#gtable
* item[=].linkId = "medicationsummary-table"
* item[=].text = "Medication summary (active)"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%MedicationRepeat.medication.coding"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "medicationsummary-table-medication"
* item[=].item[=].text = "Item"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%MedicationRepeat.reasonCode"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "medicationsummary-table-clinicalindication"
* item[=].item[=].text = "Clinical indication"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1"


// Adverse reaction risk summary
* item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item[=].extension[=].valueExpression[+].name = "AllergyIntoleranceRepeat"
* item[=].extension[=].valueExpression[=].language = #text/fhirpath
* item[=].extension[=].valueExpression[=].expression = "%AllergyIntolerance.entry.resource.where(clinicalStatus.coding.exists(code='active'))"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-closed
* item[=].linkId = "adversereaction"
* item[=].text = "Adverse reaction risk summary (active)"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.code.select((coding.where(system='http://snomed.info/sct') | coding.where(system!='http://snomed.info/sct').first() | text ).first())"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "adversereaction-substance"
* item[=].item[=].text = "Substance"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.reaction.manifestation.coding"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "adversereaction-manifestation"
* item[=].item[=].text = "Manifestation"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = true
//=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1"
* item[=].item[=].answerValueSet = "http://snomed.info/sct/32506021000036107?fhir_vs=refset/142341000036103"

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%AllergyIntoleranceRepeat.note.text"
* item[=].item[=].linkId = "adversereaction-comment"
* item[=].item[=].text = "Comment"
* item[=].item[=].type = #string
* item[=].item[=].repeats = false

// Observations
// variables start
* item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "weight"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "item.where(linkId='observations-multipletable').item.where(linkId='observations-multipletable-weight').item.where(linkId='observations-multipletable-weight-value').answer.value"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "height"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "item.where(linkId='observations-multipletable').item.where(linkId='observations-multipletable-height').item.where(linkId='observations-multipletable-height-value').answer.value"
// variables stop
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-closed
* item[=].linkId = "observations"
* item[=].text = "Observations (latest)"
* item[=].type = #group
* item[=].repeats = false
// Multiple observations table
* item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#grid
* item[=].item[=].linkId = "observations-multipletable"
* item[=].item[=].type = #group
* item[=].item[=].repeats = false
* item[=].item[=].item[+].linkId = "observations-multipletable-height"
* item[=].item[=].item[=].text = "Height"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "%ObsBodyHeight.entry.resource.value.value"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $UCUM#cm "cm"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-height-value"
* item[=].item[=].item[=].item[=].text = "Value"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%ObsBodyHeight.entry.resource.effective"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-height-date"
* item[=].item[=].item[=].item[=].text = "Date performed"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].linkId = "observations-multipletable-weight"
* item[=].item[=].item[=].text = "Weight"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "%ObsBodyWeight.entry.resource.value.value"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $UCUM#kg "kg"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-weight-value"
* item[=].item[=].item[=].item[=].text = "Value"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%ObsBodyWeight.entry.resource.effective"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-weight-date"
* item[=].item[=].item[=].item[=].text = "Date performed"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].linkId = "observations-multipletable-bmi"
* item[=].item[=].item[=].text = "BMI"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item.extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].item[=].item.extension[=].valueExpression.description = "BMI calculation"
* item[=].item[=].item[=].item.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item.extension[=].valueExpression.expression = "(%weight/((%height/100).power(2))).round(1)"
* item[=].item[=].item[=].item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].item.extension[=].valueCoding = $UCUM#kg/m2 "kg/m2"
* item[=].item[=].item[=].item.linkId = "observations-multipletable-bmi-value"
* item[=].item[=].item[=].item.text = "Value"
* item[=].item[=].item[=].item.type = #decimal
* item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item.readOnly = true
* item[=].item[=].item[+].linkId = "observations-multipletable-waist"
* item[=].item[=].item[=].text = "Waist circumference"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "%ObsWaistCircumference.entry.resource.value.value"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $UCUM#cm "cm"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-waist-value"
* item[=].item[=].item[=].item[=].text = "Value"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%ObsWaistCircumference.entry.resource.effective"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-waist-date"
* item[=].item[=].item[=].item[=].text = "Date performed"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].linkId = "observations-multipletable-heartrate"
* item[=].item[=].item[=].text = "Heart rate"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "%ObsHeartRate.entry.resource.value.value"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $UCUM#/min "/min"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-heartrate-value"
* item[=].item[=].item[=].item[=].text = "Value"
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%ObsHeartRate.entry.resource.effective"
* item[=].item[=].item[=].item[=].linkId = "observations-multipletable-heartrate-date"
* item[=].item[=].item[=].item[=].text = "Date performed"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].repeats = false
//Blood pressure table
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#grid
* item[=].item[=].linkId = "observations-bptable"
* item[=].item[=].type = #group
* item[=].item[=].repeats = false
* item[=].item[=].item.linkId = "observations-bptable-bloodpressure"
* item[=].item[=].item.text = "Blood pressure"
* item[=].item[=].item.type = #group
* item[=].item[=].item.repeats = false
* item[=].item[=].item.item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item.item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item.item[=].extension[=].valueExpression.expression = "%ObsBloodPressure.entry.resource.component.where(code.coding.exists(code='8480-6')).value.value"
* item[=].item[=].item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item.item[=].extension[=].valueCoding = $UCUM#mm[Hg] "mm Hg"
* item[=].item[=].item.item[=].linkId = "observations-bptable-bloodpressure-systolic"
* item[=].item[=].item.item[=].text = "Systolic"
* item[=].item[=].item.item[=].type = #integer
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item.item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item.item[=].extension[=].valueExpression.expression = "%ObsBloodPressure.entry.resource.component.where(code.coding.exists(code='8462-4')).value.value"
* item[=].item[=].item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item.item[=].extension[=].valueCoding = $UCUM#mm[Hg] "mm Hg"
* item[=].item[=].item.item[=].linkId = "observations-bptable-bloodpressure-diastolic"
* item[=].item[=].item.item[=].text = "Diastolic"
* item[=].item[=].item.item[=].type = #integer
* item[=].item[=].item.item[=].repeats = false
* item[=].item[=].item.item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.item[=].extension.valueExpression.expression = "%ObsBloodPressure.entry.resource.effective"
* item[=].item[=].item.item[=].linkId = "observations-bptable-bloodpressure-date"
* item[=].item[=].item.item[=].text = "Date performed"
* item[=].item[=].item.item[=].type = #date
* item[=].item[=].item.item[=].repeats = false

//Management plan text
* item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-open
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#gtable
* item[=].linkId = "plantext-table"
* item[=].text = "Management plan (text table)"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "plantext-table-problem"
* item[=].item[=].text = "Problem, needs or condition"
* item[=].item[=].type = #text
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "plantext-table-problem"
* item[=].item[=].text = "Goals - changes to be achieved"
* item[=].item[=].type = #text
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "plantext-table-problem"
* item[=].item[=].text = "Required treatments and services including patient actions"
* item[=].item[=].type = #text
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "plantext-table-problem"
* item[=].item[=].text = "Arrangements for treatments/services"
* item[=].item[=].type = #text
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "plantext-table-problem"
* item[=].item[=].text = "Provider(s)"
* item[=].item[=].type = #text
* item[=].item[=].repeats = false

//Management plan structured
* item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].extension[=].valueCode = #default-open
* item[=].linkId = "plan-structured"
* item[=].text = "Management plan (structured)"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension[=].valueExpression[+].language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression[=].expression = "%ConditionRepeat.code.select((coding.where(system='http://snomed.info/sct') | coding.where(system!='http://snomed.info/sct').first() | text ).first())"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
* item[=].item[=].linkId = "plan-structured-problem"
* item[=].item[=].text = "Problem, needs or condition"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1"

* item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].item[=].item[=].extension[=].valueCode = #default-open
* item[=].item[=].item[=].linkId = "plan-structured-problem-group"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[+].linkId = "plan-structured-problem-group-goals"
* item[=].item[=].item[=].item[=].text = "Goals - changes to be achieved"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].repeats = false

* item[=].item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCode = #default-open
* item[=].item[=].item[=].item[=].item[=].linkId = "plan-structured-problem-group-goals-group"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[=].item[+].linkId = "plan-structured-problem-group-goals-group-treatments"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Required treatments and services including patient actions"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false

* item[=].item[=].item[=].item[=].item[=].item[=].item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].extension[=].valueCode = #default-open
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].linkId = "plan-structured-problem-group-goals-group-treatments-group"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].repeats = false

* item[=].item[=].item[=].item[=].item[=].item[=].item[=].item[+].linkId = "plan-structured-problem-group-goals-group-treatments-group-providers"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].item[=].text = "Provider(s)"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].item[=].type = #open-choice
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].item[=].answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1"
