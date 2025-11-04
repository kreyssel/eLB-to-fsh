Profile: KK_ELB_ResponseDocumentBundle
Parent: Bundle
Id: KK_ELB_ResponseDocumentBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
  * use ..0
  * type ..0
  * system 1.. MS
  * system = "urn:ietf:rfc:3986" (exactly)
  * value 1.. MS
  * period ..0
  * assigner ..0
* type = #document (exactly)
* type MS
* timestamp 1.. MS
* total ..0
* link ..0
* entry ..2 MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    chargeItem 1..1 MS
* entry[composition]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_ResponseComposition
* entry[chargeItem]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_ChargeItem
* signature 0..1 MS
  * type ..1 MS
    * system 1.. MS
    * system = "urn:iso-astm:E1762-95:2013" (exactly)
    * code 1.. MS
    * code = #1.2.840.10065.1.12.1.5 (exactly)
  * when MS
  * who MS
    * identifier 1..1 MS
    * identifier only $identifier-iknr
      * system MS
      * value MS
  * sigFormat 1..1 MS
  * sigFormat = #application/signature+xml (exactly)
  * data 1..1 MS