
### CH-AllergyIntolerance
Swiss Implementation Guide for Allergy & Intolerance based on the [recommendations of the interprofessional working group EPR (IPAG)](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/D/ipag-bericht-eallergien-intoleranzen.pdf), as well on [Allergy Intolerance IPS](http://hl7.org/fhir/uv/ips/StructureDefinition-AllergyIntolerance-uv-ips.html)  as near as reasonable and influenced further on the "Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance" which is or was still under construction by the time of creating this IG.

<div markdown="1" class="stu-note">

This implementation guide is under STU ballot by [HL7 Switzerland](https://www.hl7.ch/) until September 30th, 2023 midnight.
Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.

[Significant Changes, Open and Closed Issues](changelog.html)

</div>

**Download**: You can download this implementation guide in npm format from [here](package.tgz).

#### Goal
The goal of this IG is 
- the exchange of allergies and intolerances in a structured document (profile developed), e.g. in the context of the Swiss EPR
- as a requirement on how allergy and intolerances are to be used, referenced or derived in order to obtain interoperability in swiss projects (and therefore other IGs), e.g. in the context of vaccination or transition of care
- clarify the usage of adverse sensitivity data (which encompasses allergy, non-allergic hypersensitivity and intolerance) by providing use cases and thus accelerating consistent implementation  as intended by IPAG and the [Allergies/Hypersensitivity and Intolerance Clinical Reference Group](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192) of Snomed CT.

#### Must Support

The use of Must Support is in the sense of the [Guidelines for Swiss IG developments](https://github.com/hl7ch/ch-core/wiki/Guidelines-for-Swiss-IG-Developments):

"Required if known. If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error solely due to the presence or absence of the element."

The Must Support flags for the AllergyIntolerance resource have been set as in AllergyIntolerance IPS if also part of the IPAG recommendations. Besides that reaction.substance and category have been flagged because these fields play a importante role in the mentioned recommendations. 

The extensions defined by the interprofessional working group EPR (IPAG) have no must support flags in the present version but are easily identified in the differential view of the artifact.
The expectation is that allergy specialists tend to provide more detailed information applying these extended reaction details, whereas the common MD will document rather the must support attributes.

For the Condition resource the must support flags have been set as in [Condition IPS](https://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html).

#### Value Sets

The value sets for coding of allergies, intolerances and hypersensities and related conditions are based on the historically most common values documented in the swiss realm and stated as a defined list of findings, as well as the correspondent substances in the value set for reaction.substance, reviewed by the Swiss Society for Allergology and Immunology SGAI-SSAI. 

Whereas this is explicitly desired by the professional representatives it is different than stated in IPS for example, where the binding is based on expanded value sets, but which has had very little real world feedback until to date. Experience and feedback is welcome therefore in this respect.

The actual value set AllergyIntolerance.code doesn't yet include codes which exist only as post coordinated SNOMED CT expressions. They will be suggested to SNOMED CT by eHealth Suisse and added to the ci-build as soon as available as precoodinated SNOMEC CT codes and added to a future publication of this IG.


#### Copyright

This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact Swiss NRC, www.e-health-suisse.ch/snomedct and snomed@e-health-suisse.ch
