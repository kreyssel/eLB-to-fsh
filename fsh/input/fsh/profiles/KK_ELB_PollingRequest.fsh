Profile: KK_ELB_PollingRequest
Parent: Parameters
Id: KK_ELB_PollingRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_PollingRequest"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter 1..1 MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    byRequestingSystem 0..1 and
    byPerformingOrganization 0..1 and
    byPatient 0..1 and
    byPayor 0..1
* parameter[byRequestingSystem].id ..0
* parameter[byRequestingSystem].name = "requestingSystem" (exactly)
* parameter[byRequestingSystem].name MS
* parameter[byRequestingSystem].value[x] 1.. MS
* parameter[byRequestingSystem].value[x] only $identifier-iknr
* parameter[byRequestingSystem].resource ..0
* parameter[byRequestingSystem].part ..0
* parameter[byPerformingOrganization].id ..0
* parameter[byPerformingOrganization].name = "performingOrganization" (exactly)
* parameter[byPerformingOrganization].name MS
* parameter[byPerformingOrganization].value[x] 1.. MS
* parameter[byPerformingOrganization].value[x] only $identifier-iknr
* parameter[byPerformingOrganization].resource ..0
* parameter[byPerformingOrganization].part ..0
* parameter[byPatient].id ..0
* parameter[byPatient].name = "patient" (exactly)
* parameter[byPatient].name MS
* parameter[byPatient].value[x] 1.. MS
* parameter[byPatient].value[x] only $identifier-kvid-10
* parameter[byPatient].resource ..0
* parameter[byPatient].part ..0
* parameter[byPayor].id ..0
* parameter[byPayor].name = "payor" (exactly)
* parameter[byPayor].name MS
* parameter[byPayor].value[x] 1.. MS
* parameter[byPayor].value[x] only $identifier-iknr
* parameter[byPayor].resource ..0
* parameter[byPayor].part ..0