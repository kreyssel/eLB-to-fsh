Profile: KK_ELB_ParticipationStatusRequestParameters
Parent: Parameters
Id: KK_ELB_ParticipationStatusRequestParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ParticipationStatusRequestParameters"
* ^version = "1.0.0"
* ^status = #draft
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter ..2 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    patient 1..1 MS and
    payor 1..1 MS
* parameter[patient]
  * id ..0
  * name = "patient" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only Identifier
    * id ..0
    * use ..0
    * type ..0
    * system 1.. MS
    * system = "http://fhir.de/sid/gkv/kvid-10" (exactly)
    * value 1.. MS
    * period ..0
    * assigner ..0
  * resource ..0
  * part ..0
* parameter[payor]
  * id ..0
  * name = "payor" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only Identifier
    * id ..0
    * use ..0
    * type ..0
    * system 1.. MS
    * system = "http://fhir.de/sid/arge-ik/iknr" (exactly)
    * value 1.. MS
    * period ..0
    * assigner ..0
  * resource ..0
  * part ..0