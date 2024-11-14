Invariant: ips-2
Description: "if no \"hasMember\" element is present then Observation must have a\" value\""
Severity: #error
Expression: "value.exists() or hasMember.exists()"

Invariant: hasMemberOrComponent
Description: "component and hasMember are mutually exclusive"
Severity: #error
Expression: "hasMember.empty() or component.empty()"

Invariant: hasComponentifValueStringEmpty
Description: "component is required if valueString is empty"
Severity: #error
Expression: "(component.exists() and valueString.empty()) or valueString.exists()"

Invariant: ips-1
Description: "Datetime must be at least to day."
Severity: #error
Expression: "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
XPath: "not(boolean(effectiveDateTime)) or f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"

Invariant: ips-pat-1
Description: "Patient.name.given or Patient.name.family or both SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists()"
XPath: "f:given or f:family"

Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"