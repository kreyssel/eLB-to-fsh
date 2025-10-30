//
// FHIR Example for KK_ELB_ResponseParameters
// Antwort ohne Inhalt
//
Instance: KK-ELB-ParticipationStatusRequestParameters-ID-0
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ParticipationStatusRequestParameters"
* parameter[0]
  * name = "patient"
  * valueIdentifier
    * system = "http://fhir.de/sid/gkv/kvid-10"
    * value = #K123456789
* parameter[+]
  * name = "payor"
  * valueIdentifier
    * system = "http://fhir.de/sid/arge-ik/iknr"
    * value = #101575519