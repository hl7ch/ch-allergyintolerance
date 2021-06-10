
Extension: AbatementDateTimeUvIps
Id: abatement-dateTime-uv-ips
Title: "Condition abatement date"
Description: "Extension defined by the IPS project to describe the abatement date for allergies"
* ^version = "1.0.0"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction[0] = $m49.htm#001
* ^context[0].type = #element
* ^context[0].expression = "AllergyIntolerance"
* . MS
* url MS
* valueDateTime only dateTime
* valueDateTime MS
