Profile: KK_ELB_ResponseDocumentBundle
Parent: Bundle
Id: KK_ELB_ResponseDocumentBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
* identifier.use ..0
* identifier.type ..0
* identifier.system 1.. MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1.. MS
* identifier.period ..0
* identifier.assigner ..0
* type = #document (exactly)
* type MS
* timestamp 1.. MS
* total ..0
* link ..0
* entry ..2 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    chargeItem 1..1 MS
* entry[composition].fullUrl 1.. MS
* entry[composition].resource 1.. MS
* entry[composition].resource only KK_ELB_ResponseComposition
* entry[chargeItem].fullUrl 1.. MS
* entry[chargeItem].resource 1.. MS
* entry[chargeItem].resource only KK_ELB_ChargeItem
* signature.type ..1 MS
* signature.type.system 1.. MS
* signature.type.system = "urn:iso-astm:E1762-95:2013" (exactly)
* signature.type.code 1.. MS
* signature.type.code = #1.2.840.10065.1.12.1.5 (exactly)
* signature.when MS
* signature.who MS
* signature.who.identifier 1.. MS
* signature.who.identifier only $identifier-iknr
* signature.who.identifier.system MS
* signature.who.identifier.value MS
* signature.sigFormat 1.. MS
* signature.sigFormat = #application/signature+xml (exactly)
* signature.data 1.. MS