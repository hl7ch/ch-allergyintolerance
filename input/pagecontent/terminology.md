### Background
Based on the recommendations of the international expert group ["Allergies/Hypersensitivity and Intolerance Clinical Reference Group"](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192), the value sets for this exchange format were compiled according to their "Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance".
For this purpose, 4 value sets were compiled using the following procedure: Based on the substance list of drugs available on the Swiss market with known allergy warnings using the CDS of the Swiss drug catalog "HospIndex" from HCI Solutions AG and the allergy documentation list from the HIS KISIM of Cistec AG, Snomed-CT codes were compiled for as many findings (allergy to substance X), disorders (adverse reaction due to substance X) in the case of non-allergic hypersensitivity and substances as possible. This value set was subsequently reviewed by a working group of the SGAI, the Swiss Society of Allergology and Immunology and is provided herewith.

### Value Sets
* [CH AllergyIntolerance Condition](https://fhir.ch/ig/ch-term/ValueSet-CHAllergyIntoleranceConditionValueSet.html) Value set for the condition, contains all codes available so far for findings (Allergy to substance X) and/or disorders (Adverse Reaction due to substance X) in case of non-allergic hypersensitivity
* [CH AllergyIntolerance Reaction Substance](https://fhir.ch/ig/ch-term/ValueSet-CHAllergyIntoleranceReactionSubstanceValueSet.html) Value set for the reaction.substances, includes all previously compiled codes for substances
* [CH AllergyIntolerance](https://fhir.ch/ig/ch-term/ValueSet-CHAllergyIntoleranceValueSet.html) Value Set for the general part in AllergyIntolerance.code, preferably includes codes for Findings (Allergy to substance X) and/or Disorders (Adverse Reaction due to substance X) in case of non-allergic hypersensitivity, and in case these are not available substitute the substances
* [CH AllergyIntolerance Reaction Manifestation](https://fhir.ch/ig/ch-term/ValueSet-CHAllergyIntoleranceReactionManifestationValueSet.html) ValueSet for reaction.manifestation, includes an adapted shortlist of the value set Allergy Reaction (GPS) from the IPS (International Patient Summary)

### Code Systems
* [CH AllergyIntolerance Category](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-category-supplement.html)
* [CH AllergyIntolerance Clinical Status](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-clinical-supplement.html)
* [CH AllergyIntolerance Criticality Status](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-criticality-supplement.html)
* [CH AllergyIntolerance Severity Status](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-severity-supplement.html)
* [CH AllergyIntolerance Type](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-type-supplement.html)
* [CH AllergyIntolerance Verification Status](https://fhir.ch/ig/ch-term/CodeSystem-allergyintolerance-verification-supplement.html)
