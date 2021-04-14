Profile: CHAllergyIntolerance
Parent: AllergyIntolerance
Id: ch-allergyintolerance
Title: "CH Allergy Intolerance"
Description: """This profile represents the constraints applied to the AllergyIntolerance resource in the Swiss context - in adaption of the definition by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the Swiss EPR, in a TransistionOfCare Document or similar as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of a Swiss patient in adaption of the one specified by the IPS project of HL7 International."
* . MS
/*
* extension contains AbatementDateTimeUvIps named abatement-datetime ..1 MS
* extension[abatement-datetime] ^short = "Abatement datetime"
* extension[abatement-datetime] ^definition = "The date or estimated date that the condition resolved or went into remission."
*/
* clinicalStatus only CodeableConceptIPS
* clinicalStatus MS
* verificationStatus only CodeableConceptIPS
* verificationStatus MS
* type MS
* criticality MS
* code 1..1 MS
* code only CodeableConceptIPS
* code from CHAllergyIntoleranceSubstanceCondition (preferred)
* patient only Reference(CHCoreCompositionPatientEPR or CHCorePatient)
* onsetDateTime only dateTime
* onsetDateTime MS
* reaction MS
* reaction.extension contains $ext-allergyintolerance-certainty named certainty 0..1
* reaction.extension[certainty] ^short = "certainty: Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation in this reaction event."
/* reaction.extension[certainty] ^binding.extension.url = $vs-allergyintolerance-certainty
* reaction.extension[certainty] ^binding.extension.valueString = "CertaintyAllergyIntolerance" 
*/
* reaction.extension contains $ext-allergyintolerance-duration named duration 0..1
* reaction.extension[duration] ^short = "The amount of time that the Adverse Reaction persisted"
* reaction.extension contains $ext-openEHR-location named location 0..1
* reaction.extension[location] ^short = "The anatomical location / body site(s) where the symptoms manifested"
* reaction.extension contains $ext-openEHR-exposureDate named exposureDate 0..1
* reaction.extension[exposureDate] ^short = "Record of the date and/or time of the first exposure to the Substance for this Reaction Event."
* reaction.extension contains $ext-openEHR-exposureDuration named exposureDuration 0..1
* reaction.extension[exposureDuration] ^short = "The amount of time the individual was exposed to the Substance"
* reaction.extension contains $ext-openEHR-exposureDescription named exposureDescription 0..1
* reaction.extension[exposureDescription] ^short = "Text description about exposure to the Substance"
* reaction.extension contains $ext-openEHR-management named management 0..1
* reaction.extension[management] ^short = "Text description about the clinical management provided."
* reaction.substance MS
* reaction.substance only CodeableConceptIPS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.onset MS
* reaction.severity MS

Profile: CHAllergyIntoleranceCompositionEPR
Parent: CHCoreCompositionEPR
Id: ch-allergyintolerance-composition-epr
Title: "CH Allergy Intolerance Composition Profile"
Description: "Definition of the composition for the allergy intolerance document"
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2021-04-09"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH Allergy Intolerance  Composition"
* language ^short = "Language of the document"
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
* extension[setId] ^short = "Set ID"
* extension[versionNumber] ^short = "Version number"
* extension[informationRecipient] ^short = "A recipient of this document (person or organization)"
* extension[dataEnterer] ^short = "Person who entered information into this document if it is a person other than the author"
* identifier ^short = "Identification number of the document"
* status = #final (exactly)
* type = $sct#722446000 "Allergy record (record artifact)"
* type ^short = "Document type"
* subject ^short = "A patient for whom this document instance was created"
* date ^short = "The document's creation date and time"
* author ^short = "The author of the document (person or device)"
* author.extension 0..1
* author.extension only EPRTime
* author.extension ^short = "Timestamp of the authorship/data input"
* title ^short = "'Allergie Intoleranzen' in german or 'allergie intolérance' in french or 'allergie intolleranza' in italian or 'Allergy Intolerance' in english                         or titles in other languages are also allowed"
* confidentiality.extension ^slicing.discriminator[0].type = #value
* confidentiality.extension ^slicing.discriminator[0].path = "url"
* confidentiality.extension ^slicing.rules = #open
* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"
* attester ^slicing.discriminator[0].type = #value
* attester ^slicing.discriminator[0].path = "mode"
* attester ^slicing.rules = #open
* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"
* custodian ^short = "The organization in whose name the document has been created"
* section 1..
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section[originalRepresentation] 1..1
* section[originalRepresentation] ^short = "Original representation"
* section[originalRepresentation].title ^short = "Original representation"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "PDF"
* section contains
    allergyIntolerance 1..1 and
    annotation 0..1
* section[allergyIntolerance] ^short = "Allergy Intolerance"
* section[allergyIntolerance].extension ^slicing.discriminator[0].type = #value
* section[allergyIntolerance].extension ^slicing.discriminator[0].path = "url"
* section[allergyIntolerance].extension ^slicing.rules = #open
* section[allergyIntolerance].title 1..1
* section[allergyIntolerance].title ^short = "'Allergie und Intoleranzen' in german or 'alergie et intolérance' in french or 'allergia e intolleranza' in talian or 'Allergy Intolerance' in english                         or titles in other languages are also allowed"
* section[allergyIntolerance].code 1..
* section[allergyIntolerance].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[allergyIntolerance].author only Reference(CHCorePractitionerEPR or CHCorePractitionerRole or Device or CHCoreCompositionPatientEPR or RelatedPerson or CHCoreOrganizationEPR)
* section[allergyIntolerance].author ^short = "The author of the section (person or device) if different from the author/timestamp of the document"
* section[allergyIntolerance].author.extension 0..1
* section[allergyIntolerance].author.extension only EPRTime
* section[allergyIntolerance].author.extension ^short = "Timestamp of the authorship/data input"
* section[allergyIntolerance].author.reference 1..
* section[allergyIntolerance].text 1..1
* section[allergyIntolerance].text ^short = "Human readable text of this section"
* section[allergyIntolerance].entry 0..*
* section[allergyIntolerance].entry only Reference(CHAllergyIntolerance)
* section[allergyIntolerance].entry ^short = "Allergy Intolerance"
* section[allergyIntolerance].entry.reference 1..
* section[allergyIntolerance].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english                         or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8 "Annotation comment Interpretation Narrative"
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].entry 0..*
* section[annotation].entry ^short = "General comments"
* section[annotation].entry.reference 1..
* section[annotation].section 0..0

/*
Profile: CHAllergyIntoleranceDocumentEPR
Parent: CHCoreDocumentEPR
Id: ch-allergyintolerance-document-epr
Title: "CH Allergy Intolerance Document Profile"
Description: "Definition of the bundle for the allergy intolerance document"
* ^version = "0.1.0"
* ^experimental = false
* ^date = "2021-04-09"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "CH Allergy Intolerance  Document"
* identifier 1..
* identifier ^short = "Identification number of the document"
* identifier.system 1..
* identifier.value 1..
* type = #document (exactly)
* timestamp ^short = "The document's creation date and time"
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Allergy Intolerance composition"
* entry[Composition].resource 1..1
* entry[Composition].resource only CHAllergyIntoleranceCompositionEPR
*/