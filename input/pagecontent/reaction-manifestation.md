In this section, the relationship between adverse reactions and manifestations of allergies or intolerances and their mapping is described. The basics for this are explained in the [Boundaries and Relationships](https://hl7.org/fhir/R4/allergyintolerance.html#bnr) section of the [AllergyIntolerance](https://hl7.org/fhir/R4/allergyintolerance.html) resource. The practical use and the differences between the elements `reaction` and `reaction.manifestation` are described and shown exemplarily below.

### Practical Use and Differences
1. [Multiple `reaction` entries](#multiple-reaction-entries) are useful for capturing different reactions that may have occurred during separate exposures or for documenting a detailed history of the progression of the reactions.   
2. [Multiple `reaction.manifestation` entries](#multiple-reactionmanifestation-entries) within a reaction capture the different symptoms that occurred simultaneously during the same episode of reaction.

#### Multiple `reaction` entries
[Example 1](AllergyIntolerance-CH-AllergyIntolerance-MultipleReactionEntries.html): A patient has a penicillin allergy with documented reactions at two different times.
* The first `reaction` records a moderate reaction during the patient’s first exposure, with eruption of skin as a symptom.
* The second `reaction` documents a severe reaction during a later exposure, including dyspnea and lip swelling.

``` json
{
	"resourceType": "AllergyIntolerance",
	...
	"reaction": [
		{
			"substance": {
				"coding": [
					{
						"system": "http://snomed.info/sct",
						"code": "764146007",
						"display": "Penicillin"
					}
				]
			},
			"manifestation": [
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "271807003",
							"display": "Eruption of skin"
						}
					]
				}
			],
			"description": "Initial reaction to penicillin during first exposure.",
			"onset": "2023-01-15",
			"severity": "moderate"
		},
		{
			"substance": {
				"coding": [
					{
						"system": "http://snomed.info/sct",
						"code": "764146007",
						"display": "Penicillin"
					}
				]
			},
			"manifestation": [
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "267036007",
							"display": "Dyspnea"
						}
					]
				},
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "699376002",
							"display": "Lip swelling"
						}
					]
				}
			],
			"description": "Second reaction to penicillin during subsequent exposure.",
			"onset": "2023-06-10",
			"severity": "severe"
		}
	]
}
```

#### Multiple `reaction.manifestation` entries
[Example 2](AllergyIntolerance-CH-AllergyIntolerance-MultipleManifestationEntries.html): A patient reacts to shrimps with a range of symptoms that appear all at once.
* There is a single `reaction` entry representing one episode.
* Multiple `reaction.manifestation` entries within this reaction document a range of symptoms (dyspnea, lip swelling, and nausea) that occurred simultaneously during this reaction.

``` json
{
	"resourceType": "AllergyIntolerance",
	...
	"reaction": [
		{
			"substance": {
				"coding": [
					{
						"system": "http://snomed.info/sct",
						"code": "278840001",
						"display": "Shrimp"
					}
				]
			},
			"manifestation": [
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "267036007",
							"display": "Dyspnea"
						}
					]
				},
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "699376002",
							"display": "Lip swelling"
						}
					]
				},
				{
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "422587007",
							"display": "Nausea"
						}
					]
				}
			],
			"description": "Reaction to shrimps consumption.",
			"onset": "2023-07-21",
			"severity": "severe"
		}
	]
}
```
