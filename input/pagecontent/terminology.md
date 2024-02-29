

### Background
Based on the recommendations of the international expert group ["Allergies/Hypersensitivity and Intolerance Clinical Reference Group"](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192), the value sets for this exchange format were compiled according to their "Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance".
For this purpose, 4 value sets were compiled using the following procedure: Based on the substance list of drugs available on the Swiss market with known allergy warnings using the CDS of the Swiss drug catalog "HospIndex" from HCI Solutions AG and the allergy documentation list from the HIS KISIM of Cistec AG, Snomed-CT codes were compiled for as many findings (allergy to substance X), disorders (adverse reaction due to substance X) in the case of non-allergic hypersensitivity and substances as possible. This value set was subsequently reviewed by a working group of the SGAI, the Swiss Society of Allergology and Immunology and is provided herewith.

### Value Sets

{% include list-simple-valuesets.xhtml %}

- CH Allergy Intolerance Condition Value Set (for the condition, contains all codes available so far for findings (Allergy to substance X) and/or disorders (Adverse Reaction due to substance X) in case of non-allergic hypersensitivity) 
- CH Allergy Intolerance Reaction Substance Value Set (for the reaction.substances, includes all previously compiled codes for substances)
- CH Allergy Intolerance Value Set (for the general part in AllergyIntolerance.code, preferably includes codes for Findings (Allergy to substance X) and/or Disorders (Adverse Reaction due to substance X) in case of non-allergic hypersensitivity), and in case these are not available substitute the substances.
- CHAllergyIntoleranceReactionManifestationValueSet (for reaction.manifestation, includes an adapted shortlist of ValueSet: Allergy Reaction (GPS) from the IPS (International Patient Summary).





### Code Systems

{% include list-simple-codesystems.xhtml %}

