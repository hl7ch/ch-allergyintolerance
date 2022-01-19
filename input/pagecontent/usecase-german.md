# Klinische Anwendungsfall-Szenarien

Die Usecases sind adaptiert vom "Implementation Guide for Use of SNOMED CT in Documentation of Allergy, Non-allergic Hypersensitivity and Intolerance" der [Allergies/Hypersensitivity and Intolerance Clinical Reference Group](https://confluence.ihtsdotools.org/pages/viewpage.action?pageId=40143192) of Snomed CT.

## Usecase 1: Dokumentation einer unerwünschten Reaktion auf einen Medikamentenwirkstoff
Szenario: Ein Arzt empfängt einen Patienten in der Klinik zur ambulanten Routineversorgung.  Der Patient wurde bereits wegen Diabetes und Bluthochdruck behandelt.  Kürzlich wurden dem Patienten 25 mg Hydrochlorothiazid gegen seinen Bluthochdruck verschrieben. Er teilt dem Arzt mit, dass er vor einigen Wochen eine Nesselsucht entwickelt habe, und bei der Untersuchung bestätigt der Arzt das Vorhandensein einer generalisierten Urtikaria.  Eine Überprüfung des Systems ergibt keine anderen Ursachen und der Arzt glaubt, dass der Patient möglicherweise eine urtikarielle Reaktion auf Hydrochlorothiazid zeigt.  Er ist sich dessen nicht ganz sicher und rät dem Patienten, das Thiazid abzusetzen und Diphenhydramin (Antihistaminikum) zur Linderung einzusetzen.  Der Arzt gibt dem Patienten eine höhere Dosis Losartan zur Blutdruckkontrolle.  Er meldet den Patienten in einer Woche zur Nachuntersuchung an und fügt seine Einschätzung in der Problemliste hinzu: "Urtikarielle Reaktion, mögliche Thiazid-Allergie". Eine Woche später kommt der Patient zur Nachuntersuchung, wobei der Juckreiz und der Ausschlag vollständig verschwunden sind.  Er berichtet, dass die Reaktion innerhalb weniger Tage nach Absetzen des Thiazids abgeklungen ist.  Der Arzt fügt der Problemliste den Vermerk "Hydrochlorothiazid-Allergie: Urtikaria; mässig kritisch, wahrscheinlich" hinzu.

**FHIR Condition resource query from patient record** ([Eintrag einer Urtikaria wegen einer möglichen Thiazidallergie in Problemliste](Condition-CH-AllergyIntolerance-Condition-Visit1-Usecase-1.html))
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


**FHIR Condition resource query from patient record** ([Eintrag einer Urtikaria wegen einer wahrscheinlichen Thiazidallergie in Problemliste](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
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

## Usecase 2: Dokumentation einer Arzneimittelallergie in der Allergieliste und Auslösung einer Warnmeldung für die Gesundheitsfachperson
Szenario: Die Krankenschwester der Klinik ruft den Patienten aus Szenario 1 eine Woche später an und teilt ihm die Testergebnisse seines Besuchs mit.  Sie erkundigt sich nach der Urtikaria, und der Patient bestätigt, dass diese mit dem Absetzen des Diuretikums verschwunden ist.  Gemäss den Klinikprotokollen greift sie auf die elektronische Patientenakte zu und nimmt einen neuen Eintrag in der Allergieliste vor, die vom KIS für die Ausgabe von klinischen Verordnungswarnungen verwendet wird.  Die Software durchläuft eine Reihe von Fragen: Was war der auslösende Wirkstoff, welche Symptome oder Befunde traten bei der Reaktion auf, welche Art von Reaktion trat auf, wie hoch war der Schweregrad, die Kritikalität und wie der Verifizierungsstatus.  Die Krankenschwester beantwortet die Fragen, und in der Liste erscheint ein Allergieeintrag: "Hydrochlorothiazid; Allergie; mittlerer Schweregrad; geringer Kritikalitätsgrad; Symptome - Urtikaria".
Jahre später sucht der Patient einen anderen Arzt innerhalb der Organisation auf, um sich über die Behandlung einer resistenten Hypertonie beraten zu lassen.  Der zweite Arzt entscheidet, dass ein ACE-Hemmer/Thiazid-Medikament für den Patienten geeignet ist.  Als der Arzt eine Verordnung für " CO-LISINOPRIL Mepha Tabl 20/12.5" erstellt und die elektronische Verordnung bestätigt, erscheint eine Warnmeldung, die eine Reaktion des Arztes erfordert und ihn vor einer Allergie gegen Hydrochlorothiazid warnt, das ein Bestandteil des Medikaments ist, das er verordnen will.  Die Warnung wird von der KIS-Software generiert, die die Allergieliste als Referenz verwendet. Der Arzt zieht die Bestellung zurück und wählt ein anderes blutdrucksenkendes Mittel.

**FHIR AllergyIntolerance resource query of patient record** ([Eintrag einer wahrscheinblichen Thiazidallergie in Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
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

## Usecase 3: Dokumentation einer Medikamentenunverträglichkeit

Szenario: Ein Patient kommt in die Notaufnahme und klagt über Klingeln, Klirren und Pfeifen in seinen Ohren. Der Patient kann nicht genau sagen, wann die Geräusche entstanden sind, und er war keiner lauten Umgebung ausgesetzt. Der Patient hat eine Vorgeschichte mit chronischen Rückenschmerzen, Herzinsuffizienz und Arthritis. Bei der Durchsicht der Medikamentenliste des Patienten stellt der Arzt fest, dass der Patient täglich 12 Tabletten Aspirin einnimmt. Der Arzt vermutet, dass der Patient an einem aspirininduzierten Tinnitus leidet. Der Patient wird aufgefordert, seine Aspirindosis zu verringern und sich mit seinem Rheumatologen, der das Aspirin verschrieben hat, in Verbindung zu setzen. Im KIS vermerkt der Notfallarzt in der Diagnose- und Allergieliste, dass der Patient eine Medikamentenunverträglichkeit gegen Aspirin hat.

**FHIR Condition resource query from patient record** ([Eintrag einer Aspirin-Intoleranz in Problemliste](Condition-CH-AllergyIntolerance-Condition-Usecase-3.html))
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

**FHIR AllergyIntolerance resource query of patient record** ([Eintrag einer Aspirin-Intoleranz in Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-3.html))
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

## Usecase 4: Gemeinsame Nutzung von Daten über Arzneimittelallergien

Szenario: Der Patient aus Szenario 1 plant einen Urlaub mit seiner Familie, der aus einem Campingausflug quer durchs Land besteht.  Zur Vorbereitung der Reise spricht er mit seinem Arzt und lässt sich eine elektronische Zusammenfassung seiner Krankenakte auf einem USB-Stick für sich, seine Frau und seine Kinder aushändigen. Sein Arzt teilt ihm mit, dass die Software für die Zusammenfassung ein elektronisches Lesegerät sowie ein Standardformat enthält, das in ein anderes KIS für die Patientenversorgung importiert werden kann.  Der Urlaub verläuft glücklich, bis der Patient viele Kilometer von zu Hause entfernt beim Wandern Schmerzen in der Brust bekommt und in die örtliche Notaufnahme eingeliefert wird.  Er übergibt den USB-Stick mit seiner elektronischen Aktenzusammenfassung dem Arzt der Notaufnahme, dessen Krankenhaus ein KIS einsetzt, das FHIR-extrahierte elektronische Aktenzusammenfassungen zur Integration in das KIS vor Ort akzeptieren kann.  Die Pflegefachfrau in der Notaufnahme lädt den USB-Stick und übernimmt die elektronische Kopie der Problemliste, der Allergien und der Medikamentenliste in die Akte vor Ort.  Der Softwareextrakt gleicht die Unterschiede im Informationsmodell der verschiedenen KIS-Anbieter ab, indem er die Allergieliste mit den Informationen in der Problemliste und der Diagnosenliste abgleicht.

Später schreibt der behandelnde Arzt eine Einweisungsverfügung für den Patienten und nimmt ihn zur Beobachtung auf die Station auf.  Der Arzt stellt fest, dass der Blutdruck des Patienten mit 195/100 zu hoch ist.  Der Arzt möchte keine aggressiven Maßnahmen ergreifen, sondern entscheidet, dass der Blutdruck langsam gesenkt werden sollte.  Er stellt fest, dass die Medikamentenliste des Patienten bereits zwei Arten von Blutdruckmedikamenten enthält, und gibt eine elektronische Verordnung für "Hygroton 50 mg po täglich" ein, ein beliebtes Mittel gegen Bluthochdruck mit langsamem Wirkungseintritt.  Als der Arzt die "Enter"-Taste drückt, um die Bestellung zu bestätigen, wird eine Pop-up-Warnung vom KIS generiert, die darauf hinweist, dass dieser Patient eine allergische Reaktion auf ein Thiazid-Diuretikum in Form von Nesselsucht gezeigt hat und dass Chlortalidon (Hygroton) mit hoher Wahrscheinlichkeit eine Kreuzreaktion hervorruft.  Beim Studieren der Warnmeldung stellt der Arzt fest, dass die unterstützenden Informationen der Problemliste und der Allergieliste entnommen wurden.  Während der frühere Eintrag in der Problemliste vorläufig war, ist der spätere Eintrag in der Allergieliste als wahrscheinliche Allergie und mäßiges Risiko zu bezeichnen.  Die KIS-Arzneimittelinteraktionssoftware hat die chemische Zusammensetzung von Hydrochlorothiazid und Hygroton (Chlortalidon) abgeglichen und festgestellt, dass sie ähnlich sind.  Er entscheidet, dass die Informationen glaubwürdig sind, und ändert seine Bestellung in ein Medikament, das wahrscheinlich keine allergische Reaktion auslöst.

**FHIR AllergyIntolerance resource query of patient record** ([Abfrage der wahrscheinlichen Thiazidallergie aus der Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-2.html))
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

**FHIR Condition resource query from imported patient record** ([Abfrage der möglichen Thiazidallergie aus der Problemliste](Condition-CH-AllergyIntolerance-Condition-Visit2-Usecase-1.html))
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

## Usecase 5: Dokumentation einer Tierallergie

Szenario: Ein Arzt sieht einen Patienten zum ersten Mal in der ambulanten Klinik zur Routineuntersuchung.  Der Patient berichtet dem Arzt, dass er einen Ausschlag und wiederkehrenden Juckreiz entwickelt hat, der sich auf die Arme und das Gesicht beschränkt.  Der Arzt führt einige Bluttests und eine Reihe von Hauttests durch, die eine intensive Reaktion auf Katzenhaar-Proteine mit hohen IgE-Antikörperspiegeln zeigen. Der Patient bestätigt, dass er in einem Tierheim arbeitet und dort auch Katzen ausgesetzt ist. Der Arzt öffnet das Allergieprotokoll und dokumentiert die allergische Neigung auf Katzenhaar mit den Symptomen Hautausschlag und Juckreiz, Kritikalität und Schweregrad von niedrig in der KIS-Allergieliste.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laborbefund mit positiven Allergietest-Resultat auf Katzenhaar-Protein)
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

**FHIR AllergyIntolerance resource** ([Eintrag der bestätigten allergischen Neigung zu Katzenhaar-Protein in die Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-5.html))
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
    <td class="tg-cly1">Tierheim</td>
  </tr>
</tbody>
</table>

## Usecase 6: Dokumentation einer Allergie gegen einen nicht-medikamentösen Stoff, der mit einem Arzneimittel kreuzreagiert

Szenario: Die Mutter eines Patienten berichtet dem Arzt ihres Kindes, dass das Kind auf den Verzehr von Erdnüssen heftig mit Symptomen wie generalisiertem Nesselausschlag, Keuchen und Hypotonie reagiert, die den Einsatz von Adrenalin zur Wiederbelebung erfordern.  Der Arzt führt einen Bluttest durch, der hohe Konzentrationen von IgE-Antikörpern gegen das Erdnussprotein Arachis h2 nachweist, das im Erdnussöl (Arachis-Öl) enthalten ist - dem Sensibilisierungsstoff für die klinische Erdnussallergie.  Der Arzt trägt eine Erdnussallergie in die elektronische Patientenakte ein, wobei er Anaphylaxie, Nesselsucht und Keuchen als Reaktionssymptome angibt, die Kritikalität als hoch und den Schweregrad der Reaktion als "schwer" einstuft.  
Jahre später wird der Junge von einem Dermatologen zur Behandlung von Akne untersucht.  Als Teil des Behandlungsplans gibt der Arzt ein elektronisches Rezept für Isotretinoin-Kapseln ein.  Als der Arzt die Verordnung bestätigt, führt die KIS-Software einen Allergieabgleich durch und gibt eine Warnung hoher Priorität aus, dass die Kapseln Erdnussöl enthalten, das nicht hoch raffiniert ist und daher möglicherweise Erdnussprotein enthält und für den Patienten kontraindiziert ist.  Der Arzt storniert die Bestellung und wählt ein alternatives Präparat aus.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laborbefund mit positiven Allergietest-Resultat auf Erdnussprotein) 
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

**FHIR AllergyIntolerance resource** ([Eintrag einer bestätigten Erdnuss-Öl-Allergie in Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-6.html))
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

## Usecase 7: Dokumentation einer allergischen Reaktion auf andere nicht-medikamentöse Stoffe

Szenario:  Eine diplomierte Krankenschwester stellt sich bei ihrem Hausarzt vor, weil sie immer wieder unter einem generalisierten Ausschlag und Juckreiz leidet.  Sie arbeitet auf einer Intensivstation und hat ständig mit Chemikalien und Desinfektionsmitteln zu tun, assistiert bei chirurgischen Eingriffen und führt Katheterversorgungen für ihre Patienten durch.  Im Rahmen der Anamnese bestätigt sie, dass sie nach dem Umgang mit Latexkathetern einen Ausschlag an ihren Händen bemerkt hat.  Außerdem berichtet sie von einer schweren allergischen Reaktion auf Papaya in der Vergangenheit und ist deshalb vorsichtig mit dem Verzehr von Obst.  Der Arzt vermutet eine Latexallergie, die mit Nahrungsmitteln kreuzreagiert, und ordnet einen IgE-Test auf Hevea-Latex-Antikörper an.  Der serologische Test ist stark positiv, und der Arzt teilt der Krankenschwester seinen Befund mit und warnt sie vor anderen Lebensmitteln, die eine Kreuzreaktion auslösen könnten.  Während er die klinische Begegnung dokumentiert, trägt er eine Latexallergie in die Allergieliste ein.
Die KIS-Software unterstützt die Auswahl von Lebensmitteln, Chemikalien und tierischen biologischen Produkten als Substanzen, die als Ausgangsstoffe für einen Eintrag in die Allergieliste oder für die Erfassung einer unerwünschten Reaktion identifiziert werden können.

**FHIR [Observation resource](https://hl7.org/fhir/observation.html)** (Laborbefund mit positiven Allergietest-Resultat auf Latex)
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

**FHIR Condition resource query from patient record** ([Eintrag einer Latex-Allergie in Problemliste](Condition-CH-AllergyIntolerance-Condition-Usecase-7.html))
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

**FHIR AllergyIntolerance resource query of patient record** ([Eintrag eine Latex-Allergie in Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-7.html))
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
    <td class="tg-cly1">Arbeit auf IPS</td>
  </tr>
  <tr>
    <td class="tg-cly1">reaction.exposureRoute</td>
    <td class="tg-cly1">6064005 Topical route (qualifier)</td>
  </tr>
</tbody>
</table>

## Usecase 8: Dokumentation von 'Keine bekannten Allergien'

Szenario:  Eine Krankenschwester führt eine Aufnahmeuntersuchung bei einem Patienten durch, der neu in der Praxis ist.  Im Rahmen des klinischen Gesprächs erkundigt er sich nach Medikamenten und anderen Allergien.  Die Patientin berichtet, dass sie auf keine Medikamente, Lebensmittel, Chemikalien oder Tiere allergisch ist.  Die Krankenschwester öffnet die "Allergieliste" im KIS und dokumentiert "Keine bekannten Allergien", womit elektronisch bestätigt wird, dass die Krankenschwester sich bei der Patientin erkundigt hat und dass die Anamnese zum aufgezeichneten Datum und Zeitpunkt negativ bestätigt wurde.  Dies erfüllt die Kriterien für die Entscheidungshilfe, wonach Allergien dokumentiert werden müssen, bevor Medikamentenverordnungen geschrieben werden, und wird in der KIS-Allergieliste als bestätigte Abwesenheit von unerwünschten Reaktionen kodiert.

**FHIR AllergyIntolerance resource query of patient record** ([Eintrag keine bekannte Allergie in Allergieliste](AllergyIntolerance-CH-AllergyIntolerance-Usecase-8.html))
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

