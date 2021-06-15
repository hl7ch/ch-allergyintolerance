
Extension: AbatementDateTimeUvIps
Id: abatement-dateTime-uv-ips
Title: "Condition abatement date"
Description: "Extension defined by the IPS project to describe the abatement date for allergies"
* ^version = "1.0.0"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction[0] = $m49.htm#001
* ^context[0].type = #element
* ^context[0].expression = "AllergyIntolerance"
* . MS
* url MS
* valueDateTime only dateTime
* valueDateTime MS

Extension: AllergyIntoleranceCertainty
Id: allergyintolerance-certainty
Title: "certainty"
Description: "Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation in this reaction event."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* ^status = #draft
* ^date = "2015-02-21"
* ^publisher = "Health Level Seven, Inc. - FHIR WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "HL7"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "Certainty that the substance was the cause of the manifestation"
* . ^definition = "Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation in this reaction event."
* . ^comment = "When certainty is missing, it means no information exists (although it could be in narrative).  By contrast, the unknown code is used when there is an explicit assertion that certainty is not known, such as when a patient eats a meal and it is unknown which food caused the reaction."
* url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from AllergyIntoleranceCertainty (extensible)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension.valueString = "AllergyIntoleranceCertainty"
* value[x] ^binding.description = "Statement about the degree of clinical certainty that a specific substance was the cause of the manifestation in a reaction event."

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: AllergyIntoleranceCertainty
Target: "http://hl7.org/v3"
* -> "uncertaintyCode"