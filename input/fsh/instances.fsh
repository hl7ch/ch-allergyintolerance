Instance: CH-AllergyIntolerance-IPAG-Recommendation-Table-1
InstanceOf: $ch-allergyintolerance
Usage: #example
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#unconfirmed "Unconfirmed"
* type = #allergy
* category = #medication
* criticality = #low
* code = $sct#764146007 "Penicillin (substance)"
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
* reaction.note.text = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        <span id=\"co1\">\n\t\t\t\t\t\trespiratory tract infection whilst taking\n        </span>\n      </div>"

Instance: ElisabethBroennimannByBFH
InstanceOf: $ch-core-patient
Usage: #example
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
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050717"
* name.family = "Agpar"
* name.given = "Marc"

Instance: allergyintolerance-clinical-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-clinical-supplement"
* version = "20210615"
* name = "AllergyIntoleranceClinicalStatus"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance clinical status"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-clinical
* concept[0].code = #active
* concept[=].display = "Active"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Aktiv"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Actif"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Attiva"
* concept[+].code = #inactive
* concept[=].display = "Inactive"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Inaktiv"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Inactif"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Inattiva"
* concept[+].code = #resolved
* concept[=].display = "Resolved"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Behoben"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Résolu"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Risolta"

Instance: allergyintolerance-verification-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-verification-supplement"
* version = "20210615"
* name = "AllergyIntoleranceVerificationStatus"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance verification status"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-verification
* concept[0].code = #unconfirmed
* concept[=].display = "Unconfirmed"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Unbestätigt"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Pas confirmé"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Non confermata"
* concept[+].code = #confirmed
* concept[=].display = "Confirmed"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Bestätigt"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Confirmé"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Confermata"
* concept[+].code = #refuted
* concept[=].display = "Refuted"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Widerlegt"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Réfuté"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Contestata"
* concept[+].code = #entered-in-error
* concept[=].display = "Entered in Error"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Irrtümlich eingegeben"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Saisie erronée"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Immessa per errore"

Instance: allergyintolerance-type-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-type-supplement"
* version = "20210615"
* name = "AllergyIntoleranceType"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance type"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-type
* concept[0].code = #allergy
* concept[=].display = "Allergy"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Allergie"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Allergie"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Allergia"
* concept[+].code = #intolerance
* concept[=].display = "Intolerance"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Intoleranz"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Intolérance"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Intolleranza"

Instance: allergyintolerance-criticality-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-criticality-supplement"
* version = "20210615"
* name = "AllergyIntoleranceCriticalityStatus"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance criticality status"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-criticality
* concept[0].code = #low
* concept[=].display = "Low Risk"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Geringes Risiko"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Risque faible"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Basso rischio"
* concept[+].code = #high
* concept[=].display = "High Risk"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Hohes Risiko"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Risque élevé"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Alto rischio"
* concept[+].code = #unable-to-assess
* concept[=].display = "Unable to Assess Risk"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Risikobewertung nicht möglich"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Impossible d’évaluer le risque"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Rischio non valutabile"

Instance: allergyintolerance-severity-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-severity-supplement"
* version = "20210615"
* name = "AllergyIntoleranceSeverityStatus"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance severity status"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-severity
* concept[0].code = #mild
* concept[=].display = "Mild"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Mild"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Faible"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Lieve"
* concept[+].code = #moderate
* concept[=].display = "Moderate"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Moderat"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Moyen"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Moderata"
* concept[+].code = #severe
* concept[=].display = "Severe"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Schwer"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "Grave"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "Grave"

