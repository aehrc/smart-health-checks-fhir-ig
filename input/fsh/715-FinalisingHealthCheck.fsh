Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: FinalisingHealthCheck
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Finalising the Health Check"
Description: "Finalising the Health Check sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."


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

* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* url = "http://www.health.gov.au/assessments/mbs/715/FinalisingHealthCheck"
* name = "FinalisingHealthCheck"
* title = "Aboriginal and Torres Strait Islander Health Check - Finalising the Health Check"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU


* item[+]
  * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#tab
  * linkId = "16971bd2-5494-483d-9713-eda182c47f02"
  * text = "Finalising the health check"
  * type = #group
  * repeats = false
  * enableWhen[+]
    * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
    * operator = #exists
    * answerBoolean = true
  * item[+]
    * linkId = "30532ad8-3465-4bdd-97ed-ec5664f9d733"
    * text = "Patient priorities and goals: What does the parent/carer say are the important things that have come out of this health check?"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 5
  * item[+]
    * linkId = "6aa0a113-4d33-4f6b-9899-fa249674075a"
    * text = "Patient priorities and goals: What does the parent/carer and child say are the important things that have come out of this health check?"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 12
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 5
    * enableBehavior = #all
  * item[+]
    * linkId = "71c19d58-a8ae-43ba-8b96-463c108c75dc"
    * text = "Patient priorities and goals: What does the patient say are the important things that have come out of this health check?"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
  * item[+] //infant
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * extension[sdc-questionnaire-openLabel].valueString = "Other"
    * linkId = "d0e58402-a08a-49ca-b2ca-9f4bbdb89da0"
    * text = "Brief intervention: advice and information provided during health check"
    * type = #open-choice
    * repeats = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 5
    // Look to replace with answerValueSet
    * answerOption[+].valueString = "Sugary drinks"
    * answerOption[+].valueString = "Screen use"
    * answerOption[+].valueString = "Healthy eating, including breastfeeding"
    * answerOption[+].valueString = "Environmental exposure to harmful elements eg tobacco smoke"
    * answerOption[+].valueString = "Physical activity and exercise"
    * answerOption[+].valueString = "Sun protection"
    * answerOption[+].valueString = "Parenting advice"
    * answerOption[+].valueString = "Safe sleeping practices"   
    * answerOption[+].valueString = "Developmental milestones - including language and hearing"
  * item[+] //Primary school
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * extension[sdc-questionnaire-openLabel].valueString = "Other"
    * linkId = "0f70dec3-c1f2-4b36-b1f6-bd7f5743d5f8"
    * text = "Brief intervention: advice and information provided during health check"
    * type = #open-choice
    * repeats = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 12
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 5
    * enableBehavior = #all
    // Look to replace with answerValueSet
    * answerOption[+].valueString = "Healthy eating"
    * answerOption[+].valueString = "Screen use"
    * answerOption[+].valueString = "Sun protection"
    * answerOption[+].valueString = "Environmental exposure to harmful elements (e.g. tobacco smoke)"
    * answerOption[+].valueString = "Sugary drinks"    
    * answerOption[+].valueString = "Physical activity and exercise"    
    * answerOption[+].valueString = "Parenting advice"
  * item[+] //Adolescent 
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * extension[sdc-questionnaire-openLabel].valueString = "Other"
    * linkId = "eaed9770-95f4-4c6a-b06c-d573427a2616"
    * text = "Brief intervention: advice and information provided during health check"
    * type = #open-choice
    * repeats = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 24
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
    * enableBehavior = #all
    // Look to replace with answerValueSet
    * answerOption[+].valueString = "Healthy eating"
    * answerOption[+].valueString = "Screen use"
    * answerOption[+].valueString = "Physical activity and exercise"
    * answerOption[+].valueString = "Mental health and wellbeing"
    * answerOption[+].valueString = "Safety/risky behaviours"
    * answerOption[+].valueString = "Smoking cessation"
    * answerOption[+].valueString = "Substance use/harm minimisation"
    * answerOption[+].valueString = "Safe sex/contraception"
    * answerOption[+].valueString = "Care of teeth and gums"
  * item[+] //Adult 
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * extension[sdc-questionnaire-openLabel].valueString = "Other"
    * linkId = "25f27e83-fcf0-49c8-86c1-e285e201a043"
    * text = "Brief intervention: advice and information provided during health check"
    * type = #open-choice
    * repeats = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 49
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 24
    * enableBehavior = #all
    // Look to replace with answerValueSet
    * answerOption[+].valueString = "Healthy eating"
    * answerOption[+].valueString = "Screen use"
    * answerOption[+].valueString = "Physical activity and exercise"
    * answerOption[+].valueString = "Mental health and wellbeing"
    * answerOption[+].valueString = "Carer support"
    * answerOption[+].valueString = "Safety/risky behaviours"
    * answerOption[+].valueString = "Smoking cessation"
    * answerOption[+].valueString = "Substance use/harm minimisation"
    * answerOption[+].valueString = "Safe sex/contraception"
    * answerOption[+].valueString = "Oral and dental health"
  * item[+] //Older people 
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * extension[sdc-questionnaire-openLabel].valueString = "Other"
    * linkId = "2657da9c-a27e-4939-af7a-08a19b9ab6f7"
    * text = "Brief intervention: advice and information provided during health check"
    * type = #open-choice
    * repeats = true
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 49
    // Look to replace with answerValueSet
    * answerOption[+].valueString = "Healthy eating"
    * answerOption[+].valueString = "Physical activity and exercise"
    * answerOption[+].valueString = "Mental health and wellbeing"
    * answerOption[+].valueString = "Carer support"
    * answerOption[+].valueString = "Smoking cessation"
    * answerOption[+].valueString = "Substance use/harm minimisation"
    * answerOption[+].valueString = "Social support and services"
    * answerOption[+].valueString = "Oral and dental health"
  * item[+]
    * linkId = "afbadad6-bef9-4fad-b5f4-111f666ccf11"
    * text = "Care provided as part of the health check (eg immunisations, medication review, investigations requested)"
    * type = #text
  * item[+]
    * linkId = "4b3015f6-5b0a-4dfa-9791-994e4059f921"
    * text = "Identified needs and plan (including new diagnoses)"
    * type = #text
  * item[+]
    * linkId = "5760a1f9-d725-4b9e-b74d-50800615a689"
    * text = "Follow-up"
    * type = #group
    * repeats = false
    // include these display sub-items using xhtml rendering
    * item[+]
      * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory].valueCodeableConcept = http://hl7.org/fhir/questionnaire-display-category#instructions
      * linkId = "b4110a63-8547-4aa2-84c6-c1f64f0d24da"
      * text = "Consider what follow-up appointments can be made at the time of the health check."
      * type = #display
    * item[+]
      * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory].valueCodeableConcept = http://hl7.org/fhir/questionnaire-display-category#instructions
      * linkId = "c47cfd7e-0f15-4dd9-bd53-bb62851b677c"
      * text = "Reminder: MBS follow up items for clients at risk of or with chronic disease are available to support follow-up of health checks"
      * type = #display
    * item[+]
      * linkId = "1be25c55-2a2d-4b94-b826-bd17d9e35e92"
      * text = "Referrals and appointments"
      * type = #group
      * repeats = true
      * item[+] //Infant
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * extension[sdc-questionnaire-openLabel].valueString = "Other"
        * linkId = "4044d0b4-94b2-4a89-b826-a14614298511"
        * text = "Who"
        * type = #open-choice
        * repeats = false
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #<=
          * answerInteger = 5
        // Look to replace with answerValueSet
        * answerOption[+].valueString = "GP follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Worker follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Practitioner follow-up"
        * answerOption[+].valueString = "Practice nurse follow-up"
        * answerOption[+].valueString = "Child health nurse"
        * answerOption[+].valueString = "Dentist"
        * answerOption[+].valueString = "Paediatrician"
        * answerOption[+].valueString = "Audiology"
        * answerOption[+].valueString = "Speech pathology"
        * answerOption[+].valueString = "Mental health"
        * answerOption[+].valueString = "Early intervention (development) services"
        * answerOption[+].valueString = "Parenting programs/support services"
      * item[+] //Primary School
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * extension[sdc-questionnaire-openLabel].valueString = "Other"
        * linkId = "f97f211a-ef2a-49a3-aef7-c4e9cd08aa2a"
        * text = "Who"
        * type = #open-choice
        * repeats = false
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #<=
          * answerInteger = 12
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #>
          * answerInteger = 5
        * enableBehavior = #all
        // Look to replace with answerValueSet
        * answerOption[+].valueString = "GP follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Worker follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Practitioner follow-up"
        * answerOption[+].valueString = "Practice nurse follow-up"
        * answerOption[+].valueString = "Dentist"
        * answerOption[+].valueString = "Paediatrician"
        * answerOption[+].valueString = "Audiology"
        * answerOption[+].valueString = "Speech pathology"
        * answerOption[+].valueString = "Mental health"
        * answerOption[+].valueString = "Parenting programs/support services"
      * item[+] //Adolescent
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * extension[sdc-questionnaire-openLabel].valueString = "Other"
        * linkId = "07cfe077-ba93-4f93-b2a5-027023faa33b"
        * text = "Who"
        * type = #open-choice
        * repeats = false
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #<=
          * answerInteger = 24
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #>
          * answerInteger = 12
        * enableBehavior = #all
        // Look to replace with answerValueSet
        * answerOption[+].valueString = "GP follow-up"
        * answerOption[+].valueString = "GP review of results of investigations"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Worker follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Practitioner follow-up"
        * answerOption[+].valueString = "Practice nurse follow-up"
        * answerOption[+].valueString = "Dentist"
        * answerOption[+].valueString = "Paediatrician"
        * answerOption[+].valueString = "Audiology"
        * answerOption[+].valueString = "Speech pathology"
        * answerOption[+].valueString = "Parenting programs/support services"
        * answerOption[+].valueString = "Social and emotional wellbeing/mental health"
      * item[+] //Adult
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * extension[sdc-questionnaire-openLabel].valueString = "Other"
        * linkId = "a525c370-d8c3-4764-ab3a-bf62081725e0"
        * text = "Who"
        * type = #open-choice
        * repeats = false
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #<=
          * answerInteger = 49
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #>
          * answerInteger = 24
        * enableBehavior = #all
        // Look to replace with answerValueSet
        * answerOption[+].valueString = "GP follow-up"
        * answerOption[+].valueString = "GP review of results of investigations"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Worker follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Practitioner follow-up"
        * answerOption[+].valueString = "Practice nurse follow-up"
        * answerOption[+].valueString = "Dentist"
        * answerOption[+].valueString = "Medication review"
        * answerOption[+].valueString = "Smoking cessation"
        * answerOption[+].valueString = "Audiology"
        * answerOption[+].valueString = "Dietician"
        * answerOption[+].valueString = "Physiotherapist or exercise program"
        * answerOption[+].valueString = "Parenting programs/support services"
        * answerOption[+].valueString = "Social and emotional wellbeing/mental health"
      * item[+] //Older people
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * extension[sdc-questionnaire-openLabel].valueString = "Other"
        * linkId = "d68d9693-48d3-4663-9dbb-dd3a7aec5278"
        * text = "Who"
        * type = #open-choice
        * repeats = false
        * enableWhen[+]
          * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
          * operator = #>
          * answerInteger = 49
        // Look to replace with answerValueSet
        * answerOption[+].valueString = "GP follow-up"
        * answerOption[+].valueString = "GP review of results of investigations"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Worker follow-up"
        * answerOption[+].valueString = "Aboriginal and/or Torres Strait Islander Health Practitioner follow-up"
        * answerOption[+].valueString = "Practice nurse follow-up"
        * answerOption[+].valueString = "Dentist"
        * answerOption[+].valueString = "Medication review"
        * answerOption[+].valueString = "Geriatrician"
        * answerOption[+].valueString = "Smoking cessation"
        * answerOption[+].valueString = "Audiologist"
        * answerOption[+].valueString = "Dietician"
        * answerOption[+].valueString = "Physiotherapist or exercise program"
        * answerOption[+].valueString = "Optometrist"
        * answerOption[+].valueString = "Podiatrist"
        * answerOption[+].valueString = "Social and emotional wellbeing/mental health"
        * answerOption[+].valueString = "Social support and services"
      * item[+]
        * linkId = "0ef84b09-ca34-44c2-96d1-fcbbea0bae66"
        * text = "When"
        * type = #date
        * enableWhen[+]
          * question = "4044d0b4-94b2-4a89-b826-a14614298511"
          * operator = #exists
          * answerBoolean = true
        * enableWhen[+]
          * question = "f97f211a-ef2a-49a3-aef7-c4e9cd08aa2a"
          * operator = #exists
          * answerBoolean = true
        * enableWhen[+]
          * question = "07cfe077-ba93-4f93-b2a5-027023faa33b"
          * operator = #exists
          * answerBoolean = true
        * enableWhen[+]
          * question = "a525c370-d8c3-4764-ab3a-bf62081725e0"
          * operator = #exists
          * answerBoolean = true
        * enableWhen[+]
          * question = "d68d9693-48d3-4663-9dbb-dd3a7aec5278"
          * operator = #exists
          * answerBoolean = true
        * enableBehavior = #any
        * repeats = false
  * item[+]
    * linkId = "a400fe69-c99f-47ed-bee1-083c3e4be467"
    * text = "Recalls entered (eg clinical review, investigations, influenza vaccination, asthma plan/cycle of care, diabetes cycle of care, care plan review, cervical screening, investigations)"
    * type = #group
    * repeats = true
    * item[+] //confirm this as a requirement
      * extension[http://hl7.org/fhir/StructureDefinition/questionnaire-hidden].valueBoolean = true
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.id"
      * linkId = "40e3933d-77bb-40f3-8609-0c38ebb4421e"
      * definition = "http://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFollowUp#CarePlan.subject.reference"
      * text = "recall-subject"
      * type = #string
    * item[+]
      * linkId = "fece6a3c-f8f1-4592-a166-5ea5a3c60c8e"
      * definition = "http://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFollowUp#CarePlan.title"
      * text = "Recall"
      * type = #text
      * repeats = false
  * item[+]
    * linkId = "5a0c98f8-5349-4045-9ba0-27a4f35630b9"
    * text = "Parent/carer actions"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 5
  * item[+]
    * linkId = "cde03bf0-182a-4998-a37e-7b3f22786617"
    * text = "Parent/patient actions"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #<=
      * answerInteger = 12
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 5
    * enableBehavior = #all
  * item[+]
    * linkId = "51ff0c15-312a-45ce-a25a-6c6a4bf0e17e"
    * text = "Patient actions"
    * type = #text
    * repeats = false
    * enableWhen[+]
      * question = "e2a16e4d-2765-4b61-b286-82cfc6356b30" // age item which has initial population from variable
      * operator = #>
      * answerInteger = 12
  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[sdc-questionnaire-shortText].valueString = "Copy of health check"
    * linkId = "8176151f-6d86-45eb-91b1-12458d75a181"
    * text = "A copy of this health check has been offerered - including details of follow-up and future appointments"
    * type = #choice
    * repeats = false
    * answerOption[+].valueString = "Yes, copy taken"
    * answerOption[+].valueString = "Yes, but declined"
    * answerOption[+].valueString = "Not offered. Plan to follow up and offer at a later date"
