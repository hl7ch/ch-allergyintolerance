# Clinical Use Case Scenarios

The use cases are adapted from the "Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance" of [Allergies/Hypersensitivity and Intolerance Clinical Reference Group](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192) of Snomed CT.

## Usecase 1: Documentation of an adverse reaction to a drug substance
Szenario: A physician sees a patient in clinic for routine outpatient care.  The patient has been receiving care for diabetes and hypertension.  Recently the patient was prescribed 25mg hydrochlorothiazide for his blood pressure.  He tells the physician that he has developed hives weeks previously and on examination, the physician confirms the presence of generalized hives.  A review of systems fails to reveal any other causes and the physician believes that the patient may be having an urticarial reaction to hydrochlorothiazide.  He has lingering uncertainty about this and tells the patient to stop the thiazide and employ diphenhydramine for relief.  The physician advances the patient dose of losartan for blood pressure control.  He schedules him back in a week for follow-up and when recording his note for the visit, he adds to his assessment in the problem list: “Urticarial reaction, possible thiazide allergy”. A week later the patient returns for follow-up with the itching and rash entirely resolved.  He reports that the reaction subsided within days after stopping the thiazide.  The physician adds “Hydrochlorothiazide allergy:reaction of hives; moderate criticality, probable” to the problem list.

**FHIR Condition resource query from patient record** ([Entry of urticaria due to possible thiazide allergy in problem list](Condition-CH-AllergyIntolerance-Condition-Visit1-Usecase-1.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">126485001 Urticaria (disorder)</td>
  </tr>
  <tr>
    <td class="tg-cly1">clinicalStatus</td>
    <td class="tg-cly1">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">verificationStatus</td>
    <td class="tg-cly1">unconfirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">problem-list-item</td>
  </tr>
  <tr>
    <td class="tg-cly1">severity</td>
    <td class="tg-cly1">6736007 Moderate (qualifier)</td>
  </tr>
  <tr>
    <td class="tg-cly1">onsetDateTime</td>
    <td class="tg-cly1">2021-12</td>
  </tr>
</tbody>
</table>

**FHIR Condition resource query from patient record** ([Entry of urticaria due to probable thiazide allergy in problem list](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">860765003 Allergy to thiazide (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">clinicalStatus</td>
    <td class="tg-cly1">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">verificationStatus</td>
    <td class="tg-cly1">provisional</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">problem-list-item</td>
  </tr>
  <tr>
    <td class="tg-cly1">severity</td>
    <td class="tg-cly1">6736007 Moderate (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 2: Documentation in drug allergy list by provider and use as allergy alert
Scenario: The clinic nurse calls the patient from scenario 4.1 a week later with test results from his visit.  She inquires as to the urticaria and the patient verifies that they have disappeared with discontinuation of the diuretic.  Following clinic protocols she accesses the patient EHR and proceeds to make a new entry into the allergy list which is employed by the EHR software for issuing clinical prescribing alerts.  The software steps through a series of questions asking: what was the offending agent, what were symptoms or findings resulting from the reaction, what class of reaction occurred, what was the severity, criticality and verification status.  The nurse answers the questions and an allergy record appears in the list “Hydrochlorothiazide; Allergy; Moderate severity; Low criticality; Symptoms-Hives”.
Years later the patient is seeing another physician within the organization for consultation on treatment of resistant hypertension.  The second physician decides that an ACE inhibitor/thiazide medication is appropriate for the patient.  When the physician creates an order for “Lisinopril-hydrochlorothiazide 20/25” and commits to the electronic prescription, an alert appears which requires a response by the physician warning him of an allergy history to hydrochlorothiazide which is an ingredient in the drug he is about to order.  The alert is generated by the EHR software which uses the Allergy list as reference.   The physician retracts the order and chooses another antihypertensive.


**FHIR AllergyIntolerance  resource query of patient record** ([Entry of a probable thiazide allergy in allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-i8ls">Attribute</th>
    <th class="tg-i8ls">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-xxl9">abatement-dateTime-uv-ips</td>
    <td class="tg-xxl9">2022-02-07</td>
  </tr>
  <tr>
    <td class="tg-xxl9">clinicalStatus</td>
    <td class="tg-xxl9">active</td>
  </tr>
  <tr>
    <td class="tg-xxl9">verificationStatus</td>
    <td class="tg-xxl9">unconfirmed</td>
  </tr>
  <tr>
    <td class="tg-xxl9">criticality</td>
    <td class="tg-xxl9">low</td>
  </tr>
  <tr>
    <td class="tg-0a7q">code</td>
    <td class="tg-0a7q">860765003 Allergy to thiazide (finding)</td>
  </tr>
  <tr>
    <td class="tg-0a7q">type</td>
    <td class="tg-0a7q">allergy</td>
  </tr>
  <tr>
    <td class="tg-0a7q">category</td>
    <td class="tg-0a7q">medication</td>
  </tr>
  <tr>
    <td class="tg-0a7q">reaction.substance</td>
    <td class="tg-0a7q">387525002 Hydrochlorothiazide (substance)</td>
  </tr>
  <tr>
    <td class="tg-0a7q">reaction.manifestation</td>
    <td class="tg-0a7q">126485001 Urticaria (disorder)</td>
  </tr>
  <tr>
    <td class="tg-0a7q">reaction.severity</td>
    <td class="tg-0a7q">moderate</td>
  </tr>
  <tr>
    <td class="tg-0a7q">reaction.exposureRoute</td>
    <td class="tg-0a7q">26643006 "Oral route (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 3: Documentation of a drug intolerance

Scenario: A patient enters the urgent care with complaints of ringing, clanging and whistling in his ears. The patient cannot distinctly state when the noises initiated and has not been exposed to any high noise environments. The patient has a history of chronic back pain, congestive heart failure and arthritis. Upon reviewing the patient’s medication list, the physician notices that the patient has been taking 12 tablets of aspirin each day. The physician suspects that the patient is suffering from aspirin induced tinnitus. The patient is encouraged to decrease his aspirin dose and follow up with his rheumatologist who prescribed the aspirin. In the patient’s electronic medical record the urgent care specialist documents in the encounter diagnosis and allergy list that the patient has a drug intolerance to aspirin.

**FHIR Condition resource query from patient record** ([Entry of an aspirin intolerance in problem list](Condition-CH-AllergyIntolerance-Condition-Usecase-3.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-i8ls">Attribute</th>
    <th class="tg-i8ls">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-xxl9">code</td>
    <td class="tg-xxl9">292044008 Aspirin adverse reaction (disorder)</td>
  </tr>
  <tr>
    <td class="tg-xxl9">clinicalStatus</td>
    <td class="tg-xxl9">active</td>
  </tr>
  <tr>
    <td class="tg-xxl9">verificationStatus</td>
    <td class="tg-xxl9">differential</td>
  </tr>
  <tr>
    <td class="tg-xxl9">category</td>
    <td class="tg-xxl9">encounter-diagnosis</td>
  </tr>
  <tr>
    <td class="tg-xxl9">severity</td>
    <td class="tg-xxl9">255604002 Mild (qualifier)</td>
  </tr>
</tbody>
</table>

**FHIR AllergyIntolerance resource query of patient record** ([Entry of aspirin intolerance in allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-3.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Attribute</th>
    <th class="tg-0lax">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">clinicalStatus</td>
    <td class="tg-0lax">active</td>
  </tr>
  <tr>
    <td class="tg-0lax">verificationStatus</td>
    <td class="tg-0lax">confirmed</td>
  </tr>
  <tr>
    <td class="tg-0lax">Type</td>
    <td class="tg-0lax">intolerance</td>
  </tr>
  <tr>
    <td class="tg-0lax">criticality</td>
    <td class="tg-0lax">low</td>
  </tr>
  <tr>
    <td class="tg-0lax">code</td>
    <td class="tg-0lax">292044008 Aspirin adverse reaction (disorder)</td>
  </tr>
  <tr>
    <td class="tg-0lax">category</td>
    <td class="tg-0lax">medication</td>
  </tr>
  <tr>
    <td class="tg-0lax">reaction.substance</td>
    <td class="tg-0lax">387458008 Aspirin (substance)</td>
  </tr>
  <tr>
    <td class="tg-0lax">reaction.allergyintolerance-certainty</td>
    <td class="tg-0lax">confirmed</td>
  </tr>
  <tr>
    <td class="tg-0lax">reaction.manifestation</td>
    <td class="tg-0lax">60862001 Tinnitus (finding)</td>
  </tr>
  <tr>
    <td class="tg-0lax">reaction.severity</td>
    <td class="tg-0lax">mild</td>
  </tr>
  <tr>
    <td class="tg-0a7q">reaction.exposureRoute</td>
    <td class="tg-0a7q">26643006 "Oral route (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 4: Sharing adverse reaction data

Scenario: The patient from scenario 1 is planning a vacation with his family consisting of a cross-country camping trip.  In preparation for travels, he speaks to his physician and obtains an electronic summary of his healthcare record on a flash drive for himself, his wife and children. His physician informs him that the summary software includes an electronic ‘reader’ as well as a standard format that can be imported into another EHR for patient care.  Their vacation unfolds happily until, many miles from home the patient experiences an episode of chest pain while hiking and is taken to a local emergency room.  He provides the flash drive with his electronic record summary to the emergency room physician whose hospital employs an EHR which can accept FHIR extracted electronic record summaries for integration into the on-site health record system.  The emergency room nurse loads the flash drive and accepts the electronic copy of the problem list, allergies and medication list into the on-site record.  The software extract manages the differences in information model design between EHR vendors by cross-checking the allergy list with information in the problem list and encounter diagnoses.
Later, the attending physician is writing admission orders for the patient, admitting him to the ward for observation.  The physician notices that the patient blood pressure is high at 195/100.  The physician does not want to take aggressive action but decides that the blood pressure should be brought down slowly.  Noting that the patient medication list already includes two types of blood pressure medicine, he enters an electronic order for “Hygroton 50mg po daily”, a favorite choice for hypertension with slow onset of action.  When the physician presses ‘Enter’ to commit the order, a pop-up alert is generated by the EHR with warning that this patient has had an allergic reaction to a thiazide diuretic consisting of hives and that Chlorthalidone(Hygroton) has a high likelihood of cross reacting.  While studying the alert, the physician notes that the supporting information was gleaned from the problem list and allergy list.  While the earlier record from the problem list was provisional, the later allergy list record is notable for probable status and moderate risk as an allergy.  The EHR drug interaction software has cross-referenced the chemical composition of Hydrochlorothiazide and Hygroton(Chlorthalidone) and noted them to be similar.  He decides that the information is credible and changes his order to a medicine not likely to lead to an allergic reaction.

**FHIR AllergyIntolerance resource query of patient record** ([Query probable thiazide allergy from allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uzvj">Attribute</th>
    <th class="tg-uzvj">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-lboi">verificationStatus</td>
    <td class="tg-lboi">unconfirmed</td>
  </tr>
  <tr>
    <td class="tg-lboi">criticality</td>
    <td class="tg-lboi">low</td>
  </tr>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">860765003 Allergy to thiazide (finding)</td>
  </tr>
  <tr>
    <td class="tg-lboi">type</td>
    <td class="tg-lboi">allergy</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">medication</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.substance</td>
    <td class="tg-cly1">387525002 Hydrochlorothiazide (substance)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.manifestation</td>
    <td class="tg-cly1">126485001 Urticaria (disorder)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.severity</td>
    <td class="tg-cly1">moderate</td>
  </tr>
  <tr>
      <td class="tg-0a7q">reaction.exposureRoute</td>
    <td class="tg-0a7q">26643006 "Oral route (qualifier)</td>
  </tr>
</tbody>
</table>

**FHIR Condition resource query from imported patient record** ([Query of possible thiazide allergy from the problem list](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uzvj">Attribute</th>
    <th class="tg-uzvj">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">860765003 Allergy to thiazide (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">clinicalStatus</td>
    <td class="tg-cly1">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">verificationStatus</td>
    <td class="tg-cly1">provisional</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">problem-list-item</td>
  </tr>
  <tr>
    <td class="tg-cly1">severity</td>
    <td class="tg-cly1">6736007 Moderate (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 5: Documentation of animal allergy or hypersensitivity

Scenario: A physician sees a patient for the first time in clinic for routine outpatient care.  The patient tells the physician that he has developed a rash and recurrent itching limited to the arms and face.  The physician runs some blood tests and a series of skin tests which demonstrate an intense reaction to cat dander proteins with high IgE antibody levels. The patient confirms that he works in an animal shelter and is exposed to cats. The physician opens the allergy record and documents the allergic propensity to cat proteins with symptoms of rash and itching, criticality and severity of low in the EHR allergy list.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laboratory findings with positive allergy test result for cat dander protein)
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">status</td>
    <td class="tg-lboi">final</td>
  </tr>
  <tr>
    <td class="tg-lboi">category</td>
    <td class="tg-lboi">laboratory</td>
  </tr>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">15609-1 Cat dander IgE Ab RAST class [Presence] in Serum</td>
  </tr>
  <tr>
    <td class="tg-lboi">valueQuantity</td>
    <td class="tg-lboi">59.1 k[IU]/L</td>
  </tr>
  <tr>
    <td class="tg-lboi">interpretation</td>
    <td class="tg-lboi">high</td>
  </tr>
  <tr>
    <td class="tg-lboi">method</td>
    <td class="tg-lboi">---</td>
  </tr>
  <tr>
    <td class="tg-lboi">specimen</td>
    <td class="tg-lboi">119364003 Serum specimen</td>
  </tr>
</tbody>
</table>

**FHIR AllergyIntolerance resource** ([Entry of confirmed allergic tendency to cat dander in the allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-5.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uzvj">Attribute</th>
    <th class="tg-uzvj">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">verificationStatus</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">criticality</td>
    <td class="tg-cly1">low</td>
  </tr>
  <tr>
    <td class="tg-cly1">code</td>
    <td class="tg-cly1">232346004 Allergy to cat dander (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">type</td>
    <td class="tg-cly1">allergy</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">biologic</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.substance</td>
    <td class="tg-cly1">260152009 Cat dander (substance)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.allergyintolerance-certainty</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.manifestation</td>
    <td class="tg-cly1">271807003 Eruption of skin (disorder)</td>
  </tr>
  <tr>
    <td class="tg-cly1"></td>
    <td class="tg-cly1">418363000 Itching (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.severity</td>
    <td class="tg-cly1">mild</td>
  </tr>
  <tr>
    <td class="tg-cly1">openEHR-exposureDescription</td>
    <td class="tg-cly1">Animal shelter</td>
  </tr>
</tbody>
</table>

## Usecase 6: Documentation of adverse reaction to a non-medicinal substance cross reacting with a pharmaceutical

Scenario: A patient’s mother reports to their child’s physician that the child reacts violently to eating peanuts with symptoms that include generalized hives, wheezing and hypotension requiring use of epinephrine for resuscitation.  The physician obtains a blood test which documents high levels of IgE antibody against the Arachis h2 peanut protein which is found in peanut oil (Arachis oil) - the sensitizing agent for clinical peanut allergy.  The physician records a peanut allergy in the EHR with anaphylaxis, hives and wheezing as reaction symptoms, records a criticality of high and reaction severity of ‘severe’.
Years later the youngster is seen by a dermatologist for treatment of acne.  As part of the plan of care, the physician enters an electronic prescription for Isotretinoin capsules.  When the physician commits the order, the EHR software runs allergy cross checking and issues a high priority alert that the capsules contain peanut oil that is not highly refined and therefore may potentially include peanut protein and are contraindicated for the patient.  The physician cancels the order and chooses an alternative preparation.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laboratory findings with positive allergy test result for peanut protein) 
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uzvj">Attribute</th>
    <th class="tg-uzvj">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">status</td>
    <td class="tg-lboi">final</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">laboratory</td>
  </tr>
  <tr>
    <td class="tg-cly1">code</td>
    <td class="tg-cly1">58778-2 Peanut recombinant (rAra h) 2 IgE Ab [Units/volume] in Serum</td>
  </tr>
  <tr>
    <td class="tg-cly1">valueQuantity</td>
    <td class="tg-cly1">&gt;100 k[IU]/L</td>
  </tr>
  <tr>
    <td class="tg-cly1">interpretation</td>
    <td class="tg-cly1">high</td>
  </tr>
  <tr>
    <td class="tg-cly1">specimen</td>
    <td class="tg-cly1">119364003 Serum specimen</td>
  </tr>
</tbody>
</table>

**FHIR AllergyIntolerance resource** ([Entry of a confirmed peanut oil allergy in allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-6.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">VerificationStatus</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">criticality</td>
    <td class="tg-cly1">high</td>
  </tr>
  <tr>
    <td class="tg-cly1">code</td>
    <td class="tg-cly1">91935009 Allergy to peanut (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">type</td>
    <td class="tg-cly1">allergy</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">food</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.substance</td>
    <td class="tg-cly1">417889008 Arachis oil (substance)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.allergyintolerance-certainty</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.manifestation</td>
    <td class="tg-cly1">39579001 Anaphylaxis (disorder)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.severity</td>
    <td class="tg-cly1">severe</td>
  </tr>
  <tr>
      <td class="tg-0a7q">reaction.exposureRoute</td>
    <td class="tg-0a7q">26643006 "Oral route (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 7: Documentation of adverse reaction to other non-medicinal substances

Scenario:  A licensed nurse presents to her personal physician for recurring problems of a generalized rash and itching.  She works in an intensive care unit and is constantly handing chemicals, disinfectants, assisting in surgical procedures and performing catheter cares for her patients.  As a part of the health history, she verifies that she has noticed an eruption on her hands after handling latex catheters.  Additionally, she reports a serious allergic reaction to papaya in the past and has been careful in the fruits she eats as a consequence.  The clinician suspects a latex allergy cross-reacting with food stuffs and orders IgE testing for Hevea latex antibody.  The serology testing is strongly positive and the clinician advises the nurse of his findings with warnings about other foods which may cross react.  While documenting the clinical encounter, he records a latex allergy in the allergy list.
The EHR software supports selection of foods, chemicals and animal biological products as substances which may be identified as source substances for an entry onto the allergy list or for recording of an adverse reaction.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laboratory findings with positive allergy test result to latex)
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uzvj">Attribute</th>
    <th class="tg-uzvj">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">status</td>
    <td class="tg-lboi">final</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">laboratory</td>
  </tr>
  <tr>
    <td class="tg-cly1">code</td>
    <td class="tg-cly1">6158-0 Latex IgE Ab [Units/volume] in Serum</td>
  </tr>
  <tr>
    <td class="tg-cly1">valueQuantity</td>
    <td class="tg-cly1">&gt;100 k[IU]/L</td>
  </tr>
  <tr>
    <td class="tg-cly1">interpretation</td>
    <td class="tg-cly1">high</td>
  </tr>
  <tr>
    <td class="tg-cly1">specimen</td>
    <td class="tg-cly1">119364003 Serum specimen</td>
  </tr>
</tbody>
</table>

**FHIR Condition resource query from patient record** ([Entry of latex allergy in problem list](Condition-CH-AllergyIntolerance-Condition-Usecase-7.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">1003755004 Allergy to Hevea brasiliensis latex protein (finding)</td>
  </tr>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-lboi">verificationStatus</td>
    <td class="tg-lboi">confirmed</td>
  </tr>
  <tr>
    <td class="tg-lboi">category</td>
    <td class="tg-lboi">problem-list-item</td>
  </tr>
  <tr>
    <td class="tg-lboi">severity</td>
    <td class="tg-lboi">6736007 Moderate (qualifier)</td>
  </tr>
</tbody>
</table>

**FHIR AllergyIntolerance resource query of patient record** ([Entry of latex allergy in allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-7.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-cly1">verificationStatus</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">criticality</td>
    <td class="tg-cly1">low</td>
  </tr>
  <tr>
    <td class="tg-cly1">code</td>
    <td class="tg-cly1">1003755004 Allergy to Hevea brasiliensis latex protein (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">type</td>
    <td class="tg-cly1">allergy</td>
  </tr>
  <tr>
    <td class="tg-cly1">category</td>
    <td class="tg-cly1">environment</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.substance</td>
    <td class="tg-cly1">1003751008 Hevea barasiliensis latex (substance)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.allergyintolerance-certainty</td>
    <td class="tg-cly1">confirmed</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.manifestation</td>
    <td class="tg-cly1">271807003 Eruption of skin (disorder)</td>
  </tr>
  <tr>
    <td class="tg-cly1"></td>
    <td class="tg-cly1">418363000	 Itching (finding)</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.severity</td>
    <td class="tg-cly1">mild</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.openEHR-exposureDescription</td>
    <td class="tg-cly1">Works in ICU</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.exposureRoute</td>
    <td class="tg-cly1">6064005 Topical route (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 8: Recording of ‘No known allergies’

Scenario:  A nurse is performing an intake examination on a patient that is new to the clinical practice.  As part of the clinical interview he inquires about medication and other allergies.  The patient reports that she is not allergic to any medications, foods, chemicals or animals.  The nurse opens the ‘allergy list’ in the EHR and documents ‘No known allergies’ which electronically validates that the nurse inquired of the patient and that the history was confirmed negative at the date and time recorded.  This satisfies decision support criteria that allergies be documented before medication orders are written and is encoded in the EHR allergy list as confirmed absence of dispositions to adverse reactions.

**FHIR AllergyIntolerance resource query of patient record** ([Entry no known allergy in allergy list](AllergyIntolerance-CH-AllergyIntolerance-Usecase-8.html))
<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
.tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-uzvj{border-color:inherit;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-g7sd">Attribute</th>
    <th class="tg-g7sd">Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">clinicalStatus</td>
    <td class="tg-lboi">active</td>
  </tr>
  <tr>
    <td class="tg-lboi">verificationStatus</td>
    <td class="tg-lboi">confirmed</td>
  </tr>
  <tr>
    <td class="tg-lboi">criticality</td>
    <td class="tg-lboi">---</td>
  </tr>
  <tr>
    <td class="tg-lboi">code</td>
    <td class="tg-lboi">716186003 No known allergy (situation)</td>
  </tr>
  <tr>
    <td class="tg-lboi">type</td>
    <td class="tg-lboi">--</td>
  </tr>
  <tr>
    <td class="tg-lboi">category</td>
    <td class="tg-lboi">--</td>
  </tr>
</tbody>
</table>
