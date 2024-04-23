Instance: CH-AllergyIntolerance-Document-Example
InstanceOf: CHAllergyIntoleranceDocumentEPR
Title: "CH-AllergyIntolerance-Document-Example"
Description: "Example for Bundle"
Usage: #example
* id = "ch-allergyintolerance-document-example"
* meta.lastUpdated = "2022-01-15T14:30:48.139+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2eadef87-8850-46e5-9557-1e08dcfaa759"
* type = #document
* timestamp = "2022-01-12T18:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/AllergyIntoleranceCompositionEPR"
* entry[=].resource = AllergyIntoleranceComposition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
/* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt */
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Custodian"
* entry[=].resource = Custodian
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmuellerRecipient"
* entry[=].resource = MonikaWegmuellerRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/AllergyIntolerance/AllergyToCatDander"
* entry[=].resource = AllergyToCatDander

Instance: CH-AllergyIntolerance-Composition-Example
InstanceOf: AllergyIntoleranceCompositionEPR
Title: "CH-AllergyIntolerance-Composition-Example"
Description: "Example for Composition of a CH AllergyIntolerance Composition for the Swiss EPR"
Usage: #example
* id = "ch-allergyintolerance-composition-example"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(ElisabethBroennimannByBFH)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4356b15f-4061-49d9-80bf-b84d23113a6a"
* status = #final
* type.coding[0] = $sct#722446000 "Allergy record (record artifact)"
* subject = Reference(ElisabethBroennimannByBFH)
* date = "2022-01-12T17:00:00+01:00"
* author[0].extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time"
* author[=].extension.valueDateTime = "2012-02-04T14:00:00+01:00"
* author[=] = Reference(FamilienHausarzt)
* author[+] = Reference(Hausarzt)
* title = "Allergies and adverse reactions Document"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal"
* custodian = Reference(Custodian)
* section[allergyIntolerance].title = "Allergy Intolerance"
* section[allergyIntolerance].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[allergyIntolerance].entry = Reference(CH-AllergyIntolerance-IPAG-Recommendation-Table-1)

Instance: AllergyIntoleranceComposition
InstanceOf: Composition
Title: "AllergyIntoleranceComposition"
Usage: #example
Description: "Example for Composition of a CH AllergyIntolerance Composition for the Swiss EPR"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MonikaWegmuellerRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4356b15f-4061-49d9-80bf-b84d23113a6a"
* status = #final
* type.coding[0] = $sct#722446000 "Allergy record (record artifact)"
* subject = Reference(MonikaWegmueller)
* date = "2022-01-12T17:00:00+01:00"
* author[0].extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time"
* author[=].extension.valueDateTime = "2012-02-04T14:00:00+01:00"
* author[=] = Reference(FamilienHausarzt)
* author[+] = Reference(Hausarzt)
* title = "Allergies and adverse reactions Document"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal"
* custodian = Reference(Custodian)
* section.title = "Allergy Intolerance"
* section.code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section.entry = Reference(AllergyToCatDander)

Instance: AllergyToCatDander
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #low
* code = $sct#232346004 "Allergy to cat dander (finding)"
* patient.reference = "Patient/MonikaWegmueller"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Animal shelter"
* reaction.substance = $sct#260152009 "Cat dander (substance)"
* reaction.manifestation[0] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.severity = #mild

Instance: ElisabethBroennimannByBFH
InstanceOf: $ch-core-patient
Usage: #example
Description: "Example for Patient"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n      <p>\n        <b>id</b>: ElisabethBroennimannByBFH\n      </p>\n      <p>\n        <b>meta</b>: \n      </p>\n      <p>\n        <b>name</b>: Elisabeth Brönnimann-Bertholet \n      </p>\n      <p>\n        <b>telecom</b>: ph: +41 32 321 61 11(HOME), elisabeth@broennimann.today\n      </p>\n      <p>\n        <b>gender</b>: FEMALE\n      </p>\n      <p>\n        <b>birthDate</b>: May 3, 1937\n      </p>\n      <p>\n        <b>address</b>: Kreuzweg 11 Biel/Bienne 2500 (HOME)\n      </p>\n      <p>\n        <b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus code '2' = '2', given as 'verheiratet'}; {http://terminology.hl7.org/CodeSystem/v3-MaritalStatus code 'M' = 'Married', given as 'married'})</span>\n      </p>\n    </div>"
* name.family = "Brönnimann-Bertholet"
* name.given = "Elisabeth"
* telecom[0].system = #phone
* telecom[=].value = "+41 32 321 61 11"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "elisabeth@broennimann.today"
* gender = #female
* birthDate = "1937-05-03"
* address.use = #home
* address.line = "Kreuzweg 11"
* address.city = "Biel/Bienne"
* address.postalCode = "2500"
* maritalStatus.coding[0] = $ech-11-maritalstatus#2 "verheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "married"
* generalPractitioner.reference = "Practitioner/AgparMarc"

Instance: AgparMarc
InstanceOf: $ch-core-practitioner
Usage: #example
Description: "Example for Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050717"
* name.family = "Agpar"
* name.given = "Marc"

Instance: Hausarzt
InstanceOf: CHCoreOrganizationEPR
Title: "Hausarzt"
Description: "Example for Organization"
Usage: #definition
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234438"
* name = "Hausarzt"
* address.line = "Krankenstrasse 2"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"

Instance: FamilienHausarzt
InstanceOf: CHCorePractitionerEPR
Title: "Familien Hausarzt"
Description: "Example for Practitioner"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234438"
* name.family = "Hausarzt"
* name.given = "Familien"
* address.line = "Krankenstrasse 2"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"

Instance: FamilienHausarztAtHausarzt
InstanceOf: CHCorePractitionerRoleEpr
Title: "Familien Hausarzt @ Hausarzt"
Description: "Example for PractitionerRole"
Usage: #example
* practitioner.reference = "Practitioner/FamilienHausarzt"
* organization.reference = "Organization/Hausarzt"

Instance: Custodian
InstanceOf: CHCoreOrganizationEPR
Title: "Custodian"
Description: "Example for Organization"
Usage: #definition
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234438"
* name = "Hausarzt"

Instance: MonikaWegmueller
InstanceOf: CHCorePatientEPR
Title: "Monika Wegmueller"
Description: "Example for Patient"
Usage: #definition
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.999.1"
* identifier.value = "11111111"
* name.family = "Wegmüller"
* name.given = "Monika"
* gender = #female
* birthDate = "1943-05-15"
* address.line = "Wiesenstr. 12"
* address.city = "Zürich"
* address.postalCode = "8003"
* address.country = "CH"

Instance: MonikaWegmuellerRecipient
InstanceOf: CHCorePatient
Title: "Monika Wegmueller as Information Recipient"
Description: "Example for Patient"
Usage: #definition
* name.family = "Wegmüller"
* name.given = "Monika"
* address.line = "Wiesenstr. 12"
* address.city = "Zürich"
* address.postalCode = "8003"
* address.country = "CH"

Instance: CH-AllergyIntolerance-IPAG-Recommendation-Table-1
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#unconfirmed "Unconfirmed"
* type = #allergy
* category = #medication
* criticality = #low
* code = http://snomed.info/sct#91936005 "Allergy to penicillin (finding)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* onsetDateTime = "2019-01-06"
* lastOccurrence = "2019-01-05"
* note.text = "Prick-Test positiv"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/openEHR-location"
* reaction.extension[=].valueCodeableConcept = $sct#32361000 "Popliteal fossa structure (body structure)"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration"
* reaction.extension[=].valueDuration = 24 'h' "h"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate"
* reaction.extension[=].valueDateTime = "2019-01-05T18:00:00+01:00"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration"
* reaction.extension[=].valueDuration = 10 'min' "min"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#likely "Likely"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "taking 1000 mg of Amoxicillin"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-management"
* reaction.extension[=].valueString = "antihistamine"
* reaction.substance = $sct#372687004 "Amoxicillin (substance)"
* reaction.manifestation[0] = $sct#2919008 "Nausea, vomiting and diarrhea"
* reaction.manifestation[+] = $sct#418363000 "Itching of skin (finding)"
* reaction.description = "Itching of Skin during 24hours, 3 times vomitus"
* reaction.onset = "2019-01-05"
* reaction.severity = #moderate
* reaction.note.text = "respiratory tract infection whilst taking"

Instance: CH-AllergyIntolerance-Condition-Visit1-Usecase-1
InstanceOf: ch-allergyintolerance-condition
Usage: #example
Description: "Example for Condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* severity = $sct#6736007 "Moderate (severity modifier) (qualifier value)"
* code = $sct#126485001 "Urticaria (disorder)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* onsetDateTime = "2021-12"

Instance: CH-AllergyIntolerance-Condition-Visit2-Usecase-1
InstanceOf: ch-allergyintolerance-condition
Usage: #example
Description: "Example for Condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* severity = $sct#6736007 "Moderate (severity modifier) (qualifier value)"
* code = $sct#860765003 "Allergy to thiazide (finding)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
/* build error: con-4: 'If condition is abated, then clinicalStatus must be either inactive, resolved, or remission' Rule 'If condition is abated, then clinicalStatus must be either inactive, resolved, or remission' Failed
abatementDateTime  = "2022-02-07"
*/

Instance: CH-AllergyIntolerance-Usecase-2
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* extension.url = "http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips"
* extension.valueDateTime = "2022-02-07"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#unconfirmed "Unconfirmed"
* type = #allergy
* category = #medication
* criticality = #low
* code = $sct#860765003 "Allergy to thiazide (finding)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
/* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "taking diuretic" */
* reaction.substance = $sct#387525002 "Hydrochlorothiazide (substance)"
* reaction.manifestation[0] = $sct#126485001 "Urticaria (disorder)"
* reaction.severity = #moderate
* reaction.exposureRoute = $sct#26643006 "Oral route (qualifier value)"

Instance: CH-AllergyIntolerance-Condition-Usecase-3
InstanceOf: ch-allergyintolerance-condition
Usage: #example
Description: "Example for Condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#differential
* category = $condition-category#encounter-diagnosis
* severity = $sct#255604002 "Mild"
* code = $sct#292044008 "Aspirin adverse reaction (disorder)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"

Instance: CH-AllergyIntolerance-Usecase-3
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* category = #medication
* criticality = #low
* code = $sct#292044008 "Aspirin adverse reaction (disorder)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
/* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "oral taken diuretic"*/
* reaction.substance = $sct#387458008 "Aspirin (substance)"
* reaction.manifestation[0] = $sct#60862001 "Tinnitus (finding)"
* reaction.manifestation[+] = $sct#418363000 "Itching of skin (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#26643006 "Oral route (qualifier value)"

Instance: CH-AllergyIntolerance-Usecase-5
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
/* contained = AllergyToCatDander*/
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #low
* code = $sct#232346004 "Allergy to cat dander (finding)"
* patient.reference = "Patient/MonikaWegmueller"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Animal shelter"
* reaction.substance = $sct#260152009 "Cat dander (substance)"
* reaction.manifestation[0] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.severity = #mild

Instance: CH-AllergyIntolerance-Usecase-6
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #food
* criticality = #high
* code = $sct#91935009 "Allergy to peanut (finding)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
/* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "per os"*/
* reaction.substance = $sct#417889008 "Arachis oil (substance)"
* reaction.manifestation[0] = $sct#39579001 "Anaphylaxis (disorder)"
* reaction.severity = #severe
* reaction.exposureRoute = $sct#26643006 "Oral route (qualifier value)"

/*Instance: CH-AllergyIntolerance-Observation-Usecase-7
InstanceOf: Observation
Usage: #example
Description: "Example for Observation"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#58778-2 "Peanut recombinant (rAra h) 2 IgE Ab [Units/volume] in Serum"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* effectiveDateTime = "2017-11-10T08:20:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueQuantity = >100 'k[IU]/L' "k[IU]/L"
* interpretation = $sct#119364003 "Serum specimen"*/

Instance: CH-AllergyIntolerance-Condition-Usecase-7
InstanceOf: ch-allergyintolerance-condition
Usage: #example
Description: "Example for Condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* severity = $sct#6736007 "Moderate (severity modifier) (qualifier value)"
* code = $sct#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"

Instance: CH-AllergyIntolerance-Usecase-7
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #environment
* criticality = #low
* code = $sct#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Works in ICU"
* reaction.substance = $sct#1003751008 "Hevea brasiliensis latex (substance)"
* reaction.manifestation[0] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.manifestation[+] = $sct#418363000 "Itching of skin (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#6064005 "Topical route (qualifier value)"

Instance: CH-AllergyIntolerance-Usecase-8
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code = $sct#716186003 "No known allergy (situation)"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
