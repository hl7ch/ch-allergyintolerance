All significant changes to this FHIR implementation guide will be documented on this page.

### STU 2 Ballot

#### Value Sets
* [Issue 66](https://github.com/hl7ch/ch-allergyintolerance/issues/66) - Error in DE translation corrected
* [Issue 67](https://github.com/hl7ch/ch-allergyintolerance/issues/67) - Correction of two codes

#### Fixed
* [Issue 75](https://github.com/hl7ch/ch-allergyintolerance/issues/75) - Link name adjusted
  
### STU 1 Ballot

#### Added
Navigation within the Implementation Guide for a better usability:
* [Issue 22](https://github.com/hl7ch/ch-allergyintolerance/issues/22) - Besseren Zugang zu den einzelnen Seiten des IG ermöglichen
* [Issue 20](https://github.com/hl7ch/ch-allergyintolerance/issues/20) - Home
* [Issue 19](https://github.com/hl7ch/ch-allergyintolerance/issues/19) - Home: Download link for npm package
* [Issue 12](https://github.com/hl7ch/ch-allergyintolerance/issues/12) - Home - Add Links to referred specifications, copyright
* [Issue 11](https://github.com/hl7ch/ch-allergyintolerance/issues/11) - Extend Menu and Description for Implementation Guide
	* [Home](index.html) 

Clarification about the use of and implementation of AllergyIntolerance IG:
* [Issue 26](https://github.com/hl7ch/ch-allergyintolerance/issues/26) - Artifacts Summary: Beschreibung der beiden Profile "CH Allergy Intolerance" und "CH Allergy Intolerance Condition" ist weitgehend identisch
	* [Artifacts](artifacts.html) 
* [Issue 31](https://github.com/hl7ch/ch-allergyintolerance/issues/31) - Provide Use Cases -- CH Allergy Intolerance
* [Issue 23](https://github.com/hl7ch/ch-allergyintolerance/issues/23) - CH Allergy Intolerance Condition: Beispiel fehlt
* [Issue 17](https://github.com/hl7ch/ch-allergyintolerance/issues/17) - CH Allergy Intolerance Condition
* [Issue 14](https://github.com/hl7ch/ch-allergyintolerance/issues/14) - Examples are missing
	* [Use Cases](usecase-english.html) 
	* [Example AllergyIntolerance](StructureDefinition-ch-allergyintolerance-examples.html) 
	* [Example composition](StructureDefinition-ch-allergyintolerance-composition-epr-examples.html) 
	* [Example condition](StructureDefinition-ch-allergyintolerance-condition-examples.html) 
	* [Example document](StructureDefinition-ch-allergyintolerance-document-epr.html) 
* [Issue 13](https://github.com/hl7ch/ch-allergyintolerance/issues/13) - Home - Goal of Implementation Guide?
	* [Home](index.html) 

#### Changed / Updated
Removed own extensions, replaced through existing ones:
* [Issue 16](https://github.com/hl7ch/ch-allergyintolerance/issues/16) - Extensions
	* [CH Allergy Intolerance](StructureDefinition-ch-allergyintolerance.html) 
* [Issue 15](https://github.com/hl7ch/ch-allergyintolerance/issues/15) - Condition abatement date
	* [CH Allergy Intolerance Condition](StructureDefinition-ch-allergyintolerance-condition.html) 

References to CH Core profiles:
* [Issue 21](https://github.com/hl7ch/ch-allergyintolerance/issues/21) - CH Allergy Intolerance
	* [CH Allergy Intolerance](StructureDefinition-ch-allergyintolerance.html) 
	
Content and integration of value sets:
* [Issue 37](https://github.com/hl7ch/ch-allergyintolerance/issues/37) - Allergy or non-allergic hypersensivity to vancomycin
* [Issue 35](https://github.com/hl7ch/ch-allergyintolerance/issues/35) - CH Allergy Intolerance Value Set
* [Issue 32](https://github.com/hl7ch/ch-allergyintolerance/issues/32) - Put Allergy value set to extensible
* [Issue 28](https://github.com/hl7ch/ch-allergyintolerance/issues/28) - make value set extensible? CH Allergy Intolerance Value Set
* [Issue 27](https://github.com/hl7ch/ch-allergyintolerance/issues/27) - CH Allergy Intolerance: Binding code zu Snomed CT
	* [CHAllergyIntoleranceValueSet](ValueSet-CHAllergyIntoleranceValueSet.html) 
	* [CHAllergyIntoleranceReactionSubstanceValueSet](ValueSet-CHAllergyIntoleranceReactionSubstanceValueSet.html) 
* [Issue 29](https://github.com/hl7ch/ch-allergyintolerance/issues/29) - manifestation value set: define extensional and extensible value set
	* [CHAllergyIntoleranceReactionManifestationValueSet](ValueSet-CHAllergyIntoleranceReactionManifestationValueSet.html) 

Use of must support:
* [Issue 30](https://github.com/hl7ch/ch-allergyintolerance/issues/30) - AllergyIntolerance.category must be supported
* [Issue 24](https://github.com/hl7ch/ch-allergyintolerance/issues/24) - CH Allergy Intolerance: zu viele Elemente als "Must Support" gekennzeichnet
	* [CH Allergy Intolerance](StructureDefinition-ch-allergyintolerance.html) 
* [Issue 25](https://github.com/hl7ch/ch-allergyintolerance/issues/25) - CH Allergy Intolerance Condition: zu viele Elemente als "Must Support" gekennzeichnet
	* [CH Allergy Intolerance Condition](StructureDefinition-ch-allergyintolerance-condition.html) 

#### Fixed
* [Issue 18](https://github.com/hl7ch/ch-allergyintolerance/issues/18) - Just typos

#### Refuted
* [Issue 38](https://github.com/hl7ch/ch-allergyintolerance/issues/38) - short name for IG?
* [Issue 36](https://github.com/hl7ch/ch-allergyintolerance/issues/36) - Need for arborescence in the valueset?
* [Issue 34](https://github.com/hl7ch/ch-allergyintolerance/issues/34) - CH Allergy Intolerance Composition Profile
* [Issue 33](https://github.com/hl7ch/ch-allergyintolerance/issues/33) - type indication not useful -- allergyintolerance-type-supplement
