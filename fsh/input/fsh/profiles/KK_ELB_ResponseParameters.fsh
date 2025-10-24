Profile: KK_ELB_ResponseParameters
Parent: Parameters
Id: KK_ELB_ResponseParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseParameters"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    softwareIdentifier 1..1 MS and
    emailContactPoint 1..1 MS and
    responseBundle 0..*
* parameter[softwareIdentifier].id ..0
* parameter[softwareIdentifier].name = "softwareIdentifier" (exactly)
* parameter[softwareIdentifier].name MS
* parameter[softwareIdentifier].value[x] 1.. MS
* parameter[softwareIdentifier].value[x] only string
* parameter[softwareIdentifier].resource ..0
* parameter[softwareIdentifier].part ..0
* parameter[emailContactPoint].name = "emailContactPoint" (exactly)
* parameter[emailContactPoint].name MS
* parameter[emailContactPoint].value[x] 1.. MS
* parameter[emailContactPoint].value[x] only ContactPoint
* parameter[emailContactPoint].value[x].system 1.. MS
* parameter[emailContactPoint].value[x].system = #email (exactly)
* parameter[emailContactPoint].value[x].value 1.. MS
* parameter[responseBundle].id ..0
* parameter[responseBundle].name = "responseBundle" (exactly)
* parameter[responseBundle].name MS
* parameter[responseBundle].value[x] ..0
* parameter[responseBundle].resource 1.. MS
* parameter[responseBundle].resource only KK_ELB_ResponseDocumentBundle
* parameter[responseBundle].part ..0