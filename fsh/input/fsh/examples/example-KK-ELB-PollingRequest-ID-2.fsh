//
// FHIR Example for KK ELB Polling Request
// Request mit performingOrganization
//
Instance: KK-ELB-PollingRequest-ID-2
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_PollingRequest"
* parameter[0]
  * name = "performingOrganization"
  * valueIdentifier
    * system = "http://fhir.de/sid/arge-ik/iknr"
    * value = #123456780