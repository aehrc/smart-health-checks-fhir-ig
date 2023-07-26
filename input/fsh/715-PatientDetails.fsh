Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Instance: PatientDetails
InstanceOf: Questionnaire
Usage: #definition
Title: "Aboriginal and Torres Strait Islander Health Check - Patient Details"
Description: "Patient Details sub-questionnaire for Aboriginal and Torres Strait Islander Health Check."

* contained[+] = YesNoNA
* contained[+] = AboriginalTorresStraitIslander
* contained[+] = PrimaryCarerParentGrandparent

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
* url = "http://www.health.gov.au/assessments/mbs/715/PatientDetails"
* name = "PatientDetails"
* title = "Aboriginal and Torres Strait Islander Health Check - Patient Details"
* status = #draft
* experimental = false
* subjectType[+] = #Patient
* date = "2022-05-24"
* jurisdiction.coding = urn:iso:std:iso:3166#AU

// do we want the main demographics "read-only"? Not sure we want to change these during the assessment. They are in the main patient record and we're not (yet) writing back
* item[+]
  * linkId = "5b224753-9365-44e3-823b-9c17e7394005"
  * text = "Patient Details"
  * type = #group
  * repeats = false
  * item[+] //in-progress
    * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#context-display    
    * linkId = "CD-in-progress-32"
    * text = "In progress"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div title=\"In progress\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<div style=\"display: flex; flex-direction: row;\">\r\n\t\t<img width='24' height='24' src='data:image/svg+xml;base64,\r\n\t\tPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxZW0iIGhlaWdodD0iMWVtIiB2aWV3Qm94PSIwIDAgMjQgMjQiPjxwYXRoIGZpbGw9IiM3NTc1NzUiIGQ9Im0xNS44NCAxMC4ybC0xLjAxIDEuMDFsLTIuMDctMi4wM2wxLjAxLTEuMDJjLjItLjIxLjU0LS4yMi43OCAwbDEuMjkgMS4yNWMuMjEuMjEuMjIuNTUgMCAuNzlNOCAxMy45MWw0LjE3LTQuMTlsMi4wNyAyLjA4bC00LjE2IDQuMkg4di0yLjA5TTEzIDJ2MmM0LjM5LjU0IDcuNSA0LjUzIDYuOTYgOC45MkE4LjAxNCA4LjAxNCAwIDAgMSAxMyAxOS44OHYyYzUuNS0uNiA5LjQ1LTUuNTQgOC44NS0xMS4wM0MyMS4zMyA2LjE5IDE3LjY2IDIuNSAxMyAybS0yIDBjLTEuOTYuMTgtMy44MS45NS01LjMzIDIuMkw3LjEgNS43NGMxLjEyLS45IDIuNDctMS40OCAzLjktMS42OHYtMk00LjI2IDUuNjdBOS44MSA5LjgxIDAgMCAwIDIuMDUgMTFoMmMuMTktMS40Mi43NS0yLjc3IDEuNjQtMy45TDQuMjYgNS42N00yLjA2IDEzYy4yIDEuOTYuOTcgMy44MSAyLjIxIDUuMzNsMS40Mi0xLjQzQTguMDAyIDguMDAyIDAgMCAxIDQuMDYgMTNoLTJtNSA1LjM3bC0xLjM5IDEuMzdBOS45OTQgOS45OTQgMCAwIDAgMTEgMjJ2LTJhOC4wMDIgOC4wMDIgMCAwIDEtMy45LTEuNjNoLS4wNFoiLz48L3N2Zz4=' \r\n\t\tstyle=\"align-self: center;\"/>\r\n\t</div>\r\n</div>" 
    * type = #display
    * enableWhen[+]
      * question = "MarkComplete-32" // Section complete item
      * operator = #=
      * answerBoolean = false  
  * item[+] //complete
    * extension[questionnaire-itemControl].valueCodeableConcept = https://smartforms.csiro.au/ig/CodeSystem/QuestionnaireItemControlExtended#context-display
    * linkId = "CD-complete-32"
    * text = "Complete"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<div title=\"Section completed\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<div style=\"display: flex; flex-direction: row;\">\r\n\t\t<img width='24' height='24' src='data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxZW0iIGhlaWdodD0iMWVtIiB2aWV3Qm94PSIwIDAgMjQgMjQiPjxwYXRoIGZpbGw9IiMyZTdkMzIiIGQ9Ik0yMCAxMmE4IDggMCAwIDEtOCA4YTggOCAwIDAgMS04LThhOCA4IDAgMCAxIDgtOGMuNzYgMCAxLjUuMTEgMi4yLjMxbDEuNTctMS41N0E5LjgyMiA5LjgyMiAwIDAgMCAxMiAyQTEwIDEwIDAgMCAwIDIgMTJhMTAgMTAgMCAwIDAgMTAgMTBhMTAgMTAgMCAwIDAgMTAtMTBNNy45MSAxMC4wOEw2LjUgMTEuNUwxMSAxNkwyMSA2bC0xLjQxLTEuNDJMMTEgMTMuMTdsLTMuMDktMy4wOVoiLz48L3N2Zz4='\r\n\t\tstyle=\"align-self: center;\"/>\r\n\t</div>\r\n</div>\r\n"
    * type = #display
    * enableWhen[+]
      * question = "MarkComplete-32" // Section complete item
      * operator = #=
      * answerBoolean = true
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "(%patient.name.where(use='official').select((family | (given | prefix).join(' ')).join(', ') | text) | %patient.name.select((family | (given | prefix).join(' ')).join(', ') | text)).first()"
    * linkId = "17596726-34cf-4133-9960-7081e1d63558"
    * text = "Name"
    * type = #string
    * repeats = false
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.birthDate"
    * linkId = "90ad8f16-16e4-4438-a7aa-b3189f510da2"
    * text = "Date of birth"
    * type = #date
    * repeats = false
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "iif(today().toString().select(substring(5,2) & substring(8,2)).toInteger() > %patient.birthDate.toString().select(substring(5,2) & substring(8,2)).toInteger(), today().toString().substring(0,4).toInteger() - %patient.birthDate.toString().substring(0,4).toInteger(), today().toString().substring(0,4).toInteger() - %patient.birthDate.toString().substring(0,4).toInteger() - 1)"
    * linkId = "e2a16e4d-2765-4b61-b286-82cfc6356b30"
    * text = "Age"
    * type = #integer
    * repeats = false
  * item[+]
    /*Should this be administrative gender or sex for clinical use?*/
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.gender"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * linkId = "418e4a02-de77-48a0-a92a-fe8fcc52b1aa"
    * text = "Gender"
    * type = #choice
    * repeats = false
    * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.extension.where(url='http://hl7.org.au/fhir/StructureDefinition/indigenous-status').value"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * linkId = "8acde9f8-7a91-4f0c-9216-38531ec984ef"
    * text = "Aboriginal and/or Torres Strait Islander status"
    * type = #choice
    * repeats = false
    * answerValueSet[+] = "#AboriginalTorresStraitIslander"
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 24"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
    * linkId = "c8852db9-efe9-4102-96db-cef3a8be0a5f"
    * text = "Parents/primary carer/s"
    * type = #choice
    * repeats = true
    * answerValueSet[+] = "#PrimaryCarerParentGrandparent"
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 24"
    * linkId = "7089c48e-4216-4089-a548-034cd585e4da"
    * text = "Other family"
    * type = #string
    * repeats = true
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "70c45932-99dc-42a3-9650-4683892a0892"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 24"
    * linkId = "42b1f5e0-bf4a-47d9-86a4-f2fe946ac01f"
    * text = "Other"
    * type = #string
    * repeats = true 
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#prompt
      * linkId = "dcbd3a54-9b68-4486-bf30-f6f1723bc39c"
      * text = "details"
      * type = #display
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 12"
    * linkId = "06737e46-e880-4037-9a2c-bcd278cd70ba"
    * text = "Parents/primary carer/s details"    
    * type = #group
    * repeats = true
    * item[+]
      * linkId = "cc20ce96-af06-4cd7-aa9b-c2601a6169ad"
      * text = "Name of parent/primary carer"
      * type = #string
      * repeats = false 
    * item[+]
      * linkId = "372d79bb-9d0b-42d2-a98c-cbe332bd3745"
      * text = "Relationship to child"
      * type = #string
      * repeats = false
  * item[+]
    * linkId = "f1262ade-843c-4eba-a86d-51a9c97d134b"
    * text = "Home address"
    * type = #group
    * repeats = false
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.address.extension('http://hl7.org.au/fhir/StructureDefinition/no-fixed-address').value"
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box
      * linkId = "311d83bb-f22e-4f60-9b50-b6e38dd2059b"
      * definition = "http://hl7.org.au/fhir/StructureDefinition/au-address#Address.extension:noFixedAddress"
      * text = "No fixed address"
      * type = #boolean
      * repeats = false
    * item[+]
      * linkId = "4e0dc185-f83e-4027-b7a8-ecb543d42c6d"
      * text = "Address"
      * type = #group
      * repeats = true      
      * enableWhen[+]
        * question = "311d83bb-f22e-4f60-9b50-b6e38dd2059b"
        * operator = #!=
        * answerBoolean = true
      * item[+]
        * extension[sdc-questionnaire-initialExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%patient.address.select(line.join(', '))"
        * linkId = "2fee2d51-7828-4178-b8c1-35edd32ba338"
        * definition = "http://hl7.org.au/fhir/StructureDefinition/au-address#Address.line"
        * text = "Street address"
        * type = #string
        * repeats = true
      * item[+]
        * extension[sdc-questionnaire-initialExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%patient.address.city"
        * linkId = "ddb65ed1-f4b2-4730-af2a-2f98bc73c76f"
        * definition = "http://hl7.org.au/fhir/StructureDefinition/au-address#Address.city"
        * text = "City"
        * type = #string
        * repeats = false
      * item[+]
        * extension[sdc-questionnaire-initialExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%patient.address.state"
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down
        * linkId = "d9a1236c-8d6e-4f20-a12a-9d5de5a1d0f6"
        * definition = "http://hl7.org.au/fhir/StructureDefinition/au-address#Address.state"
        * text = "State"
        * type = #choice
        * answerValueSet = "https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2"
        * repeats = false
      * item[+]
        * extension[sdc-questionnaire-initialExpression].valueExpression
          * language = #text/fhirpath
          * expression = "%patient.address.postalCode"
        * extension[http://hl7.org/fhir/StructureDefinition/regex].valueString = "matches('^[0-9]{4}$')"
        * extension[http://hl7.org/fhir/StructureDefinition/entryFormat].valueString = "####"
        * linkId = "3f61a1ea-1c74-4f52-8519-432ce861a74f"
        * definition = "http://hl7.org.au/fhir/StructureDefinition/au-address#Address.postalCode"
        * text = "Postcode"
        * type = #string
        * repeats = false
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.telecom.where(system = 'phone' and use = 'home').value"
    * linkId = "9541f0b0-f5ba-4fe7-a8e9-ad003cef897b"
    * text = "Home phone"
    * type = #string
    * repeats = true
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.telecom.where(system = 'phone' and use = 'mobile').value"
    * linkId = "4037a02b-4a85-40e0-9be6-5b17df1aac56"
    * text = "Mobile phone"
    * type = #string
    * repeats = true
  * item[+]
    * linkId = "c22390d3-1be6-4fd1-b775-6443b7239a6b"
    * text = "Emergency contact"
    * type = #group
    * repeats = true
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.contact.where(relationship.coding.code = 'C').name.select(given.first() | family).join(' ')"
      * linkId = "d7f2dd75-20c8-480f-8c22-71d604ebee8d"
      * text = "Name"
      * type = #string
      * repeats = false
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age <= 12"
      * linkId = "aa35d559-f45b-4d35-9453-dd02e4a790f3"
      * text = "Relationship to child"
      * type = #string
      * repeats = false  
    * item[+]
      * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%age > 12"
      * linkId = "27099697-d6d1-42c0-bb0a-5e9ff7372a96"
      * text = "Relationship to patient"
      * type = #string
      * repeats = false 
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.contact.where(relationship.coding.code = 'C').telecom.value"
      * linkId = "626e3723-6310-4b99-81c1-525676b027c8"
      * text = "Phone"
      * type = #string
      * repeats = true
  * item[+]
    * linkId = "df1475ea-bf7e-4bf0-a69f-7f9608c3ed3c"
    * text = "Medicare number"
    * type = #group
    * repeats = false
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.identifier.where(type.coding.where(system='http://terminology.hl7.org/CodeSystem/v2-0203' and code='MC')).value.substring(0,10)"
      * extension[http://hl7.org/fhir/StructureDefinition/regex].valueString = "matches('^[0-9]{10}$')"
      * linkId = "eb2a59ed-9632-4df1-b5b1-1e85c3b4b7cf"
      * text = "Number"
      * type = #string
      * repeats = false
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.identifier.where(type.coding.system='http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code='MC').value.substring(10,1)"
      * extension[http://hl7.org/fhir/StructureDefinition/regex].valueString = "matches('^[0-9]{1}$')"
      * linkId = "d6253253-a124-494e-a1d8-7ce02c69ec11"
      * text = "Reference number"
      * type = #string
      * repeats = false
    * item[+]
      * extension[sdc-questionnaire-initialExpression].valueExpression
        * language = #text/fhirpath
        * expression = "%patient.identifier.where(type.coding.system='http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code='MC').period.end.toString()"
      * linkId = "c520e213-5313-42c3-860a-d30206620290"
      * text = "Expiry"
      * type = #string
      * repeats = false
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.identifier.where(type.coding.system='http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code='PEN').value"
    * linkId = "c1e4e967-c0aa-4280-b5d4-ab1f375ed9ac"
    * text = "Pensioner Card Number"
    * type = #string
    * repeats = false
    * maxLength = 10
  * item[+]
    * extension[sdc-questionnaire-initialExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%patient.identifier.where(type.coding.system='http://terminology.hl7.org/CodeSystem/v2-0203' and type.coding.code='HC').value"
    * linkId = "a7e97574-3cea-4dfa-bef2-2665e7748364"
    * text = "Health Care Card Number"
    * type = #string
    * repeats = false
    * maxLength = 10
  * item[+]
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "83814495-3a81-43f4-88df-42186cce516a"
    * text = "Registered for Closing the Gap PBS Co-payment Measure (CTG)"
    * type = #choice
    * repeats = false
    * answerValueSet = "#YesNoNA"
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age <= 5"
    * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
    * extension[questionnaire-choiceOrientation].valueCode = #horizontal
    * linkId = "e63547c6-1623-412f-963f-5f1ebf23563f"
    * text = "Child has a birth certificate"
    * type = #choice
    * repeats = false
    * answerValueSet = "#YesNoNA" 
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 50"
    * linkId = "a8143230-b30d-4b85-9805-5f2f73f2dffa"
    * text = "My Aged Care"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "7165c072-e3d8-4564-9d1d-d17f6807787c"
      * text = "Registered for My Aged Care"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "04e50521-dc85-4744-b7ab-6f8682aacb11"
      * text = "My Aged Care Number"
      * type = #string
      * enableWhen[+]
        * question = "7165c072-e3d8-4564-9d1d-d17f6807787c"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
  * item[+]
    * linkId = "2bfe50cb-7913-4f31-bce2-763c17ff8b1a"
    * text = "National Disability Insurance Scheme"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "924b4500-53ac-4c4e-831b-7ab5569ff981"
      * text = "Registered for NDIS"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "7379a0fd-d95b-4ecb-a781-9f43d1394f10"
      * text = "NDIS Number"
      * type = #string
      * enableWhen[+]
        * question = "924b4500-53ac-4c4e-831b-7ab5569ff981"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "(%age <= 49).intersect(%age > 12)"
    * linkId = "9bc882bc-e989-4600-9587-8089fb757641"
    * text = "Children"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "e90b436b-2751-4e07-a40c-adfe951b6528"
      * text = "Do you have children?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "241f5fca-f61a-49bd-8972-52613c0e6d15"
      * text = "Number of children"
      * type = #integer
      * enableWhen[+]
        * question = "e90b436b-2751-4e07-a40c-adfe951b6528"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
    * item[+]
      * linkId = "74ce4c60-31d6-4e78-9056-579937379451"
      * text = "Number of children in your care"
      * type = #integer
      * enableWhen[+]
        * question = "e90b436b-2751-4e07-a40c-adfe951b6528"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age > 12"
    * linkId = "2b5ae784-4341-4172-875d-1698cc8069f0"
    * text = "Someone's carer"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "a08271f1-194b-4fe9-91f9-4f3398858eb0"
      * text = "Are you responsible for caring for someone else?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "4c14b158-3ae4-4994-8446-76e02640702c"
      * text = "Details"
      * type = #text
      * enableWhen[+]
        * question = "a08271f1-194b-4fe9-91f9-4f3398858eb0"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 50"
    * linkId = "6c80c675-1320-4ca3-ae3f-51ad173da741"
    * text = "Your carer"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "d05558fb-a3cc-4bd6-b803-b672b36b9c51"
      * text = "Do you have a carer?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "b9991e7e-ce03-465d-b4b0-5a1725b24e02"
      * text = "Details"
      * type = #text
      * enableWhen[+]
        * question = "d05558fb-a3cc-4bd6-b803-b672b36b9c51"
        * operator = #=
        * answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
      * repeats = false
  * item[+]
    * linkId = "3494631c-6b56-46dc-abf7-a17bfc1d025f"
    * text = "Providers"
    * type = #group
    * repeats = false
    * item[+]
      * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
      * extension[questionnaire-choiceOrientation].valueCode = #horizontal
      * linkId = "41210be5-d441-4c44-b9c2-8dd94a44cbb4"
      * text = "Are name and contact details of other key providers (eg case workers, support services) up to date?"
      * type = #choice
      * repeats = false
      * answerValueSet = "#YesNoNA"
    * item[+]
      * linkId = "6733d6ec-5b6b-4ee2-a21e-0e9474c2b22b"
      * text = "Details"
      * type = #text
      * repeats = false
  * item[+]
    * extension[http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression].valueExpression
      * language = #text/fhirpath
      * expression = "%age >= 50"
    * linkId = "38f81a73-447f-4ecd-a8eb-6eccd9dee050"
    * text = "Advance care planning"
    * type = #group
    * repeats = false
    * item[+]
      * linkId = "c023ef16-b554-4ed9-8993-1331e5f5a3b4"
      * text = "Enduring Power of Attorney"
      * type = #group
      * repeats = false
      * item[+]
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
        * extension[questionnaire-choiceOrientation].valueCode = #horizontal
        * linkId = "036eace9-ea83-46ec-9d01-f2093f710816"
        * text = "Enduring Power of Attorney"
        * type = #choice
        * repeats = false
        * answerValueSet = "#YesNoNA"
      * item[+]
        * linkId = "83518215-7151-4365-b745-d7464bbb9528"
        * text = "Discussed today"
        * type = #text
        * repeats = false
    * item[+]
      * linkId = "c4f68251-26af-462f-879a-a69b449066ff"
      * text = "Advance Health Directive"
      * type = #group
      * repeats = false
      * item[+]
        * extension[questionnaire-itemControl].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button
        * extension[questionnaire-choiceOrientation].valueCode = #horizontal
        * linkId = "b0632039-c12b-4748-9e94-52073590c0ba"
        * text = "Advance Health Directive"
        * type = #choice
        * repeats = false
        * answerValueSet = "#YesNoNA"
      * item[+]
        * linkId = "c4bc2d84-e411-488d-9c0d-761f0377a026"
        * text = "Discussed today"
        * type = #text
        * repeats = false




  * item[+]
    * linkId = "MarkComplete-32"
    * text = "Mark section as complete"
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-xhtml].valueString = "<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <style type=\"text/css\">\r\n        .alert {\r\n            padding: 0.875rem;\r\n            margin-bottom: 1rem;\r\n            font-size: 0.875rem;\r\n            color: #2E7D32;\r\n            border-radius: 0.5rem;\r\n            background-color: #d5e5d6;\r\n            font-weight: 700;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<div class=\"alert\">Mark section as complete</div>\r\n</body>\r\n</html>"
    * type = #boolean
    * repeats = false

