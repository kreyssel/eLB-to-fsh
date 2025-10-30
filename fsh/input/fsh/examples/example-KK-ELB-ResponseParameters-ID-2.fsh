//
// FHIR Example for KK_ELB_ResponseParameters
// Antwort ohne Inhalt
//
Instance: KK-ELB-ResponseParameters-ID-2
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseParameters"
* parameter[0]
  * name = "emailContactPoint"
  * valueContactPoint
    * system = #email
    * value = "bestaetigungssystem@example.com"
* parameter[+]
  * name = "softwareIdentifier"
  * valueString = "bestaetigungssystem.example.com@1.0.9"