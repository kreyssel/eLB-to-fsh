//
// FHIR Example for KK ELB Polling Request
// Request mit Kostenträger IK
//
Instance: KK-ELB-PollingRequest-ID-1
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_PollingRequest"
* parameter[0]
  * name = "payor"
  * valueIdentifier
    * system = "http://fhir.de/sid/arge-ik/iknr"
    * value = #123456780