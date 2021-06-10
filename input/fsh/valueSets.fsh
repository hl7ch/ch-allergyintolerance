ValueSet: CHAllergyIntoleranceValueSet
Id: ch-allergy-intolerance-value-set
Title: "CH Allergy Intolerance Value Set"
Description: "CH Allergy intolerance value set. This value set includes codes from SNOMED Clinical Terms® findings for the documentation of allergy, intolerance or conditions as well as its absence (no know allergies)"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^identifier[0].use = #official
* ^identifier[0].system = "http://art-decor.org/ns/oids/vs"
* ^identifier[0].value = "2.16.756.5.30.1.1.11.8"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^immutable = false
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyrighted material of the International Health Terminology Standards Development Organisation (IHTSDO). Where an implementation of this artefact makes use of SNOMED CT content, the implementer must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org"
* SNOMED_CT#716186003 "No known allergy (situation)" 
* SNOMED_CT#716220001 "No known animal allergy (situation)"
* SNOMED_CT#428197003 "No known insect allergy (situation)"
* SNOMED_CT#409137002 "No known drug allergy (situation)"
* SNOMED_CT#428607008 "No known environmental allergy (situation)"
* SNOMED_CT#429625007 "No known food allergy (situation)"
* SNOMED_CT#1003774007 "No known Hevea brasiliensis latex allergy (situation)"
* SNOMED_CT#416098002 "Allergy to drug (finding)" 
* SNOMED_CT#293775001 "Allergy to cytarabine (finding)" 
* SNOMED_CT#294341007 "Allergy to flucytosine (finding)" 

ValueSet: CHAllergyIntoleranceSubstanceValueSet
Id: ch-allergy-intolerance-substance-value-set
Title: "CH Allergy Intolerance Substance Value Set"
Description: "CH Allergy intolerance substance value set. This value set includes codes from SNOMED Clinical Terms® substances for the documentation of substancies of allergy or intolerance reactions"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^identifier[0].use = #official
* ^identifier[0].system = "http://art-decor.org/ns/oids/vs"
* ^identifier[0].value = "2.16.756.5.30.1.1.11.8"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^immutable = false
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyrighted material of the International Health Terminology Standards Development Organisation (IHTSDO). Where an implementation of this artefact makes use of SNOMED CT content, the implementer must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org"
* SNOMED_CT#41410942007 "Drug or medicament (substance)" 
* SNOMED_CT#293775001 "Cytarabine (substance)" 
* SNOMED_CT#387155003 "Flucytosine (substance)" 
