Instance: CH-AllergyIntolerance-IPAG-Recommendation-Table-1
InstanceOf: $ch-allergyintolerance
Usage: #example
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#unconfirmed "Unconfirmed"
* type = #allergy
* category = #medication
* criticality = #low
* code = urn:oid:2.16.756.5.30.1.1.11.8#764146007 "Penicillin (substance)"
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
* reaction.extension[=].valueCodeableConcept = #likely "Likely"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "taking 1000 mg of Amoxicillin"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-management"
* reaction.extension[=].valueString = "antihistamine"
* reaction.substance = urn:oid:2.16.840.1.113883.11.22.65#372687004 "Amoxicillin (substance)"
* reaction.manifestation[0] = $sct#2919008 "Nausea, vomiting and diarrhea"
* reaction.manifestation[+] = $sct#418363000 " Itching of skin (finding)"
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
