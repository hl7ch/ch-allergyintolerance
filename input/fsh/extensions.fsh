
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
Title: "Allergy Intolerance certainty"
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

Extension: AllergyIntoleranceDuration
Id: allergyintolerance-duration
Title: "Allergy Intolerance duration"
Description: "The amount of time that the Adverse Reaction persisted."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration"
* ^status = #draft
* ^date = "2015-02-21"
* ^publisher = "Health Level Seven, Inc. - FHIR WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "HL7"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "How long Manifestations persisted"
* . ^definition = "The amount of time that the Adverse Reaction persisted."
* url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration" (exactly)
* value[x] 1..
* value[x] only Duration

Extension: AllergyIntoleranceLocation
Id: openEHR-location
Title: "openEHR location"
Description: "The anatomical location / body site(s) where the symptoms manifested."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/openEHR-location"
* ^status = #draft
* ^date = "2014-10-09"
* ^publisher = "Health Level Seven, Inc / openEHR project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..*
* . ^short = "Body site of manifestations"
* . ^definition = "The anatomical location / body site(s) where the symptoms manifested."
* url = "http://hl7.org/fhir/StructureDefinition/openEHR-location" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from SNOMEDCTBodyStructures (extensible)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension.valueString = "BodySite"
* value[x] ^binding.description = "Codes describing anatomical locations. May include laterality."

Extension: AllergyIntoleranceExposureDate
Id: openEHR-exposureDate
Title: "openEHR exposureDate"
Description: "Record of the date and/or time of the first exposure to the Substance for this Reaction Event."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate"
* ^status = #draft
* ^date = "2014-10-09"
* ^publisher = "Health Level Seven, Inc / openEHR project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "Date(/time) of first exposure to Substance"
* . ^definition = "Record of the date and/or time of the first exposure to the Substance for this Reaction Event."
* . ^comment = "Exposure can be more complicated by more than one exposure events leading to a reaction. Further details about the nature of the exposure can be provided in additional extensions, or as text in the Exposure Description extension."
* url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate" (exactly)
* value[x] 1..
* value[x] only dateTime

Extension: AllergyIntoleranceExposureDuration
Id: openEHR-exposureDuration
Title: "openEHR exposureDuration"
Description: "The amount of time the individual was exposed to the Substance."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration"
* ^status = #draft
* ^date = "2014-10-09"
* ^publisher = "Health Level Seven, Inc / openEHR project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "Amount of time individual was exposed to Substance"
* . ^definition = "The amount of time the individual was exposed to the Substance."
* url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration" (exactly)
* value[x] 1..
* value[x] only Duration

Extension: AllergyIntoleranceExposureDescription
Id: openEHR-exposureDescription
Title: "openEHR exposureDescription"
Description: "Text description about exposure to the Substance."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* ^status = #draft
* ^date = "2014-10-09"
* ^publisher = "Health Level Seven, Inc / openEHR project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "Text description about exposure to the Substance"
* . ^definition = "Text description about exposure to the Substance."
* url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription" (exactly)
* value[x] 1..
* value[x] only string

Extension: AllergyIntoleranceManagement
Id: openEHR-management
Title: "openEHR management"
Description: "Text description about the clinical management provided."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/openEHR-management"
* ^status = #draft
* ^date = "2014-10-09"
* ^publisher = "Health Level Seven, Inc / openEHR project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* . 0..1
* . ^short = "Clinical Management Description"
* . ^definition = "Text description about the clinical management provided."
* url = "http://hl7.org/fhir/StructureDefinition/openEHR-management" (exactly)
* value[x] 1..
* value[x] only string