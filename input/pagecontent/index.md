### CH-AllergyIntolerance

Swiss Implementation Guide for Allergy & Intolerance based on the recommendations of the interprofessional working group EPR (IPAG), as well on Allergy Intolerance IPS as near as reasonable and influenced further on the Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance.

The Must Support flags have been set as in AllergyIntolerance IPS plus reaction.substance which has its own value set for substances, whereas the value set for AllergyIntolerance.code is based on the corresponding findings, which can be used also to document conditions with relation to allergies or intolerances.

In general there is a tendency to use less must support flags and to clarify their usage, this is intendended for this IG in a future release when the community has more experience with testing and balloting the IG.

In this sense the extensions defined by the interprofessional working group EPR (IPAG) have no must support flags in the present version but are easily identified in the differential view of the artifact.

The expectation is that alergy specialists tend to provide more detailed information applying these extended reaction details, whereas the common MD will document rather the must support attributes.

The value sets for coding of allergies, intolerances and hypersensities and related conditions are based on the historically most common values documented in the swiss realm and stated as a definite list of findings, as well as the correspondent substances in the value set for reaction.substance. 

Whereas this is explicitly desired by the professional representatives it is different than stated in IPS for example, where the binding is based on expanded value sets, but which has had very little real world feedback until to date. Experience and feedback is welcome therefore in this respect.

The actual value set in the ci-build is an example and will be completed asap with the first full version still in  review as to date.