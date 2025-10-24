Profile: KK_ELB_HLM_VO_DocumentBundle
Parent: Bundle
Id: KK_ELB_HLM_VO_DocumentBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_DocumentBundle"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* obeys HLMKatalog
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
* identifier.id ..0
* identifier.use ..0
* identifier.type ..0
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.period ..0
* identifier.assigner ..0
* type = #document (exactly)
* type MS
* timestamp 1.. MS
* total ..0
* link ..0
* entry 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    heilmittel 1..* MS
* entry[composition].resource 1.. MS
* entry[composition].resource only KK_ELB_HLM_VO_Composition
* entry[composition].search ..0
* entry[composition].request ..0
* entry[composition].response ..0
* entry[heilmittel].resource 1.. MS
* entry[heilmittel].resource only KK_ELB_HLM_VO_ServiceRequest
* signature ..0