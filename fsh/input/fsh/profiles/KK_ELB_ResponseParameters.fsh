Profile: KK_ELB_ResponseParameters
Parent: Parameters
Id: KK_ELB_ResponseParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseParameters"
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    softwareIdentifier 1..1 MS and
    emailContactPoint 1..1 MS and
    responseBundle 0..*
* parameter[softwareIdentifier]
  * id ..0
  * name = "softwareIdentifier" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only string
  * resource ..0
  * part ..0
* parameter[emailContactPoint]
  * name = "emailContactPoint" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only ContactPoint
    * system 1.. MS
    * system = #email (exactly)
    * value 1.. MS
* parameter[responseBundle]
  * id ..0
  * name = "responseBundle" (exactly)
  * name MS
  * value[x] ..0
  * resource 1.. MS
  * resource only $KK_ELB_ResponseDocumentBundle
  * part ..0