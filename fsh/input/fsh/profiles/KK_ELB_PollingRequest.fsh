Profile: KK_ELB_PollingRequest
Parent: Parameters
Id: KK_ELB_PollingRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_PollingRequest"
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter 1..1 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    byRequestingSystem 0..1 and
    byPerformingOrganization 0..1 and
    byPatient 0..1 and
    byPayor 0..1
* parameter[byRequestingSystem]
  * id ..0
  * name = "requestingSystem" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only $identifier-iknr
  * resource ..0
  * part ..0
* parameter[byPerformingOrganization]
  * id ..0
  * name = "performingOrganization" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only $identifier-iknr
  * resource ..0
  * part ..0
* parameter[byPatient]
  * id ..0
  * name = "patient" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only $identifier-kvid-10
  * resource ..0
  * part ..0
* parameter[byPayor]
  * id ..0
  * name = "payor" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only $identifier-iknr
  * resource ..0
  * part ..0