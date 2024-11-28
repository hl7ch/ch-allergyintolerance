All significant changes to this FHIR implementation guide will be documented on this page.

### STU 3 Sequence - v3.0.0 (2024-12-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH AllergyIntolerance:
* [#106](https://github.com/hl7ch/ch-allergyintolerance/issues/106): Examples with deprecated SNOMED CT codes

See also open issues on [GitHub](https://github.com/hl7ch/ch-allergyintolerance/issues).

#### Added
* [#104](https://github.com/hl7ch/ch-allergyintolerance/issues/104): Add guidance for adverse reaction & manifestation

#### Changed / Updated
* [#109](https://github.com/hl7ch/ch-allergyintolerance/issues/109): Add open issues section to changelog (STU 3 Ballot - v3.0.0-ballot)
* [#100](https://github.com/hl7ch/ch-allergyintolerance/issues/100) & [#170](https://github.com/hl7ch/ch-allergyintolerance/issues/107): Use CH IPS as base instead of directly HL7 IPS-UV -> changes due to this update:
   * Update [Home](index.html) (Introduction, Must Support)
   * Usage of CH IPS AllergyIntolerance & CH IPS Condition as parent profiles
   * Remove MS flags in Condition profile
   * Remove Allergy Abatement Extension and use base extension (see [HL7 IPS-UV changelog](https://hl7.org/fhir/uv/ips/2024Sep/changes.html#stu-200-ballot-update))
* [#108](https://github.com/hl7ch/ch-allergyintolerance/issues/108): Add versioned links for VS/CS to CH Term   

#### Fixed
* [#103](https://github.com/hl7ch/ch-allergyintolerance/issues/103): Typo corrected in use case (english)
* [#105](https://github.com/hl7ch/ch-allergyintolerance/issues/105): Typo fixed in use case 2
* [#117](https://github.com/hl7ch/ch-allergyintolerance/issues/117): Replace deprecated discriminator (`pattern` -> `value`) resp. removal of the redundant slice definition (inherited from parent profile)

### STU 3 Sequence - v3.0.0-ballot (2024-05-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH AllergyIntolerance:

* [#86](https://github.com/hl7ch/ch-allergyintolerance/issues/86): Split value set CHAllergyIntoleranceValueSet into different categories
* [#87](https://github.com/hl7ch/ch-allergyintolerance/issues/87): Link between the condition and the allergyintolerance
* [#89](https://github.com/hl7ch/ch-allergyintolerance/issues/89): Compensate for redundancy-related differences

See also open issues on [GitHub](https://github.com/hl7ch/ch-allergyintolerance/issues).
 
#### Changed / Updated
* [#91](https://github.com/hl7ch/ch-allergyintolerance/issues/91): Move terminology (CS/VS) to CH Term
* [#92](https://github.com/hl7ch/ch-allergyintolerance/issues/92): Update title numbering (incl. fixing some typos)
* [#93](https://github.com/hl7ch/ch-allergyintolerance/issues/93): Update to current version of IPS IG (v1.0.0 -> v1.1.0)
* [#95](https://github.com/hl7ch/ch-allergyintolerance/issues/95): Use CH Core base profiles as parent (Condition, AllergyIntolerance)
* [#99](https://github.com/hl7ch/ch-allergyintolerance/issues/99): In the profile CHAllergyIntoleranceCompositionEPR Typo at the title

### STU 2 Sequence - v2.0.1 (2023-12-28)
* [#270](https://github.com/hl7ch/ch-core/issues/270): Technical correction for invalid package

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH AllergyIntolerance:

* [#86](https://github.com/hl7ch/ch-allergyintolerance/issues/86): Split value set CHAllergyIntoleranceValueSet into different categories
* [#87](https://github.com/hl7ch/ch-allergyintolerance/issues/87): Link between the condition and the allergyintolerance
* [#89](https://github.com/hl7ch/ch-allergyintolerance/issues/89): Compensate for redundancy-related differences

See also open issues on [GitHub](https://github.com/hl7ch/ch-allergyintolerance/issues).

#### Fixed
* [Issue 78](https://github.com/hl7ch/ch-allergyintolerance/issues/78) - Typo in codes adjusted in CHAllergyIntoleranceReactionManifestationValueSet
* [Issue 79](https://github.com/hl7ch/ch-allergyintolerance/issues/79) - Typo in codes adjusted in CHAllergyIntoleranceReactionSubstanceValueSet
* [Issue 80](https://github.com/hl7ch/ch-allergyintolerance/issues/80) - Typo in codes adjusted in CHAllergyIntoleranceConditionValueSet
* [Issue 81](https://github.com/hl7ch/ch-allergyintolerance/issues/81) - Typo in codes adjusted in CHAllergyIntoleranceValueSet
* [Issue 82](https://github.com/hl7ch/ch-allergyintolerance/issues/82) - Typo in codes adjusted in CHAllergyIntoleranceReactionSubstanceValueSet
* [Issue 83](https://github.com/hl7ch/ch-allergyintolerance/issues/83) - Typo in codes adjusted in CHAllergyIntoleranceConditionValueSet
* [Issue 88](https://github.com/hl7ch/ch-allergyintolerance/issues/88) - Typo in codes adjusted in Use Case 8
* [Issue 85](https://github.com/hl7ch/ch-allergyintolerance/issues/85) - For Best practice for patternCodeableConcept, fixed value were removed from the display value.

#### Changed / Updated
* [Issue 84](https://github.com/hl7ch/ch-allergyintolerance/issues/84) - Added IG Fragments to the home page below

### STU 1 Sequence - v1.0.0 (2022-02-11)

#### Added
Navigation within the Implementation Guide for a better usability:
* [Issue 22](https://github.com/hl7ch/ch-allergyintolerance/issues/22) - Besseren Zugang zu den einzelnen Seiten des IG ermöglichen
* [Issue 20](https://github.com/hl7ch/ch-allergyintolerance/issues/20) - Home
* [Issue 19](https://github.com/hl7ch/ch-allergyintolerance/issues/19) - Home: Download link for npm package
* [Issue 12](https://github.com/hl7ch/ch-allergyintolerance/issues/12) - Home - Add Links to referred specifications, copyright
* [Issue 11](https://github.com/hl7ch/ch-allergyintolerance/issues/11) - Extend Menu and Description for Implementation Guide
	* [Home](index.html) 

Clarification about the use of and implementation of AllergyIntolerance IG:
* [Issue 26](https://github.com/hl7ch/ch-allergyintolerance/issues/26) - Artifacts Summary: Beschreibung der beiden Profile "CH AllergyIntolerance" und "CH AllergyIntolerance Condition" ist weitgehend identisch
	* [Artifacts](artifacts.html) 
* [Issue 31](https://github.com/hl7ch/ch-allergyintolerance/issues/31) - Provide Use Cases -- CH AllergyIntolerance
* [Issue 23](https://github.com/hl7ch/ch-allergyintolerance/issues/23) - CH AllergyIntolerance Condition: Beispiel fehlt
* [Issue 17](https://github.com/hl7ch/ch-allergyintolerance/issues/17) - CH AllergyIntolerance Condition
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
	* [CH AllergyIntolerance](StructureDefinition-ch-allergyintolerance.html) 
* [Issue 15](https://github.com/hl7ch/ch-allergyintolerance/issues/15) - Condition abatement date
	* [CH AllergyIntolerance Condition](StructureDefinition-ch-allergyintolerance-condition.html) 

References to CH Core profiles:
* [Issue 21](https://github.com/hl7ch/ch-allergyintolerance/issues/21) - CH AllergyIntolerance
	* [CH AllergyIntolerance](StructureDefinition-ch-allergyintolerance.html) 
	
Content and integration of value sets:
* [Issue 37](https://github.com/hl7ch/ch-allergyintolerance/issues/37) - Allergy or non-allergic hypersensivity to vancomycin
* [Issue 35](https://github.com/hl7ch/ch-allergyintolerance/issues/35) - CH AllergyIntolerance Value Set
* [Issue 32](https://github.com/hl7ch/ch-allergyintolerance/issues/32) - Put Allergy value set to extensible
* [Issue 28](https://github.com/hl7ch/ch-allergyintolerance/issues/28) - make value set extensible? CH AllergyIntolerance Value Set
* [Issue 27](https://github.com/hl7ch/ch-allergyintolerance/issues/27) - CH AllergyIntolerance: Binding code zu SNOMED CT
	* CHAllergyIntoleranceValueSet
	* CHAllergyIntoleranceReactionSubstanceValueSet
* [Issue 29](https://github.com/hl7ch/ch-allergyintolerance/issues/29) - manifestation value set: define extensional and extensible value set
	* CHAllergyIntoleranceReactionManifestationValueSet

Use of must support:
* [Issue 30](https://github.com/hl7ch/ch-allergyintolerance/issues/30) - AllergyIntolerance.category must be supported
* [Issue 24](https://github.com/hl7ch/ch-allergyintolerance/issues/24) - CH AllergyIntolerance: zu viele Elemente als "Must Support" gekennzeichnet
	* [CH AllergyIntolerance](StructureDefinition-ch-allergyintolerance.html) 
* [Issue 25](https://github.com/hl7ch/ch-allergyintolerance/issues/25) - CH AllergyIntolerance Condition: zu viele Elemente als "Must Support" gekennzeichnet
	* [CH AllergyIntolerance Condition](StructureDefinition-ch-allergyintolerance-condition.html) 

#### Fixed
* [Issue 18](https://github.com/hl7ch/ch-allergyintolerance/issues/18) - Just typos

#### Refuted
* [Issue 38](https://github.com/hl7ch/ch-allergyintolerance/issues/38) - short name for IG?
* [Issue 36](https://github.com/hl7ch/ch-allergyintolerance/issues/36) - Need for arborescence in the valueset?
* [Issue 34](https://github.com/hl7ch/ch-allergyintolerance/issues/34) - CH AllergyIntolerance Composition Profile
* [Issue 33](https://github.com/hl7ch/ch-allergyintolerance/issues/33) - type indication not useful -- allergyintolerance-type-supplement
