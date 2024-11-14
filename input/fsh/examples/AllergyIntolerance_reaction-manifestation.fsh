Instance: CH-AllergyIntolerance-MultipleReactionEntries
InstanceOf: CHAllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance - Allergy to penicillin with multiple reation entries"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#91936005 "Allergy to penicillin"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* reaction[0].substance = $sct#764146007 "Penicillin"
* reaction[=].manifestation[0] = $sct#271807003 "Eruption of skin"
* reaction[=].description = "Initial reaction to penicillin during first exposure."
* reaction[=].onset = "2023-01-15"
* reaction[=].severity = #moderate
* reaction[+].substance = $sct#764146007 "Penicillin"
* reaction[=].manifestation[0] = $sct#267036007	"Dyspnea"
* reaction[=].manifestation[+] = $sct#699376002 "Lip swelling"
* reaction[=].description = "Second reaction to penicillin during subsequent exposure."
* reaction[=].onset = "2023-06-10"
* reaction[=].severity = #severe


Instance: CH-AllergyIntolerance-MultipleManifestationEntries
InstanceOf: CHAllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance - Allergy to shrimps with multiple manifestation entries"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* category = #food
* criticality = #high
* code = $sct#419972009	"Allergy to shrimp"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* reaction.substance = $sct#278840001 "Shrimp"
* reaction.manifestation[0] = $sct#267036007 "Dyspnea"
* reaction.manifestation[+] = $sct#699376002 "Lip swelling"
* reaction.manifestation[+] = $sct#422587007 "Nausea"
* reaction.description = "Reaction to shrimps consumption."
* reaction.onset = "2023-07-21"
* reaction.severity = #severe