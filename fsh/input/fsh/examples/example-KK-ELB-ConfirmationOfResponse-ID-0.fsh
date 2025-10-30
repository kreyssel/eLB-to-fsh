//
// FHIR Example for KK_ELB_ConfirmationOfResponse
// Beispiel einer Bestätigung des Empfangs eines Bestätigungsobjektes
//
Instance: KK-ELB-ConfirmationOfResponse-ID-0
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ConfirmationOfResponse"
* parameter[0]
  * name = "confirmationBundleUuid"
  * valueUuid.value = "urn:uuid:4444d555-666e-77a8-999c-222222b2d33c"