Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: RedFlagsEarlyIdentificationGuide
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Red Flags Early Identification Guide For Children"
Description: "Red Flags Early Identification Guide For Children sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

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
* url = "http://www.health.gov.au/assessments/mbs/715/RedFlagsEarlyIdentificationGuide"
* name = "RedFlagsEarlyIdentificationGuideForChildren"
* title = "Aboriginal and Torres Strait Islander Health Check - Red Flags Early Identification Guide For Children"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

* item[+]
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible].valueCode = #default-closed
  * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%age <= 5"
  * linkId = "b9a6ce8b-7766-47a5-8e1c-1590a1edbfa8"
  * text = "Red flags early identification guide for children"
  * type = #group
  * repeats = false
  * item[+]    
    * linkId = "dfbf13b5-e9e1-4f2f-83fc-1b3b9e50c921"
    * text = "This is based on material from the The State of Queensland, Red flags early identification guide (for children aged birth to five years). 2nd edn. South Brisbane, Qld: Child Development Program, Queensland Health, 2016. Available at www.childrens.health.qld.gov.au/wp-content/uploads/PDF/red-flags-a3.pdf [Accessed 2 December 2019]. © Developed by the Child Development Program in conjunction with Brisbane North Primary Health Network. Updated: July 2016."
    * type = #display
  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * linkId = "0b520b20-98df-4024-b25d-2986f6b96e77"
    * text = "What age group is the child closet to?"
    * type = #choice
    * repeats = false
    * answerOption[+].valueString = "6 months"
    * answerOption[+].valueString = "9 months"
    * answerOption[+].valueString = "12 months"
    * answerOption[+].valueString = "18 months"
    * answerOption[+].valueString = "2 years"
    * answerOption[+].valueString = "3 years"
    * answerOption[+].valueString = "4 years"
    * answerOption[+].valueString = "5 years"
  * item[+]
    * linkId = "3ba3a34f-cb05-4d85-b5ea-0eddeb565aeb"
    * text = "Red flags"
    * type = #group
    * repeats = false
    //Social Emotional
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "9c717263-341e-416f-aad8-7aec7d2167c9"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not smile or interact with people"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "6 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "c10acb25-fdc3-401e-b0aa-d85b2921e5bb"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not sharing enjoyment with others using eye contact or facial expression"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "9 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "b6bb38f6-8084-4c89-a0f2-9d77aacab61d"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not notice someone new"
      * answerOption[+].valueString = "Does not pay early turn taking games (eg peekaboo, rolling a ball)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "12 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "c0ad8dc5-4672-4b21-b30d-6dcc7a00109a"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Lacks interest in playing and interacting with others"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "18 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "fc0977e1-fd83-4d0b-a57a-e94c7fd41fdb"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "When playing with toys tends to bang, drop, or throw them rather than use them for their purpose (eg Cuddle doll, build blocks)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "2 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "70f7b96f-eaae-490b-8522-1214c1b1aede"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "No interest in pretend play or interacting with other children"
      * answerOption[+].valueString = "Difficulty noticing and understanding feelings in themselves and others (eg happy, sad)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "3 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "03ff1391-f48d-4b99-894c-159f4d09eb33"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Unwilling or unable to play cooperatively"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "4 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "ee5f0a61-a8a1-473e-addf-ca5b1eaad7d3"
      * text = "Social Emotional"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Play is different than their friends"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "5 years"

    //Communication
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "2b23128e-1622-4880-abd6-c9cd429b48e3"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not starting to babble (eg aahh, oohh)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "6 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "dfb86be5-b6ff-400e-b7d6-68701df086da"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not using gestures (eg pointing, showing, waving)"
      * answerOption[+].valueString = "Not using two part babble (eg bubu, dada)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "9 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "4d802a6d-c89e-4460-8091-874f855be4ad"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "No babbled phrases that sound like talking"
      * answerOption[+].valueString = "No response to familiar words (eg bottle, daddy)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "12 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "b8e1a699-ed65-491f-9865-8ab855bb2d33"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "No clear words"
      * answerOption[+].valueString = "Cannot understand short requests (eg 'Where is the ball?')"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "18 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "6c3637ed-4afd-45be-a15c-9d5e7d8e78e8"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not learning new words"
      * answerOption[+].valueString = "Not putting words together (eg 'push car')"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "2 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "25d67a2f-8bbe-4f79-9488-1682d2ce49fa"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Speech is difficult for familiar people to understand"
      * answerOption[+].valueString = "Not using simple sentences (eg big car go)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "3 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "f00b5ae1-cc33-44f9-bd9b-f9b6c93cc005"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Speech difficult to understand"
      * answerOption[+].valueString = "Not able to follow directions with two steps (eg 'Put your bag away and then go play')"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "4 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "3e06438a-ee7d-4880-83aa-68d2ade997ce"
      * text = "Communication"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Difficulty telling a parent what is wrong"
      * answerOption[+].valueString = "Not able to answer questions in a simple conversation (eg What's your name? Who is your family?)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "5 years"

    //Cognition, fine motor and self care
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "49d172b4-bc2f-46cd-95a8-2f3ecba8e852"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not reaching for and holding (grasping) toys"
      * answerOption[+].valueString = "Hands frequently clenched"
      * answerOption[+].valueString = "Does not explore objects with hand and mouth"
      * answerOption[+].valueString = "Does not bring hands together at midline"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "6 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "785ec313-7b25-4d0d-9421-382981286cbc"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not hold objects"
      * answerOption[+].valueString = "Does not 'give' objects on request"
      * answerOption[+].valueString = "Cannot move toy from one hand to another"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "9 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "2c2b263e-41a5-4dae-94e1-814f5bfca20a"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not feed self finger foods or hold own bottle/cup"
      * answerOption[+].valueString = "Unable to pick up small items using index finger and thumb"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "12 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "d6d7d675-0fee-466d-85e8-5dae46adac40"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not scribble with a crayon"
      * answerOption[+].valueString = "Does not attempt to stack blocks after demonstration"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "18 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "c48e4138-0952-49a7-9c77-14b3e6d1dad3"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not attempt to feed self using a spoon and/or help with dressing"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "2 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "433e768c-8458-476a-8330-3f59a4aa94b4"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Does not attempt everyday care skills (such as feeding or dressing)"
      * answerOption[+].valueString = "Difficulty in manipulating small objects (eg threading beads)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "3 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "06d96181-2b2d-48de-b80f-bd5ccb2fb3c1"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not toilet trained by day"
      * answerOption[+].valueString = "Not able to draw lines and circles"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "4 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "e08345d3-a919-4bf0-8775-5df84a173832"
      * text = "Cognition, fine motor and self care"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Concerns from teacher about school readiness"
      * answerOption[+].valueString = "Not independently able to complete everyday routines such as feeding and dressing"
      * answerOption[+].valueString = "Cannot draw simple pictures (eg stick person)"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "5 years"

    //Gross motor
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "7f3861fd-b9f0-489d-8a39-5fdd18eeaf0e"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not holding head and shoulders up with good control when lying on tummy"
      * answerOption[+].valueString = "Not holding head with good control in supported sitting"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "6 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "68809920-fbf4-48e5-89f7-c0b49a8b8f78"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not rolling"
      * answerOption[+].valueString = "Not sitting independently/ without support"
      * answerOption[+].valueString = "Not moving (eg creeping, crawling)"
      * answerOption[+].valueString = "Not taking weight on legs when held in standing"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "9 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "5cf7c9bc-b3ec-43ac-8de8-65078f57a82b"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "No form of independent mobility (eg crawling, commando crawling, bottom shuffle)"
      * answerOption[+].valueString = "Not pulling to stand independently and holding on for support"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "12 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "a1137862-767c-49fb-883b-92bee7588edc"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not standing independently"
      * answerOption[+].valueString = "Not attempting to walk without support"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "18 months"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "dd83d558-6a7f-4b94-b677-7c2b31ccc52f"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not able to walk independently"
      * answerOption[+].valueString = "Not able to walk up and down stairs holding on"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "2 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "5ea4460c-a4c5-4025-bf85-64884a66458f"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not able to walk up and down stairs independently"
      * answerOption[+].valueString = "Not able to run or jump"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "3 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "75b597b4-3b38-4efd-aeb2-ab1551d83c3c"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not able to walk, run, climb, jump and uses stairs confidently"
      * answerOption[+].valueString = "Cannot catch, throw or kick a ball"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "4 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "f23ac52c-2064-4032-b283-6ce09fc306fa"
      * text = "Gross motor"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Not able to walk, run, climb, jump and use stairs confidently"
      * answerOption[+].valueString = "Not able to hop five times on one leg and stand on one leg for five seconds"
      * enableWhen[+]
        * question = "0b520b20-98df-4024-b25d-2986f6b96e77"
        * operator = #=
        * answerString = "5 years"
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "758d4109-363a-48c9-95f3-8a8d8b1b32ec"
      * text = "Red flags at any age"
      * type = #choice
      * repeats = true
      * answerOption[+].valueString = "Strong parental concerns"
      * answerOption[+].valueString = "Significant loss of skills"
      * answerOption[+].valueString = "Lack of response to sound or visual stimuli"
      * answerOption[+].valueString = "Poor interaction with adults or other children"
      * answerOption[+].valueString = "Lack of, or limited eye contact"
      * answerOption[+].valueString = "Differences between right and left sides of body in strength, movement or tone"
      * answerOption[+].valueString = "Marked low tone (floppy) or high tone (stiff and tense) and significantly impacting on development and functional motor skills"
