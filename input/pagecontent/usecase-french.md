
Les cas d’utilisation ont été adaptés à partir de l’« Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance » de l’[Allergies/Hypersensitivity and Intolerance Clinical Reference Group](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192) de SNOMED CT.

### Cas d’utilisation n° 1 : Documentation d’une réaction indésirable au principe actif d’un médicament
Scénario : Un médecin accueille un patient à la clinique pour des soins ambulatoires de routine. Le patient a déjà reçu un traitement contre le diabète et l’hypertension. De l’hydrochlorothiazide 25 mg lui a été récemment prescrit contre son hypertension. Le patient informe le médecin qu’il a développé, quelques semaines plus tôt, de l’urticaire, et le médecin lui confirme lors de l’examen la présence d’une urticaire généralisée. Un réexamen complet ne révèle pas d’autre cause et le médecin croit que le patient présente peut-être une réaction urticarienne à l’hydrochlorothiazide. Il n’en est pas tout à fait sûr et conseille au patient d’arrêter le traitement par le thiazide et d’utiliser de la diphénhydramine (antihistaminique) pour soulager ses maux. Le médecin prescrit au patient une dose plus élevée de losartan pour contrôler son hypertension. Il fixe un rendez-vous de suivi au patient une semaine plus tard et ajoute son appréciation dans la liste des problèmes : « réaction urticarienne, possible allergie au thiazide ». Une semaine plus tard, le patient revient pour son examen de suivi : tant les démangeaisons que l’éruption cutanée ont entièrement disparu. Le patient confirme que la réaction a diminué dans les jours qui ont suivi l’arrêt du traitement. Le médecin ajoute à la liste des problèmes la remarque « allergie à l’hydrochlorothiazide : urticaire ; modérément critique, probable ».

**FHIR Condition resource query from patient record** ([inscription d’une urticaire pour cause d’allergie potentielle au thiazide dans la liste des problèmes](Condition-CH-AllergyIntolerance-Condition-Visit1-Usecase-1.html))
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


**FHIR Condition resource query from patient record** ([inscription d’une urticaire pour cause d’allergie probable au thiazide dans la liste des problèmes](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
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

### Cas d’utilisation n° 2 : Documentation d’une allergie aux médicaments dans la liste des allergies et déclenchement d’un message d’alerte pour le professionnel de la santé
Scénario : L’infirmière de la clinique téléphone au patient du scénario 1 une semaine plus tard et lui communique les résultats des tests effectués durant sa visite. Elle s’informe sur son urticaire et le patient lui confirme qu’elle a disparu avec l’interruption du traitement diurétique. Selon les protocoles définis par la clinique, elle ouvre le dossier informatique du patient et procède à une nouvelle inscription dans la liste des allergies utilisée par le système d’information hospitalier (SIH) pour émettre des alertes de prescription clinique. Le logiciel parcourt une série de questions : quelle a été la substance déclenchante, quels symptômes ou résultats sont apparus lors de la réaction, quel a été le type de réaction, quel en a été le degré de gravité et de criticité, et comment se présente le statut de vérification. L’infirmière répond aux questions et une mention d’allergie s’affiche dans la liste : « hydrochlorothiazide ; allergie ; degré de gravité moyen ; faible degré de criticité ; symptômes – urticaire ».
Des années plus tard, le patient consulte un autre médecin de la même organisation, pour se faire conseiller sur le traitement d’une hypertension résistante. Le deuxième médecin décide qu’un inhibiteur de l’ECA/médicament à base de thiazide conviendrait au patient. Quand il établit une ordonnance pour du « CO-LISINOPRIL Mepha Tabl 20/12.5 » et confirme l’ordonnance électronique, un message d’alerte s’affiche et l’invite à réagir, le mettant en garde contre une allergie à l’hydrochlorothiazide, soit un des ingrédients du médicament qu’il souhaite prescrire. L’avertissement est généré par le logiciel du SIH, qui se réfère à la liste des allergies. Le médecin annule la commande et choisit un autre agent antihypertenseur.

**FHIR AllergyIntolerance resource query of patient record** ([inscription d’une allergie probable au thiazide dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
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

### Cas d’utilisation n° 3 : Documentation d’une intolérance médicamenteuse

Scénario : Un patient arrive aux urgences et se plaint de bourdonnements, de tintements et de sifflements dans ses oreilles. Le patient ne saurait dire quand ces bruits sont apparus et n’a pas été exposé à un environnement bruyant. Il a des antécédents, avec des douleurs dorsales chroniques, une insuffisance cardiaque et de l’arthrite. En parcourant la liste des médicaments consommés par le patient, le médecin constate qu’il prend 12 tablettes d’aspirine par jour. Le médecin soupçonne le patient de souffrir d’acouphènes dus à l’aspirine. Il l’invite à réduire sa consommation d’aspirine et à prendre contact avec le rhumatologue qui la lui a prescrite. Le médecin d’urgence note dans le SIH, dans la liste des diagnostics et des allergies, que le patient souffre d’une intolérance médicamenteuse à l’aspirine.

**FHIR Condition resource query from patient record** ([inscription d’une intolérance à l’aspirine dans la liste des problèmes](Condition-CH-AllergyIntolerance-Condition-Usecase-3.html))
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

**FHIR AllergyIntolerance resource query of patient record** ([inscription d’une intolérance à l’aspirine dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-3.html))
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

### Cas d’utilisation n° 4 : Utilisation commune de données sur les allergies aux médicaments

Scénario : Le patient du scénario 1 prévoit de faire avec sa famille des vacances en camping à travers le pays. Pour préparer son voyage, il parle à son médecin et se fait remettre sur une clé USB un résumé électronique des dossiers médicaux de toute la famille. Son médecin lui signale que le logiciel utilisé inclut une liseuse électronique et possède un format standard qui en permet l’importation dans un autre SIH, en cas de prise en charge comme patient. Les vacances se passent bien jusqu’au jour où, loin de chez lui, le patient ressent lors d’une randonnée des douleurs à la poitrine qui nécessitent son admission dans le plus proche centre d’urgences médicales. Il remet la clé USB avec le résumé de son dossier informatique au médecin du service des urgences. L’établissement en question utilise un SIH qui accepte d’intégrer, une fois extraits, les résumés électroniques basés sur FHIR. L’infirmière des urgences charge ainsi la clé USB et reprend dans le dossier local la copie électronique des listes des problèmes, des allergies et des médicaments. Les différences inhérentes aux modèles d’information respectifs des prestataires de SIH sont corrigées au passage : la liste des allergies est complétée par les informations tirées de la liste des problèmes et de la liste de diagnostics.

Plus tard, le médecin traitant rédige une décision d’admission du patient et le garde en observation dans son service. Il constate qu’avec des valeurs de 195/100, la tension artérielle du patient est trop élevée. Le médecin ne veut pas prendre de mesures agressives, mais décide que la tension artérielle devrait être lentement abaissée. Il constate que la liste de médicaments du patient renferme déjà deux types de médicaments pour la tension artérielle et établit une ordonnance électronique pour de l’« Hygroton 50 mg p.o./jour », un traitement très populaire contre l’hypertension à action lente. Quand le médecin presse sur la touche « Enter » pour passer sa commande, le SIH génère une alerte contextuelle lui signalant que le patient a eu une réaction allergique à un diurétique thiazidique, sous la forme d’urticaire, et que le chlortalidone (Hygroton) provoquerait très probablement une réaction croisée. En examinant le message d’avertissement reçu, le médecin constate que ces informations complémentaires proviennent de la liste des problèmes et de la liste des allergies. Alors que la plus ancienne inscription dans la liste des problèmes n’était que provisoire, l’inscription ultérieure dans la liste des allergies fait état d’une allergie probable et d’un risque modéré. Le logiciel de détection des interactions médicamenteuses du SIH a comparé la composition chimique de l’hydrochlorothiazide et de l’Hygroton (chlortalidone) et constaté qu’ils sont très similaires. Le médecin décide que ces informations sont plausibles et modifie sa commande au profit d’un médicament qui ne déclenchera vraisemblablement aucune réaction allergique.

**FHIR AllergyIntolerance resource query of patient record** ([consultation de la liste des allergies à propos d’une probable allergie au thiazide](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
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

**FHIR Condition resource query from imported patient record** ([consultation de la liste des problèmes à propos d’une éventuelle allergie au thiazide](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
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

### Cas d’utilisation n° 5 : Documentation d’une allergie aux animaux

Scénario : Un médecin voit un patient venant pour la première fois dans sa clinique ambulatoire pour un examen de routine. Le patient explique au médecin qu’il souffre d’éruptions cutanées accompagnées de démangeaisons aux bras et au visage. Le médecin procède à quelques tests sanguins et à une série de tests cutanés, qui révèlent une forte réaction à la protéine présente sur les poils de chat, avec un taux élevé d’anticorps IgE. Le patient confirme qu’il travaille dans un refuge pour animaux où il est en contact avec des chats. Le médecin ouvre le protocole des allergies et documente dans la liste des allergies du SIH la tendance allergique du patient aux poils de chat, avec pour symptômes des éruptions cutanées accompagnées de démangeaisons, et un faible degré de criticité et de gravité.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (résultats de laboratoire avec résultat positif du test d’allergie à la protéine des poils de chat)
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

**FHIR AllergyIntolerance resource** ([inscription d’une allergie confirmée à la protéine des poils de chat dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-5.html))
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
    <td class="tg-cly1">Refuge pour animaux</td>
  </tr>
</tbody>
</table>

### Cas d’utilisation n° 6 : Documentation d’une allergie à une substance non médicamenteuse, qui déclenche une réaction croisée avec un médicament

Scénario : La mère d’un patient explique au médecin que son enfant réagit violemment à la consommation d’arachides, avec comme symptômes une urticaire généralisée, une respiration haletante et de l’hypotension, et qu’il faut lui administrer de l’adrénaline pour le réanimer. Le médecin effectue un test sanguin qui révèle de fortes concentrations d’anticorps IgE contre la protéine Ara h2 présente dans l’huile d’arachide, agent sensibilisant lors d’une allergie clinique à l’arachide. Le médecin inscrit dans le dossier informatique du patient une allergie à l’arachide, en indiquant comme symptômes l’anaphylaxie, de l’urticaire et une respiration haletante, et en qualifiant le degré de criticité d’élevé et le degré de gravité de la réaction de « sévère ».
Des années plus tard, le même patient devenu adolescent consulte un dermatologue pour un problème d’acné. Dans son plan de traitement, le médecin établit une ordonnance électronique pour des capsules d’isotrétinoïne. Au stade de la confirmation, le logiciel du SIH procède à un contrôle des allergies, et un message d’alerte prioritaire signale que les capsules renferment de l’huile d’arachide non raffinée et donc susceptible de renfermer de la protéine d’arachide, contre-indiquée chez ce patient. Le médecin annule sa commande et opte pour une autre préparation.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (résultat de laboratoire avec test d’allergie positif à la protéine d’arachide)
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

**FHIR AllergyIntolerance resource** ([inscription d’une allergie confirmée à l’huile d’arachide dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-6.html))
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

### Cas d’utilisation n° 7 : Documentation d’une réaction allergique à d’autres substances non médicamenteuses

Scénario : Une infirmière diplômée consulte son médecin de famille, car elle ressent à tout moment des éruptions cutanées généralisée et des démangeaisons. Elle travaille dans une unité de soins intensifs où elle a constamment affaire à des produits chimiques et des désinfectants, assiste aux interventions chirurgicales et pose des cathéters aux patients. Lors de l’anamnèse, elle confirme avoir constaté des éruptions cutanées sur ses mains après avoir manipulé des cathéters en latex. Elle signale encore avoir développé dans le passé une réaction allergique grave aux papayes et ne consommer depuis lors des fruits qu’avec modération. Le médecin soupçonne une allergie au latex avec des réactions d’allergies alimentaires croisées et lui prescrit un test de recherche d’anticorps de type IgE dirigés contre le latex d’hévéa. Le test sérologique est fortement positif, et le médecin signale à l’infirmière ses résultats en la mettant en garde contre d’autres aliments susceptibles de déclencher des réactions croisées. Tandis qu’il documente la rencontre clinique, il inscrit l’allergie au latex dans la liste des allergies.
Le logiciel du SIH aide à sélectionner les aliments, les produits chimiques ou les produits biologiques d’origine animale pouvant être identifiés comme substances responsables, en vue de leur inscription dans la liste des allergies ou pour l’inscription dans le dossier d’une réaction indésirable.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (résultat de laboratoire avec test d’allergie positif au latex)
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

**FHIR Condition resource query from patient record** ([inscription d’une allergie au latex dans la liste des problèmes](Condition-CH-AllergyIntolerance-Condition-Usecase-7.html))
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

**FHIR AllergyIntolerance resource query of patient record** ([inscription d’une allergie au latex dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-7.html))
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
    <td class="tg-cly1">Travail en USI</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.exposureRoute</td>
    <td class="tg-cly1">6064005 Topical route (qualifier)</td>
  </tr>
</tbody>
</table>

### Cas d’utilisation n° 8 : Documentation de l’absence d’allergie connue

Scénario : Une infirmière procède à l’examen initial d’une nouvelle patiente au cabinet. Lors de l’entretien clinique, elle s’enquiert des médicaments consommés ou d’autres allergies. La patiente signale n’être allergique à aucun médicament, aliment, produit chimique ou animal. L’infirmière ouvre la « liste des allergies » du SIH et documente « aucune allergie connue », afin qu’il y ait dans le système une confirmation électronique qu’elle s’est informée auprès de la patiente et qu’à la date et à l’heure indiquées, l’anamnèse s’est révélée négative. Cette opération constitue une aide à la décision, sachant que les allergies doivent être documentées avant que toute ordonnance médicale ne soit rédigée. Elle est codée dans la liste des allergies du SIH en tant qu’absence confirmée de réactions indésirables.

**FHIR AllergyIntolerance resource query of patient record** ([mention « aucune allergie connue » inscrite dans la liste des allergies](AllergyIntolerance-CH-AllergyIntolerance-Usecase-8.html))
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

