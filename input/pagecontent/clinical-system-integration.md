<h3>General Practice Clinical Management System Integration</h3>
    
<p>
    <a name="_Toc142301795">TABLE OF CONTENTS</a>
</p>
<p>
    TABLE  OF
    CONTENTS...................................................................................................
    1
</p>
<p>
    1.
    Introduction.................................................................................................
    3
</p>
<p>
    1.1.
    Purpose......................................................................................................
    3
</p>
<p>
    1.2.       Definitions, acronyms, and
    abbreviations................................................. 3
</p>
<p>
    1.3.       Document
    Structure..................................................................................
    3
</p>
<p>
    2.       Solution
    Overview.......................................................................................
    4
</p>
<p>
    2.1.
    Overview....................................................................................................
    4
</p>
<p>
    2.2.
    Scope.........................................................................................................
    5
</p>
<p>
    2.3.       Assumptions and
    Constraints....................................................................
    5
</p>
<p>
    2.4.       Decision
    Register.......................................................................................
    5
</p>
<p>
    3.       Logical
    View...................................................................................................
    6
</p>
<p>
    3.1.       High Level Solution
    Architecture...............................................................
    6
</p>
<p>
    3.1.1.        Practice Management System
    Components.................................... 6
</p>
<p>
    3.1.1.1.    PMS
    App....................................................................... 6
</p>
<p>
    3.1.1.2.    PMS  Authorization
    Service............................................. 7
</p>
<p>
    3.1.1.3.    PMS  FHIR
    Server............................................................ 7
</p>
<p>
    3.1.2.        Smart Forms Common Services
    Components.................................. 7
</p>
<p>
    3.1.2.1.    Smart  Health Checks
    App............................................... 7
</p>
<p>
    3.1.2.2.    Smart  Forms
    Server....................................................... 8
</p>
<p>
    3.1.2.3.
    Ontoserver....................................................................
    8
</p>
<p>
    3.2.       Practice Management
    System................................................................... 8
</p>
<p>
    3.2.1.        PMS
    App...........................................................................................
    8
</p>
<p>
    3.2.1.1.    SMART  App Launch
    Context........................................... 8
</p>
<p>
    3.2.1.2.    SMART App
    Launch........................................................ 9
</p>
<p>
    3.2.2.        PMS Authorization
    Service............................................................... 9
</p>
<p>
    3.2.2.1.
    authorize.....................................................................
    10
</p>
<p>
    3.2.2.2.
    token..........................................................................
    13
</p>
<p>
    3.2.2.3.
    register.......................................................................
    20
</p>
<p>
    3.2.2.4.
    jwks............................................................................
    22
</p>
<p>
    3.2.3.        PMS FHIR
    Server.............................................................................
    23
</p>
<p>
    3.2.3.1.    .well-known/smart-configuration.................................
    23
</p>
<p>
    3.2.3.2.    Patient
    read................................................................ 26
</p>
<p>
    3.2.3.3.    Practitioner
    read......................................................... 26
</p>
<p>
    3.2.3.4.    Encounter
    read............................................................ 27
</p>
<p>
    3.2.3.5.    Condition
    search.......................................................... 27
</p>
<p>
    3.2.3.6.    Observation
    search...................................................... 28
</p>
<p>
    3.2.3.7.    QuestionnaireResponse
    create..................................... 30
</p>
<p>
    3.2.3.8.    QuestionnaireResponse
    update.................................... 31
</p>
<p>
    3.2.3.9.    QuestionnaireResponse
    search..................................... 32
</p>
<p>
    3.2.3.10.    QuestionnaireResponse
    read...................................... 33
</p>
<h1>
    1. <a name="_Toc142301796">Introduction</a>
</h1>
<h2>
    <a name="_Toc142301797">1.1.               Purpose</a>
</h2>
<p>
    The purpose of this document is  to provide an overview of integrating a
    Practice Management System with the Smart  Health Checks App.
</p>
<p>
    This document will be used by  software providers of practice management
    systems that are integrating with the  Smart Health Checks App.
</p>
<h2>
    <a name="_Toc142301798">
        1.2.               Definitions, acronyms, and abbreviations
    </a>
</h2>
<p>
    The following definitions may be referenced in this  document.
</p>
<table border="1" cellspacing="0" cellpadding="0">
    <thead>
        <tr>
            <td width="118" valign="top">
                <p align="center">
                    Term
                </p>
            </td>
            <td width="467" valign="top">
                <p align="center">
                    Definition
                </p>
            </td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td width="118" valign="top">
                <p>
                    FHIR
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Fast Healthcare Interoperability Resources
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    OAuth
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Open Authorization
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    PMS
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Practice Management System
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    SHCA
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Smart Health Checks App
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    SMART
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Substitutable Medical Apps and Reusable Technology
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    URL
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Uniform Resource Locator
                </p>
            </td>
        </tr>
        <tr>
            <td width="118" valign="top">
                <p>
                    UTC
                </p>
            </td>
            <td width="467" valign="top">
                <p>
                    Coordinated Universal Time
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h2>
    <a name="_Toc142301799">1.3.               Document Structure</a>
</h2>
<p>
    This document has the following sections:
</p>
<p>
    Section 1:  Introduction
</p>
<p>
    Section 2:  Solution Overview
</p>
<p>
    Section 3:  Logical View
</p>
<h1>
    <a name="_Ref366783032"></a>
    <a name="_Toc142301800">
        2.                     Solution  Overview
    </a>
</h1>
<h2>
    <a name="_Toc142301801">2.1.               Overview</a>
</h2>
<p>
    The Smart Health Checks App (SHCA) is a standards-based  health check data
    collection application. It allows a Practice Management  System (PMS) to
    support the collection of health check data without the need to  implement
    and maintain each health check within the PMS itself. The PMS is  integrated
    with the SHCA using HL7 FHIR standards and associated implementation  guides
    as part of implementing the App Launch, Authorization Service and FHIR
    Server Application Programming Interfaces as shown in Figure 1  below.
</p>
<p>
    <img
        width="564"
        height="311"
        src="file:///C:/Users/bar872/AppData/Local/Temp/msohtmlclip1/01/clip_image002.png"
        alt="A black and white screen with white text

Description automatically generated"
    />
</p>
<p>
    <a name="_Ref140502205">Figure</a>1 Smart Health Checks Application  Context
    Diagram
</p>
<p>
    The PMS uses the FHIR
    <a href="http://hl7.org/fhir/smart-app-launch/STU2.1/">
        SMART App Launch
    </a>
    framework  to launch the SHCA with a unique launch context that correlates
    to the current  user, current patient, current patient visit and required
    health check.
</p>
<p>
    The Smart Health Checks App should be integrated within the  PMS using an
    embedded Web browser or inline frame (iframe). When necessary, the  SHCA may
    be loaded as a separate Web browser instance.
</p>
<p>
    As part of the SHCA launch sequence, the App will request  authorization to
    access the patient health data using the PMS Authorization  Service. The
    authorize request allows the PMS to grant the App an authorization  code
    that enables the App to then retrieve an access token to the FHIR Server and
    the App launch data associated with the specified launch context.
</p>
<p>
    Using the App launch data, such as the patient ID, user’s  Practitioner ID
    and health check questionnaire identifier, the SHCA will  execute FHIR read
    and search requests against the PMS FHIR Server using the retrieved  access
    token, to retrieve the patient health data required to pre-populate the
    requested  health check.
</p>
<p>
    The user records health check data within the SHCA and the  health check
    response data is saved as draft or completed using the FHIR Server
    QuestionnaireResponse create or update request.
</p>
<h2>
    <a name="_Toc142301802">2.2.               Scope</a>
</h2>
<p>
    The scope of this document includes an overview of integrating  a PMS with
    the Smart Health Checks App. It will describe the Web services and  requests
    required to be implement by the PMS associated with the following:
</p>
<ul>
    <li>
        App Launch
    </li>
    <li>
        Authorization Service
    </li>
    <li>
        FHIR Server
    </li>
</ul>
<h2>
    <a name="_Toc142301803">2.3.               Assumptions and Constraints</a>
</h2>
<p>
    This solution integration assumes the following:
</p>
<p>
    1.        The PMS is a Desktop Application deployed on-premise  within a
    primary care organisation’s private network or cloud-based virtual  private
    network
</p>
<p>
    2.        The PMS user agent will have access to SHCA and  associated
    Ontoserver Terminology Service and Smart Health Checks Forms Server  using
    public internet
</p>
<p>
    3.        The PMS Authorization Service will allow secure  access from the
    PMS user agent hosting the SHCA within the private network or public
    internet when required
</p>
<p>
    4.        The PMS FHIR Server will allow secure access  from the PMS user
    agent hosting the SHCA within the private network or public  internet when
    required.
</p>
<p>
    5.        The PMS Authorization Service will maintain secure  storage of
    launch context, authorization codes and access tokens as recommended  by
    OAuth 2.0 specifications
</p>
<p>
    6.        The PMS FHIR Server will maintain storage of  FHIR
    QuestionnaireResponse resources
</p>
<p>
    7.        The PMS FHIR Server will retrieve (read or  search) the supported
    patient and user data from the PMS data store
</p>
<h2>
    <a name="_Toc142301804">2.4.               Decision Register</a>
</h2>
<p>
    This document is based on the  following design decisions
</p>
<table border="1" cellspacing="0" cellpadding="0" width="593">
    <tbody>
        <tr>
            <td width="77" valign="top">
                <p>
                    <strong>Date</strong>
                </p>
            </td>
            <td width="65" valign="top">
                <p>
                    <strong>Decision Makers</strong>
                </p>
            </td>
            <td width="451" valign="top">
                <p>
                    <strong>Decision Description</strong>
                </p>
            </td>
        </tr>
        <tr>
            <td width="77" valign="top">
            </td>
            <td width="65" valign="top">
            </td>
            <td width="451" valign="top">
                <p>
                    Should a Refresh    Token be supported to allow a user
                    filling out a health check to be able to    save the
                    response after more than an hour from launching the Smart
                    Health    Checks App? If so, the online_access scope shall
                    be supported (it is    recommended that the offline_access
                    scope should not be used for public clients).
                </p>
                <p>
                    An alternative    is to allow the token expiry to be longer
                    than 1 hour. Would need to agree    what the maximum token
                    expiry should be, such as 8 hours?
                </p>
            </td>
        </tr>
        <tr>
            <td width="77" valign="top">
            </td>
            <td width="65" valign="top">
            </td>
            <td width="451" valign="top">
            </td>
        </tr>
    </tbody>
</table>
<h1>
    <a name="_Toc142301805">3.                     Logical  View</a>
</h1>
<h2>
    <a name="_Toc142301806">
        3.1.               High Level Solution Architecture
    </a>
</h2>
<p>
    The high-level architecture of the Smart Forms solution is  shown in Figure
    2.  The solution consists of a Practice Management System (PMS) integrated
    with  Smart Forms Common Services. The PMS represents any existing or future
    PMS,  on-premise or cloud-based, provided by any vendor whilst the Smart
    Forms Common  Services shared by the multiple and various PMS instances. The
    Smart Forms  Common Service is not limited to a single centralised
    deployment, it could be  deployed within a jurisdiction, regionally or by
    vendor as deemed appropriate.
</p>
<p>
    <img
        border="0"
        width="564"
        height="373"
        src="file:///C:/Users/bar872/AppData/Local/Temp/msohtmlclip1/01/clip_image004.png"
        alt="A screenshot of a computer

Description automatically generated"
    />
</p>
<p>
    <a name="_Ref455392045"></a><a name="_Ref455392054">Figure</a>2
    <a name="_Ref455392051">High Level Solution  Architecture</a>
</p>
<h3>
    <a name="_Toc142301807">
        3.1.1.             Practice Management System Components
    </a>
</h3>
<h4>
    <a name="_Toc142301808">3.1.1.1.       PMS App</a>
</h4>
<p>
    The PMS App is an existing practice management system  provided by a PMS
    software provider. The system may be deployed on-premise  where the
    application and database servers are located within confines or  control of
    the primary care organization. An on-premise system would normally  be
    considered a desktop application, where the application executes on multiple
    workstations connected to a centralized database server. There are also some
    systems using a hybrid of on-premise and cloud infrastructure.
</p>
<p>
    In the context of the Smart Health Check solution, the PMS App  has a
    dependency on the PMS Authorization Service to stash launch context  details
    such as the current patient, current user, current patient visit and  the
    health check form to be filled, which can be retrieved later by the Smart
    Health Checks App.
</p>
<p>
    The PMS also has a dependency on the Smart Health Checks App,  which
    provides the standards-based health check data capture functionality
    provided by the Smart Health Check solution.
</p>
<h4>
    <a name="_Toc142301809">3.1.1.2.       PMS Authorization  Service</a>
</h4>
<p>
    The PMS Authorization Service is an OAuth authorisation server  that
    supports SMART App Launch context, which enables a third-party application,
    such as the Smart Health Checks App, to request access to patient data in
    the  context of a user’s workflow.
</p>
<h4>
    <a name="_Toc142301810">3.1.1.3.       PMS FHIR Server</a>
</h4>
<p>
    The PMS FHIR Server is a standards-based Application Programming  Interface
    (API) that enables personal health information to be securely retrieved
    from the PMS. The FHIR Server uses the HL7 FHIR standard that specifies the
    type  of data and behaviour that can be provided by the API. The FHIR Server
    also  allows health information, such as a health check response (i.e. FHIR
    QuestionnaireResponse) to be stored in the PMS, which may be supported
    natively  within the PMS data store or as a separate FHIR data repository.
</p>
<p>
    The PMS FHIR Server has a dependency on the PMS App where it  accesses the
    patient data and user records from the PMS data store.
</p>
<h3>
    <a name="_Toc142301811">
        3.1.2.             Smart Forms Common Services Components
    </a>
</h3>
<h4>
    <a name="_Toc142301812">3.1.2.1.       Smart Health  Checks App</a>
</h4>
<p>
    The Smart Health Checks App is a browser-based Web application  that uses
    industry standards to provide a common user interface for the Smart Health
    Checks solution. The Smart Health Checks App uses a Single Page Application
    (SPA)  paradigm that allows a modern JavaScript enabled Web browser to host
    the  application without any logic executed or patient data stored on the
    server.
</p>
<p>
    The Smart Health Checks App, uses the
    <a href="http://hl7.org/fhir/uv/sdc/STU3/">
        HL7 Structured Data Capture (SDC)  Implementation Guide (IG)
    </a>
    to implement a rendering of health check forms  defined using FHIR
    Questionnaire resources and represent the data captured  using FHIR
    QuestionnaireResponse resources. The SDC IG provides guidance and
    extensions that enables the Smart Health Checks App to provide advanced
    rending, pre-population, dynamic behaviour and forms modularisation in a
    standardised manner. This enables the Smart Health Checks App to be used for
    any compatible health check form defined in accordance with the HL7
    Structured  Data Capture (SDC) Implementation Guide (IG).
</p>
<p>
    The Smart Health Checks App has a dependency on the PMS  Authorization
    Service to request access to the PMS patient data with permissions
    authorised as part of the authorization flow.
</p>
<p>
    The Smart Health Checks App has a dependency on the PMS FHIR  Server to
    access the patient data required to pre-populate the health check  form and
    store the captured health check data.
</p>
<p>
    The Smart Health Checks App has a dependency on the Smart  Forms Server that
    provides the health check forms as a FHIR Questionnaire resource.  Since the
    Smart Health Checks App is hosted within the PMS User agent, the  request to
    retrieve the Questionnaire resource originates from the PMS User agent  to
    the Smart Forms Server over the public internet.
</p>
<p>
    The Smart Health Checks App also has a dependency on the  Ontoserver
    terminology server that maintains the value sets required in a health  check
    form and expand filtered lists of coded concepts such as diagnoses and  body
    sites. The Ontoserver requests that originate from the Smart Health Checks
    App will also be transported over the public internet.
</p>
<h4>
    <a name="_Toc142301813">3.1.2.2.       Smart  Forms Server</a>
</h4>
<p>
    The Smart Forms Server is an implementation of a FHIR Server  specifically
    used to support the management of health check forms represented  as FHIR
    Questionnaire resources.
</p>
<p>
    The Smart Forms Server will also be used during the health  check form
    development to maintain reusable Questionnaire modules assembled  into the
    combined health check form used by the Smart Health Checks App.
</p>
<h4>
    <a name="_Toc142301814">3.1.2.3.       Ontoserver</a>
</h4>
<p>
    Ontoserver is a terminology server with a FHIR API that allows  the Smart
    Health Checks App to access FHIR ValueSet resources used in health  checks
    and evaluate filtered expansions at runtime based on user entered  lookahead
    requests for concepts such as diagnoses, medications and body sites.
</p>
<h2>
    <a name="_Toc142301815">3.2.               Practice Management System</a>
</h2>
<h3>
    <a name="_Toc142301816">3.2.1.             PMS App</a>
</h3>
<p>
    The PMS App shall launch the Smart Health Checks App using  the SMART App
    Launch sequence specified in the FHIR SMART App Launch  Implementation
    Guide.
</p>
<p>
    The PMS App may implement the Smart Health Checks App Launch  using an
    embedded Web view or external Web browser and within any workflow if  it is
    in accordance with the specified Smart Health Checks App Launch below.
</p>
<h4>
    <a name="_Toc142301817">3.2.1.1.       SMART App Launch Context</a>
</h4>
<p>
    To support the Smart Health Checks App Launch, the PMS App  shall store the
    required launch context in representation and secure location  accessible by
    the PMS Authorization Service.
</p>
<p>
    The SMART  App Launch context required by the Smart Health Checks App
    include the  following:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="568">
    <tbody>
        <tr>
            <td width="132" valign="top">
                <p>
                    patient
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    required
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    Current    patient identifier used to retrieve the Patient
                    via FHIR Server. Example:
                </p>
                <p>
                    87a339d0-8cae-418e-89c7-8651e6aab3c6
                </p>
            </td>
        </tr>
        <tr>
            <td width="132" valign="top">
                <p>
                    encounter
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    optional
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    Current    patient visit identifier used to retrieve the
                    Encounter via FHIR Server.    Example:
                </p>
                <p>
                    6673d31c-3cc3-43bc-adb6-cedb3122d881
                </p>
            </td>
        </tr>
        <tr>
            <td width="132" valign="top">
                <p>
                    sub
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    required
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    Unique    identifier of the user as known by the PMS
                    authorization service. Example:
                </p>
                <p>
                    f256d3ba-bb70-4613-a631-825d500c57fa
                </p>
            </td>
        </tr>
        <tr>
            <td width="132" valign="top">
                <p>
                    preferred_username
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    optional
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    Optional    username used to login to PMS. Example:
                </p>
                <p>
                    janedoe
                </p>
            </td>
        </tr>
        <tr>
            <td width="132" valign="top">
                <p>
                    fhirUser
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    required
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    Current    user identifier used to retrieve the user’s
                    Practitioner resource via the    FHIR API. Example:
                </p>
                <p>
                    Practitioner/8c7b7d27-88b6-44bc-b150-45acf9ce3f6b
                </p>
            </td>
        </tr>
        <tr>
            <td width="132" valign="top">
                <p>
                    fhirContext
                </p>
            </td>
            <td width="66" valign="top">
                <p>
                    optional
                </p>
            </td>
            <td width="370" valign="top">
                <p>
                    A list    of other FHIR resource references that have been
                    requested as launch context.    Each fhirContext item has a
                    relative or canonical reference to a FHIR    resource and a
                    role represented as the canonical URL of the FHIR resource
                    type. When a specified heath check form is requested health
                    check’s    Questionnaire url shall be provided in the
                    fhirContext. For example:
                </p>
                <p>
                    [{ "reference":
                    "https://hl7.org/fhir/Questionnaire/example123", "role":
                    "https://hl7.org/fhir/Questionnaire" }]
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    The SMART App Launch context data shall be accessible  by the PMS
    Authorization Service using a unique and opaque launch identifier,  which
    cannot be guessed and ideally, does not include any launch context. For
    example, a Version 4 or Version 5 UUID may be generated as a key to access
    the  launch context from an App Launch Context data store.
</p>
<h4>
    <a name="_Toc142301818">3.2.1.2.       S</a>MART App Launch
</h4>
<p>
    The Smart Health Checks App is launched using the SMART App  Launch request
    within the embedded or external Web browser or iframe.
</p>
<p>
    The SMART App launch is initiated by invoking a HTTP GET  request to the
    registered launch URL of the Smart Health Checks App. The  request shall
    include the following SMART App Launch query parameters.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    iss
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Base URL of the PMS FHIR Server. Example:
                </p>
                <p>
                    <a href="https://server.com.au/fhir">
                        https://server.com.au/fhir
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    launch
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The launch context used to retrieve the launch data    as
                    part of the authorization process. Example:
                </p>
                <p>
                    15fd8cc0b5ce4e4b9ab1cb83495412f5
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of a launch request URL with encoded parameters  is shown below.
</p>
<p>
    https://smartforms.io/launch?iss=https%3A%2F%2Fserver.com.au/fhir&amp;launch=15fd8cc0b5ce4e4b9ab1cb83495412f5
</p>
<p>
    The response to the SMART App Launch request will be a HTTP  response that
    will be processed as usual by the Web browser agent that initiated  the
    request. Under normal conditions the response will contain a HTML page or a
    HTTP Redirect response.
</p>
<h3>
    <a name="_Toc142301819">3.2.2.             PMS Authorization Service</a>
</h3>
<p>
    The PMS Authorization Service shall implement the OAuth 2.0 Authorization
    Code flow as required by the FHIR SMART App Launch IG. This includes the
    following SMART App Launch authorization endpoints:
</p>
<ul>
    <li>
        authorize
    </li>
    <li>
        token
    </li>
    <li>
        register
    </li>
    <li>
        jwks
    </li>
</ul>
<p>
    The PMS Authorization Service shall support the retrieval of  SMART App
    Launch context stored by the PMS App using a launch identifier/handle
    provided as part of the authorization flow.
</p>
<p>
    The PMS Authorization Service shall maintain a data store of  registered
    third-party applications, authorization codes and access tokens.
</p>
<h4>
    <a name="_Toc142301820">3.2.2.1.      authorize</a>
</h4>
<p>
    The PMS  Authorization Service authorize request allows the Smart Health
    Checks App to authorize the user as  part of their current launch context.
</p>
<h5>
    Request
</h5>
<p>
    The authorize request shall be supported using  both HTTP GET and HTTP POST
    methods with the following parameters as specified in the FHIR SMART App
    Launch IG. The Smart Health Checks App will use the HTTP GET method only,
    but  the HTTP POST method is supported to comply with the FHIR SMART App
    Launch IG  conformance requirements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    <strong>Parameter</strong>
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    <strong>Description</strong>
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    response_type
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Fixed    value:
                </p>
                <p>
                    code
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    client_id
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    client identifier for the registered Smart Health
                    Checks App. Example:
                </p>
                <p>
                    c6807eb65497423e8ef56f05956afb0f
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    redirect_uri
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    redirect URI for the registered Smart Health Checks
                    App. Example:
                </p>
                <p>
                    https://www.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    launch
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    launch identifier provided in the launch request
                    correlates to the stashed    launch context. Example:
                </p>
                <p>
                    15fd8cc0b5ce4e4b9ab1cb83495412f5
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    scope
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Space    delimited list of authorization scopes requested by
                    the App. Example:
                </p>
                <p>
                    launch launch/Patient patient/*.rs openid fhirUser
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    state
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    An    unpredictable unique identifier used to correlate the
                    authorization request    with the subsequent redirect
                    response. Example:
                </p>
                <p>
                    NhlJ741C31hRDf8v
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    aud
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Base    URL of the FHIR server the App is requesting access.
                    Example:
                </p>
                <p>
                    https://launch.smarthealthit.org/v/r4/fhir
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    code_challenge
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    PKCE    code challenge generated by the App. Example:
                </p>
                <p>
                    E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    code_challenge_method
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    PKCE    code challenge method. Example:
                </p>
                <p>
                    S256
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    In the case  of a HTTP GET request, the query parameters shall be URL
    encoded as shown in  request example below.
</p>
<p>
    GET https://facade.smartforms.io/oauth/authorize?<strong>response_type</strong>=code&amp;<strong>client_id</strong>=c6807eb65497423e8ef56f05956afb0f&amp;<strong>scope</strong>=launch%20launch%2FPatient%20patient%2F*.rs%20openid%20fhirUser&amp;<strong>redirect_uri</strong>=https%3A%2F%2www.smartforms.io&amp;<strong>state</strong>=NhlJ741C31hRDf8v&amp;<strong>aud</strong>=https%3A%2F%2Ffacade.smartforms.io%2Ffhir&amp;<strong>launch</strong>=15fd8cc0b5ce4e4b9ab1cb83495412f5&amp;<strong>code_challenge</strong>=E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM&amp;<strong>code_challenge_method</strong>=S256
</p>
<p>
    When the  request is invoked using HTTP POST, the parameters are provided in
    the body of  the request represented using the Web form URL encoding and
    indicated in the  HTTP content-type header as
    application/x-www-form-urlencoded. An example of HTTP Post request is  shown
    below.
</p>
<p>
    POST /oauth/authorize
</p>
<p>
    Content-Type:  application/x-www-form-urlencoded
</p>
<p>
    Host: https://facade.smartforms.io
</p>
<p>
    <strong>response_type</strong>=code&amp;<strong>client_id</strong>=c6807eb65497423e8ef56f05956afb0f&amp;<strong>scope</strong>=launch%20launch%2FPatient%20patient%2F*.rs%20openid%20fhirUser&amp;<strong>redirect_uri</strong>=https%3A%2F%2www.smartforms.io&amp;<strong>state</strong>=NhlJ741C31hRDf8v&amp;<strong>aud</strong>=https%3A%2F%2Ffacade.smartforms.io%2Ffhir&amp;<strong>launch</strong>=15fd8cc0b5ce4e4b9ab1cb83495412f5&amp;<strong>code_challenge</strong>=E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM&amp;<strong>code_challenge_method</strong>=S256
</p>
<h5>
    Processing Rules
</h5>
<p>
    The  following processing rules should be applied for the authorize request:
</p>
<p>
    1.        Verify all request parameters are provided and  valid. Any missing
    or invalid parameters shall result in an error parameter of  invalid_request
    returned in the redirect response.
</p>
<p>
    2.       The client_id parameter is used to retrieve the  registered client
    record from the Authorization data store. An error parameter  of
    unauthorized_client shall be returned in the redirect response when an
    active client record does not exist.
</p>
<p>
    3.       The redirect_uri parameter is verified against  the client record
    as a registered redirect_uri. An error parameter of  unauthorized_client
    shall be returned in the redirect response when the  redirect_uri is not
    registered.
</p>
<p>
    4.       The aud parameter is verified against the client  record as the
    target resource server of the client. An error parameter of
    unauthorized_client  shall be returned in the redirect response when the aud
    is not the registered  client’s target resource server.
</p>
<p>
    5.       The scope parameters are verified against the  registered client
    scope records. Any requested scopes beyond those registered  shall be
    adjusted to align with the registered scopes. For example, if a scope  of
    patient/*.cruds is requested and a registered client scope is patient/*.rs,
    the requested scope will be adjusted to patient/*.rs. The adjusted scope
    value  will be used in the subsequent processing rules and returned in the
    response.  Any invalid, unknown or malformed scope values shall result in an
    error  parameter of invalid_scope returned in the redirect response.
</p>
<p>
    6.       The state parameter is used to retrieve a  previous request record.
    When a previous request with the same state is  retrieved, an
    invalid_request response shall be returned.
</p>
<p>
    7.       The launch parameter is used to retrieve the  stored launch context
    record. When a launch context record is not located, an  error parameter of
    invalid_request shall be returned in the redirect response.  When a previous
    request with the same launch parameter is retrieved, an  invalid_request
    response shall be returned.
</p>
<p>
    8.       The launch context record is verified against  the requested launch
    scopes to ensure all requested launch data has been  provided. For example
    when scope contains launch/patient, launch/encounter,  launch/questionnaire,
    fhirUser and openid, the launch context shall include the  corresponding
    parameter values. When a launch context parameter is missing from  the
    launch context, an error parameter of invalid_scope shall be returned in
    the redirect response.
</p>
<p>
    9.       The authorise request presents an Authorisation  Confirmation page
    displaying the name of the client, name of the user, name of  the patient,
    description of the encounter, name of the questionnaire and a  description
    of the remaining allowed requested scopes to allow the authorising  user to
    accept or decline access to the requested patient’s record.
</p>
<p>
    10.    When a user declines the authorization request,  an error parameter
    of access_declined shall be returned in the redirect  response.
</p>
<p>
    11.    When a user accepts the authorisation request, a  unique
    authorization code is generated. The authorization code should be  generated
    using a Version 4 UUID to produce a 128 bit random string, or a  Version 1
    UUID concatenated with the current timestamp in UTC, hashed with SHA1
    algorithm and encoded hexadecimal string to produce a 160 bit string. Hyphen
    characters may be stripped from UUID formatted strings, for example:
    6673d31c3cc343bcadb6cedb3122d881
</p>
<p>
    12.    An authorization context record with the  authorization code as the
    key is stored in the authorization data store. The  authorization context
    record shall include the code, client_id, aud,  redirect_uri, launch
    context, adjusted scope, state, code_challenge,  code_challenge_method and
    code expiry timestamp (UTC). The code expiry  timestamp shall calculated
    using a configurable but short timespan, such as 60  seconds. A maximum
    expiry timespan shall be 10 minutes.
</p>
<p>
    13.    A success response shall be returned when the  authorization record
    is successfully generated and stored.
</p>
<h5>
    Success Response
</h5>
<p>
    The authorize response is a HTTP Redirect with a  HTTP status code of 302
    Found and Location header URL matching the redirect_uri  parameter provided
    in the request with the following parameters:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    code
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    authorization code. Example:
                </p>
                <p>
                    c1c3b2fe54334efb901e34b095f837dd
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    state
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    state value provided in the authorization request to
                    correlate this redirect    response with the request.
                    Example:
                </p>
                <p>
                    NhlJ741C31hRDf8v
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the response is shown below.
</p>
<p>
    HTTP  302 Found
</p>
<p>
    Location: https://www.smartforms.io?<strong>state</strong>=NhlJ741C31hRDf8v&amp;<strong>code</strong>=c1c3b2fe54334efb901e34b095f837dd
</p>
<p>
    When the Web browser client receives the authorize request  response, it
    will redirect to this location URL within the Smart Health Checks  App,
    which will process the state and code parameters as part of the next step
    of the authorization flow to exchange the code for an access token.
</p>
<h5>
    Error  Response
</h5>
<p>
    Error response for the authorize request is returned as a  HTTP Redirect
    with a HTTP status code of 302 Found. The Location header URL  matches the
    redirect_uri parameter provided in the request with the following
    parameters:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    error
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    error code from the following set:
                </p>
                <ul>
                    <li>
                        invalid_request
                    </li>
                    <li>
                        unauthorized_client
                    </li>
                    <li>
                        access_denied
                    </li>
                    <li>
                        unsupported_response_type
                    </li>
                    <li>
                        invalid_scope
                    </li>
                </ul>
                <p>
                    ·          server_error – unexpected    server error,
                    equivalent to HTTP 500 Internal Server Error status code
                </p>
                <p>
                    ·          temporarily_unavailable –    server temporarily
                    unavailable, equivalent to HTTP 503 Server Unavailable
                    status code
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    error_description
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Optional    human readable description of the error
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the response is shown below.
</p>
<p>
    HTTP  302 Found
</p>
<p>
    Location: https://www.smartforms.io?<strong>error</strong>=unauthorized_client&amp;<strong>error_description</strong>=redirect_uri%20does%20not%20match%20client%20registration
</p>
<p>
    When the Web browser client receives the authorize request  response, the
    application shall display the error details and not attempt to  access the
    FHIR Server.
</p>
<h5>
    Code  Challenge
</h5>
<p>
    The code_challenge  parameter provides mitigation against authorization code
    interception attacks  based on the Proof key for Code Exchange (PKCE)
    internet standard RFC 7636. The  following is provided for information only.
</p>
<p>
    A code_challenge is generated by the client and provided in  the authorize
    request by follow the following steps for each authorize request:
</p>
<p>
    1.       Generate  a code verifier as a random string with a length between
    43 and 128 using  characters from [A-Z] / [a-z] / [0-9] / "-" / "." /  "_" /
    "~". For example: <br/>
    <br/>
    dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk
</p>
<p>
    2.        Hash the code verifier string using SHA-256  hashing algorithm
</p>
<p>
    3.        Encode the hashed string using the Base64 URL  encoding (i.e.
    ensure +, / and = characters are replaced as per
    <a href="https://www.rfc-editor.org/rfc/rfc4648#section-5">
        section 5 of RFC4648
    </a>
    ).
</p>
<h4>
    <a name="_Toc142301821">3.2.2.2.      token</a>
</h4>
<p>
    The PMS Authorization  Service token request allows the Smart Health Checks
    App to exchange an authorization  token for an access token as part of the
    Smart Forms authorization process.  Further to the access token, the launch
    context stashed by the PMS APP is  returned in the token response.
</p>
<h5>
    Request
</h5>
<p>
    The token request is a HTTP POST with the  following parameters as specified
    in the FHIR SMART App Launch IG.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    grant_type
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Fixed    value:
                </p>
                <p>
                    authorization_code
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    code
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    code    parameter value returned in authorize response
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    client_id
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    client identifier for the registered Smart Health
                    Checks App. Example:
                </p>
                <p>
                    c6807eb65497423e8ef56f05956afb0f
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    redirect_uri
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    redirect URI for the registered Smart Health Checks
                    App. Example:
                </p>
                <p>
                    <a href="https://www.smartforms.io/">
                        https://www.smartforms.io
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    code_verifier
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    PKCE    code used to verify this request against the
                    code_challenge provided in the    preceding authorize
                    request. Example:
                </p>
                <p>
                    dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the token request is shown below.
</p>
<p>
    POST /oauth/token
</p>
<p>
    Content-Type:  application/x-www-form-urlencoded
</p>
<p>
    Host: https://facade.smartforms.io
</p>
<p>
    <strong>grant_type</strong>=authorization_code&amp;<strong>code</strong>=c1c3b2fe54334efb901e34b095f837dd<strong>&amp;client_id</strong>=c6807eb65497423e8ef56f05956afb0f&amp;<strong>redirect_uri</strong>=https%3A%2F%2www.smartforms.io&amp;<strong>code_verifier</strong>=dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk
</p>
<h5>
    Processing Rules
</h5>
<p>
    The  following processing rules should be applied for the authorize request:
</p>
<p>
    1.       The client_id shall exist as a  registered client
</p>
<p>
    2.       The redirect_uri shall match a  redirect_uris registered against
    the client_id
</p>
<p>
    3.       The grant_type shall match a grant_types  registered against the
    client_id
</p>
<p>
    4.       The code shall not be used by a  client more than once. When an
    authorization code is used more than once, the  token request shall reject
    the request and revoke previously issued access  tokens based on the
    authorization code.
</p>
<p>
    5.       The code_verifier shall be hashed  using SHA-26 hashing algorithm
    and encoded using Base64 URL encoding (i.e.  ensure +, / and = characters
    are replaced as per
    <a href="https://www.rfc-editor.org/rfc/rfc4648#section-5">
        section 5 of RFC4648
    </a>
    ).  The resulting encoded string shall be compared with the code_challenge
    stored  against the authorization_code. When the code_challenge does not
    match the hashed  and encode code_verifier, the request shall be rejected.
</p>
<p>
    6.       An ID token is generated as  described in the ID Token section
    below.
</p>
<p>
    7.       A unique access token is generated  as described in Access Token
    section below.
</p>
<p>
    8.       A token context record with an  indexed access token is stored in
    the authorization data store. The token  context record shall include the
    access token, authorization code, client_id,  redirect_uri and token expiry
    timestamp (UTC). The code expiry timestamp shall be  calculated using a
    configurable timespan in seconds. The expiry should be long  enough for a
    user to complete their App launch task, such as 1 hour (3600  seconds).
</p>
<p>
    9.       A token response shall be returned  when the token record is
    successfully generated and stored. The response shall  include the following
    as described in Token Response below:
</p>
<p>
    a.       access token
</p>
<p>
    b.       expiry timespan
</p>
<p>
    c.       adjusted  scope from authorization  context
</p>
<p>
    d.       encoded id token
</p>
<p>
    e.       launch context
</p>
<h5>
    ID Token
</h5>
<p>
    The ID Token is an encoded set of security claims used to  securely identify
    the user of the launch session. The claims are represented as  a JSON Web
    Token (JWT) encoded using JSON Web Signature (JWS) Compact  serialization.
    It is composed of three parts:
</p>
<ul>
    <li>
        JWS Protected Header
    </li>
    <li>
        JWS Payload
    </li>
    <li>
        JWS Signature
    </li>
</ul>
<p>
    Each of these three parts are BASE64URL encoded and  concatenated with a
    period (‘.’) as the delimited as outlined below:
</p>
<p>
    BASE64URL({JWS Protected Header}) +  ‘.’
</p>
<p>
    + BASE64URL({JWS Payload}) + ‘.’
</p>
<p>
    +   BASE64URL({JWS Signature})
</p>
<h6>
    JWS  Protected Header
</h6>
<p>
    The JWS Protected  Header has two elements as described below.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    typ
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Fixed    value:
                </p>
                <p>
                    JWT
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    alg
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Signature    algorithm (RSA SHA-256). Fixed value:
                </p>
                <p>
                    RS256
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example is shown below.
</p>
<p>
    {"typ":"JWT","alg":"RS256"}
</p>
<p>
    This is Base64URL encode as shown below.
</p>
<p>
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9
</p>
<h6>
    JWS Payload
</h6>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    sub
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Unique identifier    of the user as known by the PMS
                    authorization service. Example:
                </p>
                <p>
                    f256d3ba-bb70-4613-a631-825d500c57fa
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    iss
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Authorization    service issuer. Example:
                </p>
                <p>
                    https://facade.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    aud
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Client    uri. Example:
                </p>
                <p>
                    https://www.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    fhirUser
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    FHIR    Practitioner reference. Example:
                </p>
                <p>
                    Practitioner/f256d3ba-bb70-4613-a631-825d500c57fa
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    preferred_username
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Optional    username used by the user to login to the PMS.
                    Example:
                </p>
                <p>
                    janedoe
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    iat
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Token    issued at. Example:
                </p>
                <p>
                    1690903483
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    exp
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Token    expiry time. Example:
                </p>
                <p>
                    1690907083
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the JWS Payload is shown below.
</p>
<p>
    {
</p>
<p>
    "sub":"f256d3ba-bb70-4613-a631-825d500c57fa",
</p>
<p>
    "iss":"https://facade.smartforms.io",
</p>
<p>
    "aud":"https://www.smartforms.io",
</p>
<p>
    "fhirUser":"Practitioner/f256d3ba-bb70-4613-a631-825d500c57fa",
</p>
<p>
    "preferred_username":"janedoe",
</p>
<p>
    "iat":1690903483,
</p>
<p>
    "exp":1690907083
</p>
<p>
    }
</p>
<p>
    Below is Base64URL encode JWS Payload.
</p>
<p>
    eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJpYXQiOjE2OTA5MDM0ODMsImV4cCI6MTY5MDkwNzA4M30
</p>
<h6>
    JWS Signature
</h6>
<p>
    The JWS Signature uses the RSA PKCS1 SHA-256 algorithm where  the input
    string is the concatenation of the JWS Protected Header and JWS  Payload
    delimited with a period (‘.’).
</p>
<p>
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJpYXQiOjE2OTA5MDM0ODMsImV4cCI6MTY5MDkwNzA4M30
</p>
<p>
    The input string is signed using the Authorization server’s  private key and
    the resulting octets are encoded using BASE64URL as shown  below.
</p>
<p>
    XHuRvmNvJJvJotJ9EOOy49Prc_zv9krh8bLdXUqYdp85A55woHaogGPrK-_XltDrltV13NTqJQVMUD1YaXUwyZGsVITjdjHsURt0ei09wWfkVB9aMFDkO6p5WuEOmkr--ZOmnDl298WVROnkKvqCRgBVc8-dfk9BvCo1o_ZdWER5zcvlD9xFlZIqJ7-iM0s9c0YhOMjp2ZJTvSOxEBEcSV3xn2M1ZYQMTRrUlUtuBHtasUcqXVpqBYmWJGIo_GqWi7aD821kIMvv-E275wnp5H76CXLQYxMLvnuUVK2ogmULjegn9JcOI9gOZz0a3B2VzkE3Cc6naIOoP_c8zZnF9w
</p>
<h6>
    Encoded ID  token
</h6>
<p>
    The resulting ID token after concatenating the three parts  is shown below.
</p>
<p>
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJpYXQiOjE2OTA5MDM0ODMsImV4cCI6MTY5MDkwNzA4M30.XHuRvmNvJJvJotJ9EOOy49Prc_zv9krh8bLdXUqYdp85A55woHaogGPrK-_XltDrltV13NTqJQVMUD1YaXUwyZGsVITjdjHsURt0ei09wWfkVB9aMFDkO6p5WuEOmkr--ZOmnDl298WVROnkKvqCRgBVc8-dfk9BvCo1o_ZdWER5zcvlD9xFlZIqJ7-iM0s9c0YhOMjp2ZJTvSOxEBEcSV3xn2M1ZYQMTRrUlUtuBHtasUcqXVpqBYmWJGIo_GqWi7aD821kIMvv-E275wnp5H76CXLQYxMLvnuUVK2ogmULjegn9JcOI9gOZz0a3B2VzkE3Cc6naIOoP_c8zZnF9w
</p>
<p>
    This ID token can be decode and verified using the following  JSON Web Key
    (JWK) using the JWT debugger at https://jwt.io/.
    <a
        href="https://csiroau.sharepoint.com/sites/SmartHealthChecks/Shared%20Documents/General/Phase%203/CSIRO-SmartHealthCheck-PMSIntegration_LB.docx#_ftn1"
        name="_ftnref1"
        title=""
    >
        [1]
    </a>
</p>
<p>
    {
</p>
<p>
    "kty": "RSA",
</p>
<p>
    "kid":  "cc34c0a0-bd5a-4a3c-a50d-a2a7db7643df",
</p>
<p>
    "use": "sig",
</p>
<p>
    "n":
    "pjdss8ZaDfEH6K6U7GeW2nxDqR4IP049fk1fK0lndimbMMVBdPv_hSpm8T8EtBDxrUdi1OHZfMhUixGaut-3nQ4GG9nM249oxhCtxqqNvEXrmQRGqczyLxuh-fKn9Fg--hS9UpazHpfVAFnB5aCfXoNhPuI8oByyFKMKaOVgHNqP5NBEqabiLftZD3W_lsFCPGuzr4Vp0YS7zS2hDYScC2oOMu4rGU1LcMZf39p3153Cq7bS2Xh6Y-vw5pwzFYZdjQxDn8x8BG3fJ6j8TGLXQsbKH1218_HcUJRvMwdpbUQG5nvA2GXVqLqdwp054Lzk9_B_f1lVrmOKuHjTNHq48w",
</p>
<p>
    "e": "AQAB"
</p>
<p>
    }
</p>
<h5>
    Access  Token
</h5>
<p>
    The access token is opaque to the client and its  representation should only
    be known by the Authorization Service, and potentially  for convenience the
    FHIR Server.
</p>
<p>
    Therefore, the access token shall be either a UUID used to  retrieve the
    token context from the Authorization Service using an  introspection
    operation, or an encoded JWT using JWS.
</p>
<h6>
    UUID access  token
</h6>
<p>
    A UUID may be generated as the access token similar to the  authorization
    code, using a Version 4 UUID to produce a 128 bit random string,  or a
    Version 1 UUID concatenated with the current timestamp in UTC, hashed with
    SHA1 algorithm and encoded hexadecimal string to produce a 160 bit string.
    Hyphen characters may be stripped from UUID formatted strings.
</p>
<p>
    The benefit of a UUID access token is it is smaller in size,  easy to
    generate and use to retrieve the token context. The downside of the  UUID
    access token is that the token must be introspected on each request to
    ensure validity and retrieve token context.
</p>
<p>
    An example of a UUID access token is shown below.
</p>
<p>
    a88c5315a42e42d59acdcc67f69924b6
</p>
<h6>
    JWT encode  access token
</h6>
<p>
    An access token generated using JWT may use the following  elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    sub
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Unique identifier    of the user as known by the PMS
                    authorization service. Example:
                </p>
                <p>
                    f256d3ba-bb70-4613-a631-825d500c57fa
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    iss
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Authorization    service issuer. Example:
                </p>
                <p>
                    https://facade.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    aud
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Client    uri. Example:
                </p>
                <p>
                    https://www.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    fhirUser
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    FHIR    Practitioner reference associated with the launch
                    context. Example:
                </p>
                <p>
                    Practitioner/f256d3ba-bb70-4613-a631-825d500c57fa
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    preferred_username
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Optional    username used by the user to login to the PMS.
                    Example:
                </p>
                <p>
                    janedoe
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    scope
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    List of    authorized access scope delimited by space.
                    Example:
                </p>
                <p>
                    launch launch/Patient patient/*.rs    openid fhirUser
                    launch/Questionnaire
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    exp
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Token    expiry time. Example:
                </p>
                <p>
                    1690907083
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    patient
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Identifier    of the patient associated with the launch
                    context. Example:
                </p>
                <p>
                    87a339d0-8cae-418e-89c7-8651e6aab3c6
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    encounter
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Identifier    of the current patient visit associated with
                    the launch context. Example:
                </p>
                <p>
                    6673d31c-3cc3-43bc-adb6-cedb3122d881
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    fhirContext
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    A list    of other FHIR resource references provided in the
                    launch context. Each    fhirContext item has a relative or
                    canonical reference to a FHIR resource and    a role
                    represented as the canonical URL of the FHIR resource type.
                    When a    specified heath check form is requested health
                    check’s Questionnaire URL    shall be provided in the
                    fhirContext. For example:
                </p>
                <p>
                    [{ "reference":
                    "https://hl7.org/fhir/Questionnaire/example123", "role":
                    "https://hl7.org/fhir/Questionnaire" }]
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the access  token JWT is shown below.
</p>
<p>
    {
</p>
<p>
    "sub":"f256d3ba-bb70-4613-a631-825d500c57fa",
</p>
<p>
    "iss":"https://facade.smartforms.io",
</p>
<p>
    "aud":"https://www.smartforms.io",
</p>
<p>
    "fhirUser":"Practitioner/f256d3ba-bb70-4613-a631-825d500c57fa",
</p>
<p>
    "preferred_username":"janedoe",
</p>
<p>
    "scope":"launch launch/Patient  patient/*.rs openid fhirUser
    launch/Questionnaire",
</p>
<p>
    "iat":1690903483,
</p>
<p>
    "exp":1690907083
</p>
<p>
    }
</p>
<p>
    Below is Base64URL encoding of the access token JWT.
</p>
<p>
    eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJzY29wZSI6ImxhdW5jaCBsYXVuY2gvUGF0aWVudCBwYXRpZW50LyoucnMgb3BlbmlkIGZoaXJVc2VyIGxhdW5jaC9RdWVzdGlvbm5haXJlIiwiaWF0IjoxNjkwOTAzNDgzLCJleHAiOjE2OTA5MDcwODN9
</p>
<p>
    Using the JWS encoding  described for ID token above, the full access token
    is shown below.
</p>
<p>
    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJzY29wZSI6ImxhdW5jaCBsYXVuY2gvUGF0aWVudCBwYXRpZW50LyoucnMgb3BlbmlkIGZoaXJVc2VyIGxhdW5jaC9RdWVzdGlvbm5haXJlIiwiaWF0IjoxNjkwOTAzNDgzLCJleHAiOjE2OTA5MDcwODN9.G2QgyuuGmRbR7wwvztcs057FP8yWBDd_Rvd9KzqKYwv-dMaPZV05bVOpNgUskQX9qAi0zAibCJ_zFNWDRQFmICDeF2flzX_EuO987sbQ-X-k96q0cAfXAV-R7fWVL4EUIlPgPK7XdRprqetsTVHA9z9LtpMc4sYXnxkEBWV2py8hvrwumMX6ysmN2bPoISONPBGJYb38lj6plk4xbloZjERG707sJXQK22E_5dF4Wz_9ngVmygVbMjxwCAsUkF2LKwMnFQafrrccuFOmljaLooZwjIklQLjmOB7AcAZr-v4MesashNFUeX5t2VSeJ-f-oNsulK-fRLbNE4X77mutcw
</p>
<h5>
    Response
</h5>
<p>
    The token response contains a JSON payload in  the body with the following
    elements:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    access_token
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    The    access token. Example:
                </p>
                <p>
                    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJzY29wZSI6ImxhdW5jaCBsYXVuY2gvUGF0aWVudCBwYXRpZW50LyoucnMgb3BlbmlkIGZoaXJVc2VyIGxhdW5jaC9RdWVzdGlvbm5haXJlIiwiaWF0IjoxNjkwOTAzNDgzLCJleHAiOjE2OTA5MDcwODN9.G2QgyuuGmRbR7wwvztcs057FP8yWBDd_Rvd9KzqKYwv-dMaPZV05bVOpNgUskQX9qAi0zAibCJ_zFNWDRQFmICDeF2flzX_EuO987sbQ-X-k96q0cAfXAV-R7fWVL4EUIlPgPK7XdRprqetsTVHA9z9LtpMc4sYXnxkEBWV2py8hvrwumMX6ysmN2bPoISONPBGJYb38lj6plk4xbloZjERG707sJXQK22E_5dF4Wz_9ngVmygVbMjxwCAsUkF2LKwMnFQafrrccuFOmljaLooZwjIklQLjmOB7AcAZr-v4MesashNFUeX5t2VSeJ-f-oNsulK-fRLbNE4X77mutcw
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    token_type
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Fixed    value:
                </p>
                <p>
                    Bearer
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    expires_in
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Number    of seconds the access token is valid. By default
                    the tokens expires in one    hour, represent as shown in
                    example below:
                </p>
                <p>
                    3600
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    scope
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Space    delimited list of scopes granted to the App as part
                    of the authorize process.    The list of scopes may not be
                    the same as what was requested. Example:
                </p>
                <p>
                    launch launch/Patient patient/*.rs    openid fhirUser
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    id_token
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Encoded    identity using JSON Web Token (JWT) the OpenID
                    Connect Core 1.0    specifications. When decoded and
                    verified, the token contains identity    details of the user
                    that launched the app and a FHIR Practitioner resource
                    reference representing the user. The id_token is provided
                    when the openid fhirUser scopes are requested and granted.
                    Example:
                </p>
                <p>
                    eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJpYXQiOjE2OTA5MDM0ODMsImV4cCI6MTY5MDkwNzA4M30.XHuRvmNvJJvJotJ9EOOy49Prc_zv9krh8bLdXUqYdp85A55woHaogGPrK-_XltDrltV13NTqJQVMUD1YaXUwyZGsVITjdjHsURt0ei09wWfkVB9aMFDkO6p5WuEOmkr--ZOmnDl298WVROnkKvqCRgBVc8-dfk9BvCo1o_ZdWER5zcvlD9xFlZIqJ7-iM0s9c0YhOMjp2ZJTvSOxEBEcSV3xn2M1ZYQMTRrUlUtuBHtasUcqXVpqBYmWJGIo_GqWi7aD821kIMvv-E275wnp5H76CXLQYxMLvnuUVK2ogmULjegn9JcOI9gOZz0a3B2VzkE3Cc6naIOoP_c8zZnF9w
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    <s>
                        refresh_token
                    </s>
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    <s>
                        An    token that can be used to request a new access
                        token to continue a session    beyond the current access
                        token expiry time. A refresh token is only provided
                        when requested using the
                    </s>
                    <s>
                        online_access
                    </s>
                    <s>
                        scope.
                    </s>
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    patient
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    FHIR    Patient id provided in the launch context. Example:
                </p>
                <p>
                    87a339d0-8cae-418e-89c7-8651e6aab3c6
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    encounter
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    FHIR    Encounter id provided in the launch context.
                    Example:
                </p>
                <p>
                    6673d31c-3cc3-43bc-adb6-cedb3122d881
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    fhirContext
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    A list    of other FHIR resource references that have been
                    requested as launch context.    Each fhirContext item has a
                    relative or canonical reference to a FHIR    resource and a
                    role represented as the canonical URL of the FHIR resource
                    type. When a specified heath check form is requested, the
                    Questionnaire canonical    URL shall be provided in the
                    fhirContext. For example:
                </p>
                <p>
                    [{ "reference":
                    "https://hl7.org/fhir/Questionnaire/example123", "role":
                    "https://hl7.org/fhir/Questionnaire" }]
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the token response is shown below.
</p>
<p>
    <a name="_Hlk140049314">{</a>
</p>
<p>
    "access_token":
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJzY29wZSI6ImxhdW5jaCBsYXVuY2gvUGF0aWVudCBwYXRpZW50LyoucnMgb3BlbmlkIGZoaXJVc2VyIGxhdW5jaC9RdWVzdGlvbm5haXJlIiwiaWF0IjoxNjkwOTAzNDgzLCJleHAiOjE2OTA5MDcwODN9.G2QgyuuGmRbR7wwvztcs057FP8yWBDd_Rvd9KzqKYwv-dMaPZV05bVOpNgUskQX9qAi0zAibCJ_zFNWDRQFmICDeF2flzX_EuO987sbQ-X-k96q0cAfXAV-R7fWVL4EUIlPgPK7XdRprqetsTVHA9z9LtpMc4sYXnxkEBWV2py8hvrwumMX6ysmN2bPoISONPBGJYb38lj6plk4xbloZjERG707sJXQK22E_5dF4Wz_9ngVmygVbMjxwCAsUkF2LKwMnFQafrrccuFOmljaLooZwjIklQLjmOB7AcAZr-v4MesashNFUeX5t2VSeJ-f-oNsulK-fRLbNE4X77mutcw",
</p>
<p>
    "token_type": "Bearer",
</p>
<p>
    "expires_in": 3600,
</p>
<p>
    "scope": "launch launch/Patient patient/*.rs openid fhirUser
    launch/Questionnaire",
</p>
<p>
    "id_token":
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmMjU2ZDNiYS1iYjcwLTQ2MTMtYTYzMS04MjVkNTAwYzU3ZmEiLCJpc3MiOiJodHRwczovL2ZhY2FkZS5zbWFydGZvcm1zLmlvIiwiYXVkIjoiaHR0cHM6Ly93d3cuc21hcnRmb3Jtcy5pbyIsImZoaXJVc2VyIjoiUHJhY3RpdGlvbmVyL2YyNTZkM2JhLWJiNzAtNDYxMy1hNjMxLTgyNWQ1MDBjNTdmYSIsInByZWZlcnJlZF91c2VybmFtZSI6ImphbmVkb2UiLCJpYXQiOjE2OTA5MDM0ODMsImV4cCI6MTY5MDkwNzA4M30.XHuRvmNvJJvJotJ9EOOy49Prc_zv9krh8bLdXUqYdp85A55woHaogGPrK-_XltDrltV13NTqJQVMUD1YaXUwyZGsVITjdjHsURt0ei09wWfkVB9aMFDkO6p5WuEOmkr--ZOmnDl298WVROnkKvqCRgBVc8-dfk9BvCo1o_ZdWER5zcvlD9xFlZIqJ7-iM0s9c0YhOMjp2ZJTvSOxEBEcSV3xn2M1ZYQMTRrUlUtuBHtasUcqXVpqBYmWJGIo_GqWi7aD821kIMvv-E275wnp5H76CXLQYxMLvnuUVK2ogmULjegn9JcOI9gOZz0a3B2VzkE3Cc6naIOoP_c8zZnF9w",
</p>
<p>
    "patient":  "87a339d0-8cae-418e-89c7-8651e6aab3c6",
</p>
<p>
    "encounter":  "87a339d0-8cae-418e-89c7-8651e6aab3c6"
</p>
<p>
    "fhirContext": [{ "reference":
    "https://hl7.org/fhir/Questionnaire/example123", "role":
    "https://hl7.org/fhir/Questionnaire" }]
</p>
<p>
    }
</p>
<h4>
    <a name="_Toc142301822">3.2.2.3.      register</a>
</h4>
<p>
    The PMS  Authorization Service register request allows the Smart Health
    Checks App to be registered as a client of the PMS FHIR Server. The Smart
    Health Checks App will allow a PMS Administrative user to specify the
    Authorization Service URL and their user credentials to register the Smart
    Health  Checks App as a client in the PMS Authorization Service. As part of
    the  registration, the Smart Health Checks App will provide a name and URL
    that may  be displayed when a user authorizes the application access to
    patient  information along with other authorization requirements the Smart
    Health Checks  App has, including redirect URIs and, launch and access
    scopes.
</p>
<h5>
    Request
</h5>
<p>
    The register request is a HTTP POST with the following  parameters as
    specified in RFC 7591.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="595">
    <tbody>
        <tr>
            <td width="189" valign="top">
                <p>
                    client_name
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    Name of the client presented to the user during
                    authorization. Example:
                </p>
                <p>
                    Smart Health Checks App
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    client_uri
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    URL to a web page providing information about the    client.
                    Example:
                </p>
                <p>
                    https://www.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    launch_uri
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    URL to the SMART App launch page. Example:
                </p>
                <p>
                    https://www.smartforms.io/launch
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    redirect_uris
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    List of registered redirect URIs for the client    used to
                    authenticate public clients. Example:
                </p>
                <p>
                    ["https://www.smartforms.io"]
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    grant_types
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    List of OAuth grant types that may be used by the    client.
                    Example:
                </p>
                <p>
                    ["authorization_code"
                    <s>
                        ,    "refresh_token"
                    </s>
                    ]
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    response_types
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    List of OAuth response types that the client may    use.
                </p>
                <p>
                    Example:
                </p>
                <p>
                    ["code"]
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    token_endpoint_auth_method
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    The App is a public client, and hence does not    have a
                    client secret. Example:
                </p>
                <p>
                    none
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    scope
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    String containing a space-separated list of scope    values
                    that the client       can use    when requesting access
                    tokens. Example
                </p>
                <p>
                    launch launch/patient patient/*.rs openid fhirUser
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    <s>
                        jwks_uri
                    </s>
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    <s>
                        URL string referencing the client's JSON Web Key
                        (JWK) Set document, which contains the client's public
                        keys. Example:
                    </s>
                </p>
                <p>
                    <s>
                        https://client.example.org/my_public_keys.jwks
                    </s>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    The register request shall be secured using  Basic Authentication where the
    request includes a HTTP Authorization header with  a token type of Basic.
    The Basic Authentication token is a Base64 encoded username  and password
    joined by a colon (I.e. EncodeBase64({username}:{password}). For  example
    where username is “james” with password “abc123”:
</p>
<p>
    EncodeBase64("james:abc123") = amFtZXM6YWJjMTIz
</p>
<p>
    The  resulting Authorization header is shown below
</p>
<p>
    Authorization: Basic  amFtZXM6YWJjMTIz
</p>
<p>
    The PMS Authorization Server shall decode and authenticate  the user
    credentials provided in the Authorization header. The user used invoke  the
    register  request shall be an existing PMS administrative user that has the
    permission to  allow a third party application such as the Smart Health
    Checks App to register  as a client of the PMS Authorization Service and
    access patient data using the  PMS FHIR Server.
</p>
<p>
    An example of the register  request is shown below.
</p>
<p>
    POST /oauth/register HTTP/1.1
</p>
<p>
    Content-Type: application/json
</p>
<p>
    Host: https://facade.smartforms.io
</p>
<p>
    Authorization: Basic  amFtZXM6YWJjMTIz
</p>
<p>
    {
</p>
<p>
    "client_name": "Smart Health  Checks App",
</p>
<p>
    "client_uri": "https://www.smartforms.io",
</p>
<p>
    <a name="_Hlk141819651">
        "launch_uri": "https://www.smartforms.io/launch",
    </a>
</p>
<p>
    "redirect_uris": ["https://www.smartforms.io"],
</p>
<p>
    "grant_types": ["authorization_code"],
</p>
<p>
    "response_types": ["code"],
</p>
<p>
    "token_endpoint_auth_method": "none",
</p>
<p>
    "scope": "openid fhirUser launch  launch/patient launch/encounter
    <a name="_Hlk141819857">launch/questionnaire patient/*.rs</a>
    patient/QuestionnaireResponse.crus user/Practitioner.r "
</p>
<p>
    }
</p>
<h5>
    Created Response
</h5>
<p>
    The register response contains a JSON payload in the body  with the
    following elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="595">
    <tbody>
        <tr>
            <td width="189" valign="top">
                <p>
                    client_id
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    Example:
                </p>
                <p>
                    34e08e809a754f94b10716ef02c80a57
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the register response is shown below.
</p>
<p>
    HTTP/1.1 201 Created
</p>
<p>
    Content-Type: application/json
</p>
<p>
    {
</p>
<p>
    "client_id": "34e08e809a754f94b10716ef02c80a57"
</p>
<p>
    }
</p>
<h5>
    Error Response
</h5>
<p>
    The register error response contains a JSON payload in the body  with the
    following elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="595">
    <tbody>
        <tr>
            <td width="189" valign="top">
                <p>
                    error
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    Error code with following options:
                </p>
                <p>
                    <a name="_Hlk140049705">·       invalid_redirect_uri</a>
                    <br/>
                    One or more redirection URIs is invalid
                </p>
                <ul>
                    <li>
                        invalid_client_metadata <br/>
                        The value of one of the client metadata fields is
                        invalid and the server has    rejected this request
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    invalid_redirect_uri
                </p>
            </td>
        </tr>
        <tr>
            <td width="189" valign="top">
                <p>
                    error_description
                </p>
            </td>
            <td width="406" valign="top">
                <p>
                    Human-readable ASCII text description of the    error used
                    for debugging.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the register error response is shown  below.
</p>
<p>
    HTTP/1.1 400 Bad Request
</p>
<p>
    Content-Type: application/json
</p>
<p>
    {
</p>
<p>
    "error": "invalid_redirect_uri",
</p>
<p>
    "error_description": "One or more redirection URIs is invalid"
</p>
<p>
    }
</p>
<h4>
    <a name="_Toc142301823">3.2.2.4.      jwks</a>
</h4>
<p>
    The jwks  endpoint allows the Smart Health Checks App to retrieve the JSON
    Web Key set  from the Authorization Service to verify the ID Token retrieved
    as part of the  token response.
</p>
<h5>
    Request
</h5>
<p>
    The jwks request  is a HTTP GET with no parameters. For example:
</p>
<p>
    https://facade.smartforms.io/ oauth/jwks
</p>
<h5>
    Response
</h5>
<p>
    The jwks response has the  follow elements.
    <a
        href="https://csiroau.sharepoint.com/sites/SmartHealthChecks/Shared%20Documents/General/Phase%203/CSIRO-SmartHealthCheck-PMSIntegration_LB.docx#_ftn2"
        name="_ftnref2"
        title=""
    >
        [2]
    </a>
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="149" valign="top">
                <p>
                    keys
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Any    array of JSON Web Keys.
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    kty
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Type of    key. Example:
                </p>
                <p>
                    RSA
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    kid
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Key    identifier. Example:
                </p>
                <p>
                    cc34c0a0-bd5a-4a3c-a50d-a2a7db7643df
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    use
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Intended    use of the key. Example:
                </p>
                <p>
                    sig
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    n
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Modulus    of the RSA public key in Base64URL encoding.
                    Example:
                </p>
                <p>
                    pjdss8ZaDfEH6K6U7GeW2nxDqR4IP049fk1fK0lndimbMMVBdPv_hSpm8T8EtBDxrUdi1OHZfMhUixGaut-3nQ4GG9nM249oxhCtxqqNvEXrmQRGqczyLxuh-fKn9Fg--hS9UpazHpfVAFnB5aCfXoNhPuI8oByyFKMKaOVgHNqP5NBEqabiLftZD3W_lsFCPGuzr4Vp0YS7zS2hDYScC2oOMu4rGU1LcMZf39p3153Cq7bS2Xh6Y-vw5pwzFYZdjQxDn8x8BG3fJ6j8TGLXQsbKH1218_HcUJRvMwdpbUQG5nvA2GXVqLqdwp054Lzk9_B_f1lVrmOKuHjTNHq48w
                </p>
            </td>
        </tr>
        <tr>
            <td width="149" valign="top">
                <p>
                    e
                </p>
            </td>
            <td width="418" valign="top">
                <p>
                    Public    exponent of the RSA key in Base64URL encoding.
                    Example:
                </p>
                <p>
                    AQAB
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example  of a jwks response is shown below.
</p>
<p>
    {
</p>
<p>
    "keys": [
</p>
<p>
    {
</p>
<p>
    "kty": "RSA",
</p>
<p>
    "kid":  "cc34c0a0-bd5a-4a3c-a50d-a2a7db7643df",
</p>
<p>
    "use": "sig",
</p>
<p>
    "n":
    "pjdss8ZaDfEH6K6U7GeW2nxDqR4IP049fk1fK0lndimbMMVBdPv_hSpm8T8EtBDxrUdi1OHZfMhUixGaut-3nQ4GG9nM249oxhCtxqqNvEXrmQRGqczyLxuh-fKn9Fg--hS9UpazHpfVAFnB5aCfXoNhPuI8oByyFKMKaOVgHNqP5NBEqabiLftZD3W_lsFCPGuzr4Vp0YS7zS2hDYScC2oOMu4rGU1LcMZf39p3153Cq7bS2Xh6Y-vw5pwzFYZdjQxDn8x8BG3fJ6j8TGLXQsbKH1218_HcUJRvMwdpbUQG5nvA2GXVqLqdwp054Lzk9_B_f1lVrmOKuHjTNHq48w",
</p>
<p>
    "e": "AQAB"
</p>
<p>
    }
</p>
<p>
    }
</p>
<h3>
    <a name="_Toc142301824">3.2.3.             PMS FHIR Server</a>
</h3>
<p>
    The PMS FHIR Server provides the foundations of the PMS FHIR  Server by
    implementing a FHIR compatible service that supports the requirements  of
    the Smart Health Checks App. This includes:
</p>
<ul>
    <li>
        .well-known/smart-configuration
    </li>
    <li>
        Patient read
    </li>
    <li>
        Practitioner read
    </li>
    <li>
        Encounter read
    </li>
    <li>
        Condition search
    </li>
    <li>
        Observation search
    </li>
</ul>
<p>
    ·       QuestionnaireResponse search, read,  create, update
</p>
<p>
    The PMS FHIR Server shall be responsible for storing and  maintaining the
    FHIR QuestionnaireResponse resources.
</p>
<p>
    The following FHIR Server endpoints all use a common FHIR Server  base URL
    denoted as {fhir-base-url}.  An example of a FHIR Server base URL is as
    follows:
</p>
<p>
    https://someserver.company.com/fhir
</p>
<h4>
    <a name="_Toc142301825">3.2.3.1.       .well</a>-known/smart-configuration
</h4>
<p>
    The PMS  FHIR Server shall support the .well-known/smart-configuration
    request as  specified in Smart App Launch Implementation Guide 2.1.0 –
    Release
    <a
        href="http://hl7.org/fhir/smart-app-launch/STU2.1/app-launch.html#retrieve-well-knownsmart-configuration"
    >
        http://hl7.org/fhir/smart-app-launch/STU2.1/app-launch.html#retrieve-well-knownsmart-configuration
    </a>
    with the required elements  specified in
    <a
        href="http://hl7.org/fhir/smart-app-launch/STU2.1/conformance.html#using-well-known"
    >
        http://hl7.org/fhir/smart-app-launch/STU2.1/conformance.html#using-well-known
    </a>
    .
</p>
<h5>
    Request
</h5>
<p>
    The.well-known/smart-configuration request is a HTTP GET with no
    parameters.
</p>
<p>
    An example of the
    <a name="_Hlk141812779">
        .well-known/smart-configuration
    </a>
    request is shown below.
</p>
<p>
    {fhir-base-url}/.well-known/smart-configuration
</p>
<h5>
    Response
</h5>
<p>
    The .well-known/smart-configuration response contains a JSON payload  with
    the following elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="220" valign="top">
                <p>
                    issuer
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization server’s Issuer URI (Authorization server
                    base URL).
                </p>
                <p>
                    Example:
                </p>
                <p>
                    https://facade.smartforms.io
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    jwks_uri
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization server’s JSON Web Key Set URL.
                </p>
                <p>
                    Example:
                </p>
                <p>
                    https://facade.smartforms.io/oauth/jwks
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    authorization_endpoint
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization server’s authorization URL
                </p>
                <p>
                    Example:
                </p>
                <p>
                    https://facade.smartforms.io/oauth/authorize
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    grant_types_supported
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..*
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization endpoint grant types supported. Allowed
                    values:
                </p>
                <ul>
                    <li>
                        authorization_code
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    ["authorization_code"]
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    token_endpoint
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization server’s token URL
                </p>
                <p>
                    Example:
                </p>
                <p>
                    https://facade.smartforms.io/oauth/token
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    token_endpoint_auth_method
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    0..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    The App is a public client, and hence does not    have a
                    client secret. Example:
                </p>
                <p>
                    none
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    registration_endpoint
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..1
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization server registration endpoint.
                </p>
                <p>
                    Example:
                </p>
                <p>
                    https://facade.smartforms.io/oauth/register
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    scopes_supported
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..*
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    List of authorization and launch context scopes    supported
                    by the authorization server as specified in
                    <a
                        href="http://hl7.org/fhir/smart-app-launch/STU2.1/scopes-and-launch-context.html"
                    >
                        http://hl7.org/fhir/smart-app-launch/STU2.1/scopes-and-launch-context.html
                    </a>
                    .    Allowed values:
                </p>
                <ul>
                    <li>
                        openid
                    </li>
                    <li>
                        fhirUser
                    </li>
                    <li>
                        launch
                    </li>
                    <li>
                        launch/patient
                    </li>
                    <li>
                        launch/encounter
                    </li>
                    <li>
                        launch/questionnaire
                    </li>
                    <li>
                        Patient/{resource-type|*}.cruds
                    </li>
                    <li>
                        User/Practitioner.r
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    ["openid","fhirUser","launch","launch/patient","launch/encounter","launch/questionnaire","Patient/*.rs","Patient/QuestionnaireResponse.crus","User/Practitioner.r"]
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    response_types_supported
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..*
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Authorization response types supported. Allowed    values:
                </p>
                <ul>
                    <li>
                        code
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    ["code"]
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    code_challenge_methods_supported
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..*
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    Fixed: S256
                </p>
            </td>
        </tr>
        <tr>
            <td width="220" valign="top">
                <p>
                    capabilities
                </p>
            </td>
            <td width="36" valign="top">
                <p>
                    1..*
                </p>
            </td>
            <td width="310" valign="top">
                <p>
                    SMART capabilities supported by the server.    Allowed
                    values:
                </p>
                <ul>
                    <li>
                        launch-ehr
                    </li>
                    <li>
                        authorize-post
                    </li>
                    <li>
                        client-public
                    </li>
                    <li>
                        context-ehr-patient
                    </li>
                    <li>
                        context-ehr-encounter
                    </li>
                    <li>
                        permission-v2
                    </li>
                    <li>
                        permission-patient
                    </li>
                    <li>
                        permission-user
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    ["launch-ehr","authorize-post","client-public","context-ehr-patient","context-ehr-encounter","permission-v2","permission-patient","permission-user"]
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    An example of the .well-known/smart-configuration  response is shown below.
</p>
<p>
    {
</p>
<p>
    "issuer": "https://facade.smartforms.io",
</p>
<p>
    "jkws_uri": "https://facade.smartforms.io/oauth/jwks"
</p>
<p>
    "authorization_endpoint": "https://facade.smartforms.io/oauth/authorize",
</p>
<p>
    "grant_types_supported": ["authorization_code"],
</p>
<p>
    "token_endpoint": "https://facade.smartforms.io/oauth/token",
</p>
<p>
    "token_endpoint_auth_method": "none",
</p>
<p>
    "registration_endpoint": "https://facade.smartforms.io/oauth/register",
</p>
<p>
    "scopes_supported": ["openid",  “fhirUser","launch","launch/patient",
    "launch/encounter","launch/questionnaire","Patient/*.rs",
    "Patient/QuestionnaireResponse.crus","User/Practitioner.r""],
</p>
<p>
    "response_types_supported": ["code"],
</p>
<p>
    "code_challenge_methods_supported": "S256",
</p>
<p>
    "capabilities": ["launch-ehr","authorize-post","client-public", <br/>
    "context-ehr-patient","context-ehr-encounter","permission-v2", <br/>
    "permission-patient","permission-user"]
</p>
<p>
    }
</p>
<h4>
    <a name="_Toc142301826">3.2.3.2.       Patient read</a>
</h4>
<p>
    The Patient  read request allows the Smart Health Checks App to retrieve a
    PMS patient record  from the PMS datastore as a FHIR Patient resource.
</p>
<p>
    The PMS  FHIR Server shall support the Patient Read request as specified in
    the HL7 FHIR  Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#read">
        http://hl7.org/fhir/R4/http.html#read
    </a>
    . The response body shall comply  with the AU Core Implementation Guide
    0.2.0 – QA Preview
    <a
        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-patient.html"
    >
        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-patient.html
    </a>
    .
</p>
<p>
    The FHIR  Server shall ensure that the id in the request and response
    resource matches  the patient context associated with the Authorization
    access token.
</p>
<p>
    On success,  the FHIR server shall return a response with HTTP status 200
    OK, with the  retrieved resource as the body.
</p>
<p>
    On failure,  the FHIR server shall return a response with one of the
    following HTTP status  and where possible, an OperationOutcome as the
    response body providing further  details about the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="547">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not Authorized
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Authorization is required for the server    interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    404 Not Found
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource with the specified id does not exist
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500 Internal Server Error
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Unexpected server error caused by an otherwise    unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301827">3.2.3.3.       Practitioner read</a>
</h4>
<p>
    The  Practitioner read request allows the Smart Health Checks App to
    retrieve a PMS  user record from the PMS datastore as a FHIR Practitioner
    resource.
</p>
<p>
    The PMS  FHIR Server shall support the Practitioner Read request as
    specified in the HL7  FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#read">
        http://hl7.org/fhir/R4/http.html#read
    </a>
    . The response body shall comply with the AU  Core Implementation Guide
    0.2.0 – QA Preview
    <a
        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-practitioner.html"
    >
        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-practitioner.html
    </a>
    .
</p>
<p>
    The FHIR  Server shall ensure that the id in the request and response
    resource matches  the fhirUser context associated with the Authorization
    access token.
</p>
<p>
    On success,  the FHIR server shall return a response with HTTP status 200
    OK, with the  retrieved resource as the body.
</p>
<p>
    On failure,  the FHIR server shall return a response with one of the
    following HTTP status  and where possible, an OperationOutcome as the
    response body providing further  details about the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="547">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not Authorized
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Authorization is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    404 Not Found
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource with the specified id does not exist
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500 Internal Server Error
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Unexpected server error caused by an otherwise    unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301828">3.2.3.4.       Encounter read</a>
</h4>
<p>
    The  Encounter read request allows the Smart Health Checks App to retrieve a
    Patient  consultation visit record from the PMS datastore as a FHIR
    Encounter resource.
</p>
<p>
    The PMS  FHIR Server shall support the Encounter Read request as specified
    in the HL7  FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#read">
        http://hl7.org/fhir/R4/http.html#read
    </a>
    . The response body shall comply with the AU  Core Implementation Guide
    0.2.0 – QA Preview
    <a
        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-encounter.html"
    >
        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-encounter.html
    </a>
    .
</p>
<p>
    The FHIR  Server shall ensure that the id in the request and response
    resource matches  the encounter context associated with the Authorization
    access token.
</p>
<p>
    On success,  the FHIR server shall return a response with HTTP status 200
    OK, with the  retrieved resource as the body.
</p>
<p>
    On failure,  the FHIR server shall return a response with one of the
    following HTTP status  and where possible, an OperationOutcome as the
    response body providing further  details about the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="547">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not Authorized
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Authorization is required for the server    interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    404 Not Found
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource with the specified id does not exist
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500 Internal Server Error
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Unexpected server error caused by an otherwise    unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301829">3.2.3.5.       Condition search</a>
</h4>
<p>
    The  Condition search request allows the Smart Health Checks App to retrieve
    problem  list items from the PMS App datastore as FHIR Condition resources.
</p>
<p>
    The PMS  FHIR Server shall support the Condition Search request as specified
    in the HL7  FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#search">
        http://hl7.org/fhir/R4/http.html#search
    </a>
    . Note that both GET and POST  methods shall be supported by the FHIR Server
    to be complaint with the FHIR  specification. The Smart Health Checks App
    will use the GET method request.
</p>
<p>
    The Condition  search parameters shall also comply with Smart Forms Launcher
    Server for the  Aboriginal and Torres Strait Islander Health Check IG
    Capability Statement
    <a
        href="https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Condition1"
    >
        https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Condition1
    </a>
    .
</p>
<p>
    The search  response entry resources shall comply with the AU Core
    Implementation Guide  0.2.0 – QA Preview
    <a
        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-condition.html"
    >
        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-condition.html
    </a>
    .
</p>
<p>
    The FHIR  Server shall ensure that the patient search parameter, when
    provided, matches  the patient context associated with the Authorization
    access token.
</p>
<p>
    The FHIR  Server shall ensure that the returned results have a subject
    element that  matches the patient context associated with the Authorization
    access token.
</p>
<p>
    On success,  the FHIR server shall return a response with HTTP status 200
    OK, with a Bundle  resource with type “searchset”. Each Bundle entry shall
    include the following  elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="86" valign="top">
                <p>
                    total
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Total number of matching resources, irrespective    of the
                    _count parameter
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.relation
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Fixed: self
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.url
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    The full URL to execute the same search request    on this
                    FHIR server, including the _count and _sort parameters when
                    provided.
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    timestamp
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Timestamp the search results were processed
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    id
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    A unique id of the searchset bundle for this    request.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    Each Bundle  entry shall include the following elements
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="91" valign="top">
                <p>
                    search.mode
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    Fixed: match
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    fullUrl
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The full URL to read the matched resource from    this FHIR
                    server
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    resource
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The resource that matched the search parameters
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    When the  _count parameter is specified, the results shall not return more
    than the  number specified.
</p>
<p>
    The FHIR  Server is not required to support paging as specified in the HL7
    FHIR RESTful  API,
    <a href="http://hl7.org/fhir/R4/http.html#paging">
        http://hl7.org/fhir/R4/http.html#paging
    </a>
    , and hence it is not required to  specify any additional link occurrences
    other than the self link described  above.
</p>
<p>
    When the  _sort parameter is specified, the results shall be returned in the
    specified  order, including those records not returned in the response due
    to the _count  parameter being specified.
</p>
<p>
    On failure,  the FHIR server shall return a response with one of the
    following HTTP status  and where possible, an OperationOutcome response as
    the body, providing further  details of the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="570">
    <tbody>
        <tr>
            <td width="155" valign="top">
                <p>
                    400 Bad    Request
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Resource    could not be parsed or failed basic FHIR
                    validation rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    401 Not    Authorized
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Authorization    is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    500    Internal Server Error
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Unexpected    server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301830">3.2.3.6.       Observation search</a>
</h4>
<p>
    The  Observation search request allows the Smart Health Checks App to
    retrieve  various vital signs and risk factors from the PMS App datastore as
    FHIR  Observation resources.
</p>
<p>
    The PMS  FHIR Server shall support the Observation Search request as
    specified in the  HL7 FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#search">
        http://hl7.org/fhir/R4/http.html#search
    </a>
    . Note that both GET and POST  methods shall be supported by the FHIR Server
    to be complaint with the FHIR  specification. The Smart Health Checks App
    will use the GET method request.
</p>
<p>
    The  Observation search parameters shall also comply with Smart Forms
    Launcher  Server for the Aboriginal and Torres Strait Islander Health Check
    IG Capability  Statement
    <a
        href="https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Observation1"
    >
        https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Observation1
    </a>
    .
</p>
<p>
    The search  response entry resources shall comply with the following
    implementation guide  profiles:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="571">
    <tbody>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core    Observation
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-observation.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-observation.html
                    </a>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    Additional Observation profiles are provided to support the  extract of data
    from the PMS App as specified
    <a
        href="https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Observation1"
    >
        https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#Observation1
    </a>
    including those shown below:
</p>
<table border="1" cellspacing="0" cellpadding="0" width="571">
    <tbody>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core    Smoking Status
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-smokingstatus.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-smokingstatus.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Body    Height
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bodyheight.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bodyheight.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Body    Weight
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bodyweight.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bodyweight.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core BMI
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bmi.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bmi.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Head    Circumference
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-headcircum.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-headcircum.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Waist    Circumference
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-waistcircum.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-waistcircum.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Blood    Pressure
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bloodpressure.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-bloodpressure.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Heart    Rate
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-heartrate.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-heartrate.html
                    </a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="138" valign="top">
                <p>
                    AU Core Lipid    Result
                </p>
            </td>
            <td width="432" valign="top">
                <p>
                    <a
                        href="http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-lipid-result.html"
                    >
                        http://hl7.org.au/fhir/core/0.2.0-preview/StructureDefinition-au-core-lipid-result.html
                    </a>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    The FHIR  Server shall ensure that the patient search parameter, when
    provided, matches  the patient context associated with the Authorization
    access token.
</p>
<p>
    The FHIR  Server shall ensure that the returned results have a subject
    element that  matches the patient context associated with the Authorization
    access token.
</p>
<p>
    On success,  the FHIR server shall return a response with HTTP status 200
    OK, with a Bundle  resource with type “searchset”. Each Bundle entry shall
    include the following  elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="86" valign="top">
                <p>
                    total
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Total number    of matching resources, irrespective of the
                    _count parameter
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.relation
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Fixed: self
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.url
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    The full URL    to execute the same search request on this
                    FHIR server, including the _count    and _sort parameters
                    when provided.
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    timestamp
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Timestamp the    search results were processed
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    id
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    A unique id    of the searchset bundle for this request.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    Each Bundle  entry shall include the following elements
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="91" valign="top">
                <p>
                    search.mode
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    Fixed: match
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    fullUrl
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The full URL    to read the matched resource from this FHIR
                    server
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    resource
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The resource    that matched the search parameters
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    When the  _count parameter is specified, the results shall not return more
    than the  number specified.
</p>
<p>
    The FHIR  Server is not required to support paging as specified in the HL7
    FHIR RESTful  API,
    <a href="http://hl7.org/fhir/R4/http.html#paging">
        http://hl7.org/fhir/R4/http.html#paging
    </a>
    , and hence it is not required to  specify any additional link occurrences
    other than the self link described  above.
</p>
<p>
    When the  _sort parameter is specified, the results shall be returned in the
    specified  order, including those records not returned in the response due
    to the _count  parameter being specified.
</p>
<p>
    On failure,  the FHIR server shall return a response with one of the
    following HTTP status  and where possible, an OperationOutcome response as
    the body, providing further  details of the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="570">
    <tbody>
        <tr>
            <td width="155" valign="top">
                <p>
                    400 Bad    Request
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Resource    could not be parsed or failed basic FHIR
                    validation rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    401 Not    Authorized
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Authorization    is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    500 Internal    Server Error
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Unexpected    server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Hlk140057624"></a>
    <a name="_Toc142301831">
        3.2.3.7.       QuestionnaireResponse create
    </a>
</h4>
<p>
    The QuestionnaireResponse create request allows  the Smart Health Checks App
    to save a new QuestionnaireResponse resource to the  PMS FHIR Server’s
    Questionnaire Response datastore.
</p>
<p>
    The PMS FHIR Server shall support the QuestionnaireResponse create request
    as specified in the HL7 FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#create">
        http://hl7.org/fhir/R4/http.html#create
    </a>
    , where the body complies with the QuestionnaireResponse resource profile
    specified in HL7 Structured Data Capture 3.0.0 – STU 3 Implementation Guide
    <a
        href="http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html"
    >
        http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html
    </a>
    .
</p>
<p>
    The FHIR Server shall ensure that the subject reference  within the resource
    matches the patient context associated with the  Authorization access token.
</p>
<p>
    The FHIR Server shall allocate an initial  versionId and lastUpdated
    timestamp in UTC representing when the resource is created  on the server.
</p>
<p>
    On success, the FHIR server shall return a response  with HTTP status 201
    Created. The response body should be empty unless the  request included the
    HTTP header below, in which case the created resource shall  be returned in
    the body.
</p>
<p>
    Prefer: return=representation
</p>
<p>
    The response shall include the following HTTP  headers.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    Location
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Absolute or relative URL to the new resource using the
                    following    pattern:
                </p>
                <p>
                    /QuestionnaireResponse/{id}/_history/{versionId}.
                </p>
                <p>
                    For example:
                </p>
                <p>
                    Location:
                    /QuestionnaireResponse/da694d6f-f4a8-43bf-b48b-201d6f9f7d5b/_history/1
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    Last-Modified
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource lastUpdate timestamp in    UTC formatted as:.
                </p>
                <p>
                    {day-name}, {day} {month} {year} {hour}:{minute}:{second}
                    GMT
                </p>
                <ul>
                    <li>
                        day-name: 3 characters, capital case
                    </li>
                    <li>
                        day: 2 digits
                    </li>
                    <li>
                        month: 3 characters, capital case
                    </li>
                    <li>
                        year: 4 digits
                    </li>
                    <li>
                        hour: 2 digits
                    </li>
                    <li>
                        minute: 2 digits
                    </li>
                    <li>
                        second: 2 digits
                    </li>
                </ul>
                <p>
                    For example:
                </p>
                <p>
                    Last-Modified: Sat, 02 Feb 2013 12:02:47 GMT
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    ETag
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource versionId as a weak ETag. For example:
                </p>
                <p>
                    ETag: W/"1"
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    On failure, the FHIR server shall return a  response with one of the
    following HTTP status and where possible, an  OperationOutcome response as
    the body that provides further details of the  error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    400 Bad Request
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource could not be parsed or failed basic FHIR validation
                    rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not Authorized
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Authorization is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    422 Unprocessable Entity
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource violated applicable FHIR profiles or server
                    business rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500 Internal Server Error
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Unexpected server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301832">3.2.3.8.       QuestionnaireResponse update</a>
</h4>
<p>
    The QuestionnaireResponse update request allows  the Smart Health Checks App
    to save an update to an existing  QuestionnaireResponse resource by id in
    the PMS FHIR Server’s Questionnaire  Response datastore.
</p>
<p>
    The PMS FHIR Server shall support the QuestionnaireResponse update request
    as specified in the HL7 FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#update">
        http://hl7.org/fhir/R4/http.html#update
    </a>
    , where the body complies with the QuestionnaireResponse resource  profile
    specified in HL7 Structured Data Capture 3.0.0 – STU 3 Implementation  Guide
    <a
        href="http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html"
    >
        http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html
    </a>
    .
</p>
<p>
    The FHIR Server shall ensure that the subject  reference within the resource
    matches the patient context associated with the  Authorization access token.
</p>
<p>
    When the  request contains the HTTP header If-Match, as shown in the example
    below, the FHIR Server shall ensure that the  most recent version of the
    resource matches the versionId provided in the header  value. If the
    versionId does not match, the FHIR Server shall return a 412 Precondition
    Failed response.
</p>
<p>
    If-Match: W/"23"
</p>
<p>
    The FHIR Server shall store each version of the  QuestionnaireResponse
    resource. Each version of the resource shall be allocated  a unique
    versionId within the scope of the resource Id, and lastUpdated  timestamp in
    UTC representing when the version of the resource was created on  the
    server.
</p>
<p>
    On success, the FHIR server shall return a  response with HTTP status 200
    OK. The response body should be empty unless the update  request included
    the HTTP Prefer header below. In this case, the updated resource shall be
    returned  in the body.
</p>
<p>
    Prefer: return=representation
</p>
<p>
    The response shall include the following HTTP  headers.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    Last-Modified
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource lastUpdate timestamp    in UTC formatted as:.
                </p>
                <p>
                    {day-name}, {day} {month} {year} {hour}:{minute}:{second}
                    GMT
                </p>
                <p>
                    For example:
                </p>
                <p>
                    Last-Modified: Sat, 02 Feb 2013 12:02:47 GMT
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    ETag
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource versionId as a weak ETag. For example:
                </p>
                <p>
                    ETag: W/"2"
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    On failure, the FHIR server shall return a  response with one of the
    following HTTP status and where possible, an  OperationOutcome response as
    the body that provides further details of the  error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="547">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    400 Bad    Request
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource    could not be parsed or failed basic FHIR
                    validation rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not    Authorized
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Authorization    is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    412 Precondition    Failed
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    The    versionId does not match the value specified in the
                    If-Match header in the request.
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    422    Unprocessable Entity
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource    violated applicable FHIR profiles or server
                    business rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500    Internal Server Error
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Unexpected    server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301833">3.2.3.9.       QuestionnaireResponse search</a>
</h4>
<p>
    The QuestionnaireResponse search request allows  the Smart Health Checks App
    to search existing QuestionnaireResponse resources  in the PMS FHIR Server’s
    Questionnaire Response datastore.
</p>
<p>
    The PMS FHIR Server shall support the QuestionnaireResponse search request
    as specified in the HL7 FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#search">
        http://hl7.org/fhir/R4/http.html#search
    </a>
    . Note that both GET and POST methods shall be supported by the FHIR  Server
    to be complaint with the FHIR specification. The Smart Health Checks App
    will use the GET method request.
</p>
<p>
    The QuestionnaireResponse search parameters shall  also comply with Smart
    Forms Launcher Server for the Aboriginal and Torres  Strait Islander Health
    Check IG Capability Statement
    <a
        href="https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#QuestionnaireResponse1"
    >
        https://build.fhir.org/ig/aehrc/smart-forms-ig/CapabilityStatement-SFLauncherServerAboriginalTorresStraitIslanderHealthCheck.html#QuestionnaireResponse1
    </a>
    .
</p>
<p>
    In particular, the following search parameter  and combination shall be
    supported, and at least one search parameter shall exist  in the request.
</p>
<table border="1" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td width="173" valign="top">
                <p>
                    patient
                </p>
            </td>
            <td width="384" valign="top">
                <p>
                    Patient id or, type and id. Example:
                </p>
                <p>
                    Patient/87a339d0-8cae-418e-89c7-8651e6aab3c6
                </p>
            </td>
        </tr>
        <tr>
            <td width="173" valign="top">
                <p>
                    questionnaire
                </p>
            </td>
            <td width="384" valign="top">
                <p>
                    Questionnaire canonical url. Example:
                </p>
                <p>
                    http://www.health.gov.au/assessments/mbs/715
                </p>
            </td>
        </tr>
        <tr>
            <td width="173" valign="top">
                <p>
                    patient + questionnaire
                </p>
            </td>
            <td width="384" valign="top">
                <p>
                    Matches both patient id and    questionnaire canonical url.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    In addition, the following search result  parameters shall be supported.
</p>
<table border="1" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td width="174" valign="top">
                <p>
                    _count
                </p>
            </td>
            <td width="384" valign="top">
                <p>
                    max number resources returned in a single page. For example:
                </p>
                <p>
                    20
                </p>
            </td>
        </tr>
        <tr>
            <td width="174" valign="top">
                <p>
                    _sort
                </p>
            </td>
            <td width="384" valign="top">
                <p>
                    search parameters used to order the return results. Multiple
                    parameters may be provided, separated by a comma. Descending
                    order may be    specified using a – prefix.
                </p>
                <p>
                    Required sort parameters include:
                </p>
                <ul>
                    <li>
                        authored
                    </li>
                </ul>
                <p>
                    Example:
                </p>
                <p>
                    _sort= -authored
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    The FHIR Server shall ensure that the patient  search parameter, when
    provided, matches the patient context associated with  the Authorization
    access token.
</p>
<p>
    The FHIR Server shall ensure that the returned  results have a
    QuestionnaireResponse.subject that matches the patient context  associated
    with the Authorization access token.
</p>
<p>
    On success, the FHIR server shall return a  response with HTTP status 200
    OK, with a Bundle resource with type “searchset”.  Each Bundle entry shall
    include the following elements.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="86" valign="top">
                <p>
                    total
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Total number of matching    resources, irrespective of the
                    _count parameter
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.relation
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Fixed: self
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    link.url
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    The full URL to execute the    same search request on this
                    FHIR server, including the _count and _sort    parameters
                    when provided.
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    timestamp
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    Timestamp the search results    were processed
                </p>
            </td>
        </tr>
        <tr>
            <td width="86" valign="top">
                <p>
                    id
                </p>
            </td>
            <td width="481" valign="top">
                <p>
                    A unique id of the searchset    bundle for this request.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    Each Bundle entry shall include the following  elements
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="91" valign="top">
                <p>
                    search.mode
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    Fixed: match
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    fullUrl
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The full URL to read the matched    resource from this FHIR
                    server
                </p>
            </td>
        </tr>
        <tr>
            <td width="91" valign="top">
                <p>
                    resource
                </p>
            </td>
            <td width="475" valign="top">
                <p>
                    The resource that matched the    search parameters
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    When the _count parameter is specified, the  results shall not return more
    than the number specified.
</p>
<p>
    The FHIR Server is not required to support  paging as specified in the HL7
    FHIR RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#paging">
        http://hl7.org/fhir/R4/http.html#paging
    </a>
    , and hence it is not required to specify any additional link  occurrences
    other than the self link described above.
</p>
<p>
    When the _sort parameter is specified, the  results shall be returned in the
    specified order, including those records not  returned in the response due
    to the _count parameter being specified.
</p>
<p>
    On failure, the FHIR server shall return a  response with one of the
    following HTTP status and where possible, an  OperationOutcome response as
    the body, providing further details of the error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="570">
    <tbody>
        <tr>
            <td width="155" valign="top">
                <p>
                    400 Bad Request
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Resource could not be parsed or failed basic FHIR validation
                    rules
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    401 Not Authorized
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Authorization is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="155" valign="top">
                <p>
                    500 Internal Server Error
                </p>
            </td>
            <td width="415" valign="top">
                <p>
                    Unexpected server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<h4>
    <a name="_Toc142301834">3.2.3.10.    QuestionnaireResponse</a> read
</h4>
<p>
    <a name="_Hlk140057606">
        The QuestionnaireResponse read request allows the Smart Health Checks
        App to retrieve an existing QuestionnaireResponse resource by id from
        the PMS  FHIR Server’s Questionnaire Response datastore.
    </a>
</p>
<p>
    The PMS FHIR Server shall support the QuestionnaireResponse read request as
    specified in the HL7 FHIR Release 4 RESTful API,
    <a href="http://hl7.org/fhir/R4/http.html#read">
        http://hl7.org/fhir/R4/http.html#read
    </a>
    , where the response body complies with the HL7 Structured Data Capture
    3.0.0 – STU 3 Implementation Guide
    <a
        href="http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html"
    >
        http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html
    </a>
    .
</p>
<p>
    The FHIR Server shall ensure that the returned resource  has a
    QuestionnaireResponse.subject that matches the patient context associated
    with the Authorization access token.
</p>
<p>
    On success, the FHIR server shall return a  response with HTTP status 200
    OK, with the retrieved resource as the body. The  resource meta element
    shall include the versionId and lastUpdated elements as recorded  against
    the most recent version of the resource on the server.
</p>
<p>
    The response shall include the following HTTP  headers.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="567">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    Last-Modified
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource lastUpdate timestamp    in UTC formatted as:.
                </p>
                <p>
                    {day-name}, {day} {month} {year} {hour}:{minute}:{second}
                    GMT
                </p>
                <p>
                    For example:
                </p>
                <p>
                    Last-Modified: Sat, 02 Feb 2013 12:02:47 GMT
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    ETag
                </p>
            </td>
            <td width="405" valign="top">
                <p>
                    Resource versionId as a weak ETag. For example:
                </p>
                <p>
                    ETag: W/"2"
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    On failure, the FHIR server shall return a  response with one of the
    following HTTP status and where possible, an  OperationOutcome as the
    response body providing further details about the  error.
</p>
<table border="1" cellspacing="0" cellpadding="0" width="547">
    <tbody>
        <tr>
            <td width="162" valign="top">
                <p>
                    401 Not    Authorized
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Authorization    is required for the server interaction
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    404 Not    Found
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Resource    with the specified id does not exist
                </p>
            </td>
        </tr>
        <tr>
            <td width="162" valign="top">
                <p>
                    500    Internal Server Error
                </p>
            </td>
            <td width="385" valign="top">
                <p>
                    Unexpected    server error caused by an otherwise unhandled
                    exception.
                </p>
            </td>
        </tr>
    </tbody>
</table>
<div>
    <br clear="all"/>
    <hr
    align="left" size="1" width="33%" />
    <div id="ftn1">
        <p>
            <a
                href="https://csiroau.sharepoint.com/sites/SmartHealthChecks/Shared%20Documents/General/Phase%203/CSIRO-SmartHealthCheck-PMSIntegration_LB.docx#_ftnref1"
                name="_ftn1"
                title=""
            >
                [1]
            </a>
            RSA private and public keys  used are from
            <a
                href="https://connect2id.com/products/nimbus-jose-jwt/examples/jwk-generation"
            >
                https://connect2id.com/products/nimbus-jose-jwt/examples/jwk-generation
            </a>
        </p>
    </div>
    <div id="ftn2">
        <p>
            <a
                href="https://csiroau.sharepoint.com/sites/SmartHealthChecks/Shared%20Documents/General/Phase%203/CSIRO-SmartHealthCheck-PMSIntegration_LB.docx#_ftnref2"
                name="_ftn2"
                title=""
            >
                [2]
            </a>
            https://medium.com/javarevisited/json-web-key-set-jwks-94dc26847a34
        </p>
    </div>
</div>