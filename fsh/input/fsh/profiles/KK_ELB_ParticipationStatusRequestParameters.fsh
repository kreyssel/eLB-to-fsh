Profile: KK_ELB_ParticipationStatusRequestParameters
Parent: Parameters
Id: KK_ELB_ParticipationStatusRequestParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ParticipationStatusRequestParameters"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter ..2 MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    patient 1..1 MS and
    payor 1..1 MS
* parameter[patient].id ..0
* parameter[patient].name = "patient" (exactly)
* parameter[patient].name MS
* parameter[patient].value[x] 1.. MS
* parameter[patient].value[x] only Identifier
* parameter[patient].value[x].id ..0
* parameter[patient].value[x].use ..0
* parameter[patient].value[x].type ..0
* parameter[patient].value[x].system 1.. MS
* parameter[patient].value[x].system = "http://fhir.de/sid/gkv/kvid-10" (exactly)
* parameter[patient].value[x].value 1.. MS
* parameter[patient].value[x].period ..0
* parameter[patient].value[x].assigner ..0
* parameter[patient].resource ..0
* parameter[patient].part ..0
* parameter[payor].id ..0
* parameter[payor].name = "payor" (exactly)
* parameter[payor].name MS
* parameter[payor].value[x] 1.. MS
* parameter[payor].value[x] only Identifier
* parameter[payor].value[x].id ..0
* parameter[payor].value[x].use ..0
* parameter[payor].value[x].type ..0
* parameter[payor].value[x].system 1.. MS
* parameter[payor].value[x].system = "http://fhir.de/sid/arge-ik/iknr" (exactly)
* parameter[payor].value[x].value 1.. MS
* parameter[payor].value[x].period ..0
* parameter[payor].value[x].assigner ..0
* parameter[payor].resource ..0
* parameter[payor].part ..0