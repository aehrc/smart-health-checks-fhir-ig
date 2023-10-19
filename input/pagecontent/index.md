### Introduction
This implementation guide is provided to support the use of Smart Forms.

Smart Forms is a FHIR-based solution aimed to demonstrate effective undertaking of health care assessments. It leverages [SMART App Launch](https://build.fhir.org/ig/HL7/smart-app-launch/app-launch.html) and the [Structured Data Capture specification](http://build.fhir.org/ig/HL7/sdc/index.html) to support better clinical outcomes, improved clinical workflow, enhance the usefulness of information in the practice record and improve interoperability of health information. 

See [Reference Implementation](reference-implementation.html).

### Dependencies

Smart Forms is dependent on:
- [FHIR R4](http://hl7.org/fhir/R4/)
- [HL7 Terminology](https://terminology.hl7.org/5.0.0/)
- [Structured Data Capture](http://build.fhir.org/ig/HL7/sdc/index.html)
- [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/)
- [AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/)
- Terminology published in Australia's [National Clinical Terminology Service](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/)

In addition, the following FHIR implementation guides are referenced:
- [SMART App Launch](http://www.hl7.org/fhir/smart-app-launch)


### Usage

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.


### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- Guidance
  - [Reference Implementation](reference-implementation.html): This page describes software components and high level solution architecture of a Smart Forms reference implementation.
  - [Clinical System Integration](clinical-system-integration.html): This page describes an overview of integrating a GP Practice Management System with the Smart Forms Services for use with the Aboriginal and Torres Strait Islander Health Check assessment.
- FHIR Artefacts: These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Artefact Summary](artifacts.html): This page lists all of the FHIR artefacts defined in this guide.
  - [Questionnaires](questionnaires.html): This page lists all of the Questionnaire resources defined in this guide.
  - [Capability Statements](capability-statements.html): This page lists all of the CapabilityStatement resources defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page lists all of the StructureDefinition resources defined in this guide.
  - [Terminology](terminology.html): This page lists all of the ValueSet, CodeSystem and ConceptMap resources defined in this guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the Smart Forms FHIR NPM package.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Australian Government Department of Health and Aged Care
* National Aboriginal Community Controlled Health Organisation
* The Royal Australian College of General Practitioners
* Primary Care Data Quality Foundations Working Group
* Australian FHIR Implementers Community
* CSIRO Australian e-Health Research Centre 












