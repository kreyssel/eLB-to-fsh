//
// FHIR Example for KK ELB Polling Request
// Request mit eKVNR des Patienten
//
Instance: KK-ELB-PollingRequest-ID-0
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_PollingRequest"
* parameter[0]
  * name = "patient"
  * valueIdentifier
    * system = "http://fhir.de/sid/gkv/kvid-10"
    * value = #K123456789