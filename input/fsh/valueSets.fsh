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
* ^publisher = "HL7 Switzerland"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "https://www.hl7.ch/"
* ^jurisdiction[0] = urn:iso:std:iso:3166#CH
* ^immutable = false
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyrighted material of the International Health Terminology Standards Development Organisation (IHTSDO). Where an implementation of this artefact makes use of SNOMED CT content, the implementer must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org"
* SNOMED_CT#424725004 "Agalsidase beta (substance)" 
* SNOMED_CT#424905009 "Agalsidase alfa (substance)"
* include codes from system SNOMED_CT where concept descendent-of #410942007
* include codes from system SNOMED_CT where concept descendent-of #762766007
* include codes from system SNOMED_CT where concept descendent-of #115668003
* include codes from system SNOMED_CT where concept descendent-of #425620007
* include codes from system SNOMED_CT where concept descendent-of #373873005
