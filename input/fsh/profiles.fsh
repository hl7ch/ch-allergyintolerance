Profile: CHAllergyIntolerance
Parent: CHCoreAllergyIntolerance
Id: ch-allergyintolerance
Title: "CH AllergyIntolerance"
Description: "This profile represents the constraints applied to the AllergyIntolerance resource in the Swiss context - in adaption of the definition by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the Swiss EPR, in a TransitionOfCare transaction or similar as an instance of an AllergyIntolerance resource constrained by this profile.
It documents the relevant allergies or intolerances for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of a Swiss patient in adaption of the one specified by the IPS project of HL7 International."
* . MS
* extension contains $ext-abatement-dateTime-uv-ips named abatement-datetime ..1 MS
* extension[abatement-datetime] ^short = "Abatement datetime"
* extension[abatement-datetime] ^definition = "The date or estimated date that the condition resolved or went into remission."
* clinicalStatus MS
* verificationStatus MS
* type MS
* category MS
* criticality MS
* code 1.. MS
* code from $CHAllergyIntoleranceValueSet (extensible)
* onsetDateTime only dateTime
* onsetDateTime MS
* reaction MS
* reaction.extension[certainty] ^short = "Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation in this reaction event."
* reaction.extension[duration] ^short = "The amount of time that the Adverse Reaction persisted"
* reaction.extension[location] ^short = "The anatomical location / body site(s) where the symptoms manifested"
* reaction.extension[exposureDate] ^short = "Record of the date and/or time of the first exposure to the Substance for this Reaction Event."
* reaction.extension[exposureDuration] ^short = "The amount of time the individual was exposed to the Substance"
* reaction.extension[exposureDescription] ^short = "Text description about exposure to the Substance"
* reaction.extension[management] ^short = "Text description about the clinical management provided."
* reaction.substance MS
* reaction.substance from $CHAllergyIntoleranceReactionSubstanceValueSet (extensible)
* reaction.manifestation from $CHAllergyIntoleranceReactionManifestationValueSet (extensible)
* reaction.manifestation MS 
* reaction.onset MS
* reaction.severity MS

Profile: CHAllergyIntoleranceCompositionEPR
Parent: CHCoreCompositionEPR
Id: ch-allergyintolerance-composition-epr
Title: "CH AllergyIntolerance Composition"
Description: "Definition of the composition for the allergy intolerance document"
* . ^short = "CH AllergyIntolerance  Composition"
* language ^short = "Language of the document"
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
/* * extension[setId] ^short = "Set ID" */
/* * extension[versionNumber] ^short = "Version number" */
* extension[informationRecipient] ^short = "A recipient of this document (person or organization)"
* extension[dataEnterer] ^short = "Person who entered information into this document if it is a person other than the author"
* identifier ^short = "Identification number of the document"
* status = #final (exactly)
* type = $sct#722446000
* type ^short = "Document type"
* subject ^short = "A patient for whom this document instance was created"
* date ^short = "The document's creation date and time"
* author ^short = "The author of the document (person or device)"
* author.extension 0..1
* author.extension only EPRTime
* author.extension ^short = "Timestamp of the authorship/data input"
* title ^short = "'Allergie Intoleranzen' in german or 'allergie intolérance' in french or 'allergie intolleranza' in italian or 'Allergy Intolerance' in english or titles in other languages are also allowed"
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
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section contains
    allergyIntolerance 1..1 and
    annotation 0..1
* section[allergyIntolerance] ^short = "Allergy Intolerance"
* section[allergyIntolerance].extension ^slicing.discriminator[0].type = #value
* section[allergyIntolerance].extension ^slicing.discriminator[0].path = "url"
* section[allergyIntolerance].extension ^slicing.rules = #open
* section[allergyIntolerance].title 1..1
* section[allergyIntolerance].title ^short = "'Allergie und Intoleranzen' in german or 'alergie et intolérance' in french or 'allergia e intolleranze' in talian or 'Allergy Intolerance' in english                         or titles in other languages are also allowed"
* section[allergyIntolerance].code 1..
* section[allergyIntolerance].code = $loinc#48765-2
* section[allergyIntolerance].author only Reference(CHCorePractitionerEPR or CHCorePractitionerRoleEpr or Device or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)
* section[allergyIntolerance].author ^short = "The author of the section (person or device) if different from the author/timestamp of the document"
* section[allergyIntolerance].author.extension 0..1
* section[allergyIntolerance].author.extension only EPRTime
* section[allergyIntolerance].author.extension ^short = "Timestamp of the authorship/data input"
* section[allergyIntolerance].author.reference 1..
* section[allergyIntolerance].text 0..1
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
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
/* section[annotation].entry 0..*
* section[annotation].entry ^short = "General comments"
* section[annotation].entry.reference 1..
* section[annotation].section 0..0
*/


Profile: CHAllergyIntoleranceDocumentEPR
Parent: CHCoreDocumentEPR
Id: ch-allergyintolerance-document-epr
Title: "CH AllergyIntolerance Document"
Description: "Definition of the bundle for the allergy intolerance document"
* . ^short = "CH AllergyIntolerance Document"
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
* entry[Composition].resource ^type.profile = Canonical(CHAllergyIntoleranceCompositionEPR)

Profile: CHAllergyIntoleranceCondition
Parent: CHCoreCondition
Id: ch-allergyintolerance-condition
Title: "CH AllergyIntolerance Condition"
Description: "This profile represents the constraints applied to the Condition resource in the context of AllergyIntolerance as a problem-list item or a encounter-diagnosis entry in the Swiss realm - in adaption of the respective usecases provided in the Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance."
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of a Swiss patient in adaption of the one specified by the IPS project of HL7 International."
* . MS
* clinicalStatus MS
* verificationStatus MS
* category MS
* severity MS
* code 1.. MS
* code from $CHAllergyIntoleranceConditionValueSet (extensible)
* bodySite MS
* subject only Reference(CHCorePatient)
* onset[x] MS
* onset[x] ^slicing.discriminator.type = #type
* onset[x] ^slicing.discriminator.path = "$this"
* onset[x] ^slicing.rules = #closed
* onsetDateTime[onsetDateTime] only dateTime
* onsetDateTime[onsetDateTime] ^sliceName = "onsetDateTime"
* onsetDateTime[onsetDateTime] ^mustSupport = true
* onsetPeriod[onsetPeriod] only Period
* onsetPeriod[onsetPeriod] ^sliceName = "onsetPeriod"
* onsetPeriod[onsetPeriod] ^mustSupport = false
* abatement[x] MS
* abatement[x] ^slicing.discriminator.type = #type
* abatement[x] ^slicing.discriminator.path = "$this"
* abatement[x] ^slicing.rules = #closed
* abatementDateTime only dateTime
* abatementDateTime MS
* abatementDateTime ^sliceName = "abatementDateTime"
* abatementPeriod only Period
* abatementPeriod ^sliceName = "abatementPeriod"
* abatementPeriod ^mustSupport = false
* asserter MS
* asserter ^definition = "Individual who is making the condition statement.\r\nInformation source."
