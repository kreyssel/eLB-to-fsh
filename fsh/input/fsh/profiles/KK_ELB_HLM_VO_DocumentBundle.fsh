Profile: KK_ELB_HLM_VO_DocumentBundle
Parent: Bundle
Id: KK_ELB_HLM_VO_DocumentBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_DocumentBundle"
* obeys HLMKatalog
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
  * id ..0
  * use ..0
  * type ..0
  * system 1.. MS
  * value 1.. MS
  * period ..0
  * assigner ..0
* type = #document (exactly)
* type MS
* timestamp 1.. MS
* total ..0
* link ..0
* signature ..0
* entry 1.. MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    heilmittel 1..* MS
* entry[composition]
  * resource 1.. MS
  * resource only $KK_ELB_HLM_VO_Composition
  * search ..0
  * request ..0
  * response ..0
* entry[heilmittel]
  * resource 1.. MS
  * resource only $KK_ELB_HLM_VO_ServiceRequest