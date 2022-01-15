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

Instance: allergyintolerance-category-supplement
InstanceOf: CodeSystem
Usage: #definition
* url = "http://fhir.ch/ig/ch-allergyintolerance/CodeSystem/allergyintolerance-category-supplement"
* version = "20210615"
* name = "AllergyIntoleranceCategory"
* status = #draft
* experimental = true
* date = "2021-06-15"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Code supplement with translations of CHAllergyIntolerance category"
* jurisdiction = urn:iso:std:iso:3166#CH
* content = #supplement
* supplements = $allergyintolerance-category
* concept[0].code = #food
* concept[=].display = "Food"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Lebensmittel"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "aliment"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "alimento"
* concept[+].code = #medication
* concept[=].display = "Medication"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Arzneimittel"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "médicament"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "medicamento"
* concept[+].code = #environment
* concept[=].display = "Environment"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Umweltstoffe"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "environnement"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "ambiente"
* concept[+].code = #biologic
* concept[=].display = "Biologic"
* concept[=].designation[0].language = #de-CH
* concept[=].designation[=].value = "Biologische Präparate"
* concept[=].designation[+].language = #fr-CH
* concept[=].designation[=].value = "biologique"
* concept[=].designation[+].language = #it-CH
* concept[=].designation[=].value = "biologico"

Instance: CHAllergyIntoleranceReactionManifestationValueSet
InstanceOf: $shareablevalueset
Title: "CHAllergyIntoleranceReactionManifestationValueSet"
Description: "CH Allergy intolerance reaction manifestation value set, including codes values according to the Allergy Reaction (GPS) - IPS value set from SNOMED Clinical Terms®  for the documentation of manifestation of allergy or intolerance reactions"
Usage: #definition
* meta.source = "http://art-decor.org/fhir/ValueSet/2.16.756.5.30.1.1.11.82--20200925110235"
* url = "http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceReactionManifestationValueSet"
* version = "20220111"
* name = "CHAllergyIntoleranceReactionManifestationValueSet"
* status = #draft
* experimental = true
* date = "2022-01-11"
* publisher = "HL7 Switzerland"
* contact.name = "FHIR project team"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/" 
* description = "Value set including translations of CHAllergyIntolerance reaction manifestation"
* jurisdiction = urn:iso:std:iso:3166#CH
/* content = #supplement
* supplements = CHAllergyIntoleranceReactionManifestationValueSet*/
* compose.include.system = "http://snomed.info/sct"
* compose.include.concept[0].code = #422400008
* compose.include.concept[=].display = "Vomiting (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Vomiting"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "vomissement"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Erbrechen"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "vomito"
* compose.include.concept[+].code = #4386001
* compose.include.concept[=].display = "Bronchospasm (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Bronchospasm"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "bronchospasme"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Bronchospasmus"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "broncospasmo"
* compose.include.concept[+].code = #9826008
* compose.include.concept[=].display = "Conjunctivitis (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Conjunctivitis"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "conjonctivite"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Konjunktivitis"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "congiuntivite"
* compose.include.concept[+].code = #23924001
* compose.include.concept[=].display = "Tight chest (finding)"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Tight chest"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "oppression thoracique"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Engegefühl im Brustkorb"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "oppressione toracica"
* compose.include.concept[+].code = #24079001
* compose.include.concept[=].display = "Atopic dermatitis (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Atopic dermatitis"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "dermite atopique"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Atopische Dermatitis"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "dermatite atopica"
* compose.include.concept[+].code = #31996006
* compose.include.concept[=].display = "Vasculitis (disorder)"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Vasculitis"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "vasculite"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Vaskulitis"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "vasculite"
* compose.include.concept[+].code = #39579001
* compose.include.concept[=].display = "Anaphylaxis (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Anaphylaxis"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "anaphylaxie"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Anaphylaxie"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "anafilassi"
* compose.include.concept[+].code = #41291007
* compose.include.concept[=].display = "Angioedema (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Angioedema"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "angio-œdème"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Angioödem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "angioedema"
* compose.include.concept[+].code = #43116000
* compose.include.concept[=].display = "Eczema (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Eczema"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "eczéma"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Ekzem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "eczema"
* compose.include.concept[+].code = #49727002
* compose.include.concept[=].display = "Cough (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Cough"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "toux"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Husten"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "tosse"
* compose.include.concept[+].code = #51599000
* compose.include.concept[=].display = "Edema of larynx "
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Edema of larynx"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "œdème du larynx"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Kehlkopfödem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "edema della laringe"
* compose.include.concept[+].code = #62315008
* compose.include.concept[=].display = "Diarrhea (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Diarrhea"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "diarrhée"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Diarrhöe"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "diarrea"
* compose.include.concept[+].code = #70076002
* compose.include.concept[=].display = "Rhinitis (disorder)"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Rhinitis"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "rhinite"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Rhinitis"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "rinite"
* compose.include.concept[+].code = #73442001
* compose.include.concept[=].display = "Stevens-Johnson syndrome"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Stevens-Johnson syndrome"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "syndrome de Stevens-Johnson"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Stevens-Johnson-Syndrom"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "sindrome di Stevens-Johnson"
* compose.include.concept[+].code = #76067001
* compose.include.concept[=].display = "Sneezing (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Sneezing"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "éternuement"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Niesen"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "starnuto"
* compose.include.concept[+].code = #91175000
* compose.include.concept[=].display = "Seizure (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Seizure"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "convulsion"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Konvulsion"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "convulsione"
* compose.include.concept[+].code = #126485001
* compose.include.concept[=].display = "Urticaria (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Urticaria"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "urticaire"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Urtikaria"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "orticaria"
* compose.include.concept[+].code = #162290004
* compose.include.concept[=].display = "Dry eyes (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Dry eyes"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "sècheresse oculaire"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Trockene Augen"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "secchezza oculare"
* compose.include.concept[+].code = #195967001
* compose.include.concept[=].display = "Asthma (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Asthma"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "asthme"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Asthma"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "asma"
* compose.include.concept[+].code = #247472004
* compose.include.concept[=].display = "Wheal (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Wheal"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "éruption urticaire"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Urtikarielles Exanthem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "eruzione orticaria"
* compose.include.concept[+].code = #267036007
* compose.include.concept[=].display = "Dyspnea (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Dyspnea"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "dyspnée"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Dyspnoe"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "dispnea"
* compose.include.concept[+].code = #271757001
* compose.include.concept[=].display = "Papular eruption (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Papular eruption"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "éruption papuleuse"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Papulöses Exanthem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "eruzione papulare"
* compose.include.concept[+].code = #271759003
* compose.include.concept[=].display = "Bullous eruption (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Bullous eruption"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "éruption bulleuse"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Bullöses Exanthem"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "eruzione bollosa"
* compose.include.concept[+].code = #271807003
* compose.include.concept[=].display = "Eruption of skin (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Eruption of skin"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "éruption cutanée"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Hautausschlag"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "eruzione cutanea"
* compose.include.concept[+].code = #359610006
* compose.include.concept[=].display = "Ocular hyperemia (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Ocular hyperemia"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "hyperémie oculaire"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Okuläre Hyperämie"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "iperemia oculare"
* compose.include.concept[+].code = #410430005
* compose.include.concept[=].display = "Cardiorespiratory arrest (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Cardiorespiratory arrest"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "arrêt cardiorespiratoire"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Kardiorespiratorischer Stillstand"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "arresto cardiorespiratorio"
* compose.include.concept[+].code = #418363000
* compose.include.concept[=].display = "Itching of skin (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Itching of skin"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "prurit de la peau"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Pruritus"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "prurito cutaneo"
* compose.include.concept[+].code = #422587007
* compose.include.concept[=].display = "Nausea (finding)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Nausea"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "nausées"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Nausea"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "nausea"
* compose.include.concept[+].code = #698247007
* compose.include.concept[=].display = "Cardiac arrhythmia (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Cardiac arrhythmia"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "arythmie cardiaque"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Herzrhythmusstörung"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "aritmia cardiaca"
* compose.include.concept[+].code = #702809001
* compose.include.concept[=].display = "Drug reaction with eosinophilia and systemic symptoms (disorder)"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Drug reaction with eosinophilia and systemic symptoms"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "réaction médicamenteuse avec éosinophilie et symptômes systémiques"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Medikamentenreaktion mit Eosinophilie und systemischen Symptomen"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "reazione al medicamento con eosinofilia e sintomi sistemici"
* compose.include.concept[+].code = #768962006
* compose.include.concept[=].display = "Lyell syndrome (disorder)"
* compose.include.concept[=].designation[0].language = #en-US
* compose.include.concept[=].designation[=].value = "Lyell syndrome"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "syndrome de Lyell"
* compose.include.concept[=].designation[+].language = #de-CH
* compose.include.concept[=].designation[=].value = "Lyell-Syndrom"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "sindrome di Lyell"

