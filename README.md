# CH AllergyIntolerance

CH AllergyIntolerance FHIR IG for Switzerland, see also [fhir.ch](https://fhir.ch).

* [CI Build](http://build.fhir.org/ig/hl7ch/ch-allergyintolerance/index.html) 

## Ballots
* Resolution Desks
   * [HL7 Switzerland STU2 Ballot (v2.0.0-ballot)](https://github.com/hl7ch/ch-allergyintolerance/blob/master/ballots/2.0.0_STU2-ballot.md)

***

# Working history
------------------------------------------------------------------
version 0.1.0 
following IPAG recommendations, based on IPS as near as reasonable
------------------------------------------------------------------

Pre: gofsh 0n AllergyIntoleranceIPS

C:\Workspace\Sushi\CH\CH-AllergyIntolerance\input

everything removed which doesn't seem to be needed for AllergyIntolerance, except aliases and invariants and index

fsh.backup-after--ips-filtering-to-allergies.zip

PatientUvIps profile removed from index
e.g. in profiles 53, 145
* subject only Reference(PatientUvIps)

PersonalRelationshipUvIps not yet removed from ValueSets and index

PractitionerRoleUvIps profile removed from index

PractitionerUvIps profile removed from index

ProblemSeverityUvIps ValueSet not yet removed from valuesets

QuantityIPS profile reintroduced just before RageIPS as referenced in profiles

SnomedIntlGps ValueSet removed from index (Description: """SNOMED International Global Patient Set (GPS) value set.    The value set includes all of the codes from the SNOMED International Global Patient Set (GPS)    subset of SNOMED CT.  The current version of the value set contains all concepts (21,782) from    the September 2019 release of the GPS (based on the July 2019 SNOMED CT International Edition    release) plus seven recently added concepts for Coronavirus (from the March 2020 Interim    International Release) (total 21,789 concepts).   )

absence-to-snomed-uv-ips Instance will need action to reduce it's absent data to be related to AllergyIntolerance t.b.d.

absent-unknown-uv-ips absent-unknown-uv-ips dito (the same as above) t.b.d.

current-smoking-status-uv-ips  Instance removed, also from index

fsh.backup-after-index-clearing.zip

to sushi-config.yaml added:
dependencies:
  ch.fhir.ig.ch-core:
    version: 1.2.0
    uri: http://fhir.ch/ig/ch-core/ImplementationGuide/ch.fhir.ig.ch-core
    id: chcore
	
PatientUvIps replaced by CHCoreCompositionPatientEPR



Note: this stage eventually could be used for a later mapping from CH-AllergyIntolerance to IPS AllergyIntolerance

Renaming AllergyIntoleranceUvIps to CHAllergyIntolerance, and its id, Description and other Metadata
In order to run sushi correctly, its reference had also to be adapted in
Profile: CompositionUvIps
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(AllergyIntoleranceUvIps)
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(CHAllergyIntolerance)
this has to be considered later after adaption to the correct CH Composition t.b.d.

Renaming ValueSet AllergyIntoleranceSubstanceConditionUvIps to CHAllergyIntoleranceSubstanceCondition
* code 1..1 MS
* code only CodeableConceptIPS
* code from CHAllergyIntoleranceSubstanceCondition (preferred)

Changing * ^identifier[0].value = "2.16.840.1.113883.11.22.65" to * ^identifier[0].value = "2.16.756.5.30.1.1.11.8" (received from eHealth Suisse)
* ^identifier[0].system to be verified t.b.d.

ValueSet: CHAllergyIntoleranceSubstanceCondition
Id: ch-allergy-intolerance-substance-condition
Title: "CH Allergy intolerance substance condition"
Description: "CH Allergy intolerance substance condition value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 762766007 | Edible substance (substance); all descendants of 406455002 | Allergen class (substance); all descendants of 425620007 | Metal (substance); all descendants of 373873005 | Pharmaceutical / biologic product (product); all descendants of 410942007 |Drug or medicament (substance)"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^identifier[0].use = #official
* ^identifier[0].system = "http://art-decor.org/ns/oids/vs"
* ^identifier[0].value = "2.16.756.5.30.1.1.11.8"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "eHealth Suisse"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.e-health-suisse.ch/startseite.html"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^immutable = false
* ^copyright = ....


backups:
valueSets.fsh.backup-before-alternative-for-codes.txt
profiles.fsh.backup-before-alternative-for-codes.txt

restore ValueSet AllergyIntoleranceSubstanceConditionUvIps
remove ...
* include codes from system SNOMED_CT where concept descendent-of #406455002
... which is inactive -> eventually to be replaced by superseeding descendent-of SCT t.b.d.

* code 1..1 MS
* code only CodeableConceptIPS
* code from CHAllergyIntoleranceSubstanceCondition (preferred)

Renaming allergyIntoleranceGPSCode allergyIntoleranceCHCode 

* code contains
    allergyIntoleranceCHCode 0..1 MS and
    absentOrUnknownAllergyIntolerance 0..1 MS
* code[allergyIntoleranceCHCode] only CodeableConceptIPS
* code[allergyIntoleranceCHCode] from CHAllergyIntoleranceSubstanceCondition (required)
* code[allergyIntoleranceCHCode] ^short = "Code for allergy or intolerance from the SNOMED CT GPS code set"
* code[allergyIntoleranceCHCode] ^definition = "Code for an allergy or intolerance statement that is selected from the SNOMED CT AllergyIntolerance CH code set."
* code[allergyIntoleranceCHCode] ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[allergyIntoleranceCHCode] ^binding.extension[0].valueString = "CH"
* code[allergyIntoleranceCHCode] ^binding.description = "Codes....

AllergyintolerancesubstanceconditionGPS removed.



Note: both ValuSets point to the same codes sets at the moment, but the intension is, that the dedicated SNOMED CT AllergyIntolerance CH code Set is later available on 
* ^identifier[0].system = "http://art-decor.org/ns/oids/vs"
* ^identifier[0].value = "2.16.756.5.30.1.1.11.8"
and - whether there are declared includes in the ValueSet definition or not - can be retrieved from there t.b.d.

profiles.fsh.backup-after-alternative-for-codes.txt
valueSets.fsh.backup-after-alternative-for-codes.txt

The following statements seems to be redundant information, as mandatory elements are implicitley MS (must support)
* patient MS
could probably be removed together with patient.reference 1.. MS  ?  (done)
removed:
* patient.reference 1.. MS

removed:
* asserter MS

inserted:
* reaction.substance MS
* reaction.substance only CodeableConceptIPS
* reaction.substance.coding from CHAllergyIntoleranceSubstanceCondition (required)

inserted:
* reaction.extension contains $ext-allergyintolerance-certainty named certainty 0..1
* reaction.extension[certainty] ^short = "Gewissheit: Angabe über den Grad der Gewissheit (aus klinischer Sicht), dass die spezifische Substanz die Manifestation ausgelöst hat"
* reaction.extension[certainty] ^binding.extension[0].url = $vs-allergyintolerance-certainty
* reaction.extension[certainty] ^binding.extension[0].valueString = "CertaintyAllergyIntolerance"

removed:
* reaction.manifestation ^slicing.discriminator[0].type = #pattern
* reaction.manifestation ^slicing.discriminator[0].path = "$this"
* reaction.manifestation ^slicing.description = "Discriminated by the bound value set"
* reaction.manifestation ^slicing.rules = #open
* reaction.manifestation contains allergyIntoleranceReactionManifestationGPSCode 0..1 MS
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] only CodeableConceptIPS
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] from AllergyReactionGpsUvIps (required)
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^short = "Code for the allergy or intolerance reaction manifestation from the SNOMED CT GPS code set"
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^definition = "Code for an allergy or intolerance reaction manifestation statement that is selected from the SNOMED CT GPS code set."
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^binding.extension[0].valueString = "ReactionManifestationGPS"



inserted:
* reaction.extension contains $ext-allergyintolerance-duration named duration 0..1
* reaction.extension[duration] ^short = "Reaktionsdauer"
* reaction.extension contains $ext-openEHR-location named location 0..1
* reaction.extension[location] ^short = "Lokalisation der Reaktion"
* reaction.extension contains $ext-openEHR-exposureDate named exposureDate 0..1
* reaction.extension[exposureDate] ^short = "Expositionszeitpunkt"
* reaction.extension contains $ext-openEHR-exposureDuration named exposureDuration 0..1
* reaction.extension[exposureDuration] ^short = "Expositionsdauer"
* reaction.extension contains $ext-openEHR-exposureDescription named exposureDescription 0..1
* reaction.extension[exposureDescription] ^short = "Beschreibung der Exposition"
* reaction.extension contains $ext-openEHR-management named management 0..1
* reaction.extension[management] ^short = "Klinisches Management"


Removed the following profiles:
SimpleQuantityIPS
RatioIPS
RangeIPS
QuantityIPS

Removing the following value sets:
ProblemSeverityUvIps
HealthcareProfessionalRolesUvIps
PersonalRelationshipUvIps

leaving AllergyReactionGpsUvIps just in case (decision to be taken - t.b.d.)


fsh.backup-after-completing-all-fields-of-IPAG-recommendations.zip
CH-AllergyIntolerance.backup-after-completing-all-fields-of-IPAG-recommendations.zip

IG Publisher (_genonce) detects the following error inherited from IPS AllergyIntolerance-uv-ips:
Caused by: org.hl7.fhir.exceptions.DefinitionException: Versuch ein Element zu sclicen, das sich nicht wiederholt: AllergyIntolerance.code/AllergyIntolerance.code von http://hl7.org/fhir/StructureDefinition/AllergyIntolerance in http://fhir.ch/ig/ch-allergyintolerance/StructureDefinition/ch-allergyintolerance

=> verified checking in http://hl7.org/fhir/R4/profiling.html#slicing
"One common feature of constraining StructureDefinitions is to take an element that may occur more than once (e.g. in a list), and then split the list into a series of sub-lists,..."
code is 1..1 (or 0..1 in base resource) => can't be sliced, misuse in AllergyIntolerance-uv-ips
=> removing slices in code including code[absentOrUnknownAllergyIntolerance] 

removed
* reaction.substance.coding from CHAllergyIntoleranceSubstanceCondition (required)
because of solution in base resource chosen

changed in ValueSet: CHAllergyIntoleranceSubstanceCondition
* ^publisher = "HL7 Switzerland"
* ^contact[0].telecom[0].value = "https://www.hl7.ch/"

* reaction.extension[dummy] ^short translations taken from HL7 and openEHR extension

removed:
ValueSet: NoAllergiesInfoUvIps
ValueSet: AllergyIntoleranceSubstanceConditionUvIps
Instance: absent-unknown-uv-ips
Instance: absence-to-snomed-uv-ips
Instance: severity-loinc-uv-ips
Instance: severity-snomedct-uv-ips

introduced:
Instance CH-AllergyIntolerance-IPAG-Recommendation-Table-1
InstanceOf CHAllergyIntolerance
Title: "CH AllergyIntolerance Example based on IPAG Recommendation Table 1"
Description: "CH AllergyIntolerance Example based on Table 1 of the Swiss Interprofessional Working Group (IPAG) recommendations for the Electronic Patient Record (EPR) from 2019-12-18"
Usage: #inline


Composition copied from CHEMEDMedicationDispenseCompostion

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
* ^copyright = "CC0-1.0"
* . ^short = "CH Allergy Intolerance  Composition"

* type = $SCT#722446000 "Allergy record (record artifact)"

* section[card].title ^short = "'Allergie und Intoleranz' in german ... -> check the translations t.b.d
* section[card].code = $loinc#48765-2 "Allergies and adverse reactions Document"

* section[dispense].entry only Reference(CHAllergyIntolerance)
* section[dispense].entry ^short = "Allergy Intolerance"	

Document copied from CHEMEDDocumentMedicationCard

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
* ^copyright = "CC0-1.0"
* . ^short = "CH Allergy Intolerance  Document"

* entry[Composition] 1..1
* entry[Composition] ^short = "Allergy Intolerance composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHAllergyIntoleranceCompositionEPR


error The type "CHAllergyIntoleranceCompositionEPR" does not match any of the allowed types: http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-composition-epr
  File: C:\Workspace\Sushi\CH\CH-AllergyIntolerance\input\fsh\profiles.fsh
  Line: 176

checking again and again - but although type = $SCT#722446000 "Allergy record (record artifact)" is in http://fhir.ch/ig/ch-epr-term/ValueSet-DocumentEntry.typeCode.html it is not recognized...

trying 419891008	Record artifact (record artifact)
same problem..

Alias: $DocumentEntry.typeCode = http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode
* type = $SCT#722446000 "Allergy record (record artifact)" changed to
* type = $DocumentEntry.typeCode#722446000 "Allergy record (record artifact)"

same problem...

trying with 
dependencies (adding)
ch.fhir.ig.ch-emed
* entry[Composition].resource only CHEMEDCompositionMedicationCard

same problem...

changing dependencies:
  ch.fhir.ig.ch-epr-term: 2.0.4
to
  ch.fhir.ig.ch-epr-term: current

same problem...

See also 
info  Found hl7.fhir.r4.core#4.0.1 in local cache.
info  Loaded package hl7.fhir.r4.core#4.0.1
(node:17280) Warning: Accessing non-existent property 'INVALID_ALT_NUMBER' of module exports inside circular dependency
(Use `node --trace-warnings ...` to show where the warning was created)
(node:17280) Warning: Accessing non-existent property 'INVALID_ALT_NUMBER' of module exports inside circular dependency

trying also with 
 ch.fhir.ig.ch-core: current 
problem persists...

commenting out CHAllergyIntoleranceDocumentEPR


Solution thanks to Michaela Ziegler, ahdis: using Canonical:
* entry[Composition].resource ^type.profile = Canonical(CHAllergyIntoleranceCompositionEPR)

=> now OK
version 0.1.0

--------------------
version 0.2.0
based on feedback IPAG, eHealthSuisse, Input from SNOMED CT Implementation Guide 
--------------------

dependencies:
  ch.fhir.ig.ch-core: 2.0.0
instead of former 1.2.0
  ch.fhir.ig.ch-epr-term: 2.0.5
instead of former 2.0.4

references to CHCoreCompositionPatientEPR replaced by CHCorePatientEPR
/* * extension[setId] ^short = "Set ID" */

* section[allergyIntolerance].author only Reference(... or CHCorePractitionerRoleEPR or ..
instead of CHCorePractitionerRole

=> error
resolved by replacing CHCorePractitionerRoleEPR by http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole-epr
=> naming inconsistency to reported t.b.d.

=> conformance to ch.fhir.ig.ch-core: 2.0.0 achieved


Renaming
ValueSet: CHAllergyIntoleranceSubstanceCondition
Id: ch-allergy-intolerance-substance-condition
to
ValueSet: CHAllergyIntoleranceValueSet
Id: ch-allergy-intolerance-value-set
Title: "CH Allergy Intolerance Value Set"
Description: "CH Allergy intolerance value set. This value set includes codes from SNOMED Clinical Terms® findings for the documentation of allergy, intolerance or conditions as well as its absence (no know allergies)"

new
ValueSet: CHAllergyIntoleranceSubstanceValueSet
Id: ch-allergy-intolerance-substance-value-set
Title: "CH Allergy Intolerance Substance Value Set"
Description: "CH Allergy intolerance substance value set. This value set includes codes from SNOMED Clinical Terms® substances for the documentation of substances of allergy or intolerance reactions"

* reaction.substance from CHAllergyIntoleranceSubstanceValueSet (preferred)

pre coordinated values added to reaction.substance and code, but no post coordinated values (awaiting them to be added as precoordinated o^codes by SNOMED CT)

fixing some minor instance (examples) issues.

