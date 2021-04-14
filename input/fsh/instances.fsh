Instance: CH-AllergyIntolerance-IPAG-Recommendation-Table-1
InstanceOf: CHAllergyIntolerance
Title: "CH AllergyIntolerance Example based on IPAG Recommendation Table 1"
Description: "CH AllergyIntolerance Example based on Table 1 of the Swiss Interprofessional Working Group (IPAG) recommendations for the Electronic Patient Record (EPR) from 2019-12-18"
Usage: #example
* code = urn:oid:2.16.756.5.30.1.1.11.8#764146007 "Penicillin (substance)"
* patient.reference = "Patient/MonikaWegmueller"
* clinicalStatus = $vs-clinicalStatus#active "Active"
* verificationStatus = $vs-verificationStatus#unconfirmed "Unconfirmed"
* type = #allergy "Allergy"
* category = #medication "Medication"
* criticality = #low "Low"
* lastOccurrence = 2019-01-05
* onsetDateTime = 2019-01-06
* note.text = "Prick-Test positiv"
* reaction.substance = urn:oid:2.16.840.1.113883.11.22.65#372687004 "Amoxicillin (substance)"
* reaction.manifestation[0] = $sct#2919008 "Nausea, vomiting and diarrhea"
* reaction.manifestation[1] = $sct#41836300 " Itching of skin (finding)"
* reaction.onset = 2019-01-05
* reaction.severity = #moderate "Moderate"
* reaction.description = "Itching of Skin during 24hours, 3 times vomitus"
* reaction.extension[location].valueCodeableConcept = $sct#32361000 "Popliteal fossa structure (body structure)"
* reaction.extension[duration].valueDuration.value = 24
* reaction.extension[duration].valueDuration.unit = "h"
* reaction.extension[duration].valueDuration.system = "http://unitsofmeasure.org"
* reaction.extension[duration].valueDuration.code = #h
* reaction.extension[exposureDate].valueDateTime = "2019-01-05T18:00:00+01:00"
* reaction.extension[exposureDuration].valueDuration.value = 10
* reaction.extension[exposureDuration].valueDuration.unit = "min"
* reaction.extension[exposureDuration].valueDuration.system = "http://unitsofmeasure.org"
* reaction.extension[exposureDuration].valueDuration.code = #min
* reaction.extension[certainty].valueCodeableConcept = #likely "Likely"
* reaction.extension[exposureDescription].valueString = "taking 1000 mg of Amoxicillin"
* reaction.extension[management].valueString = "antihistamine"
* reaction.note.text = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        <span id=\"co1\">\n\t\t\t\t\t\trespiratory tract infection whilst taking\n        </span>\n      </div>"

