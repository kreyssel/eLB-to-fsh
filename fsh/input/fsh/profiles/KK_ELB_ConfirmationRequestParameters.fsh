Profile: KK_ELB_ConfirmationRequestParameters
Parent: Parameters
Id: KK_ELB_ConfirmationRequestParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ConfirmationRequestParameters"
* obeys Parameters-endpoint-request-with-callback
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    requestType 1..1 MS and
    callbackUrl 0..1 and
    softwareIdentifier 1..1 MS and
    emailContactPoint 1..1 MS and
    chargeItem 1..* MS
* parameter[requestType]
  * id ..0
  * name = "requestType" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only Coding
    * id ..0
    * system 1.. MS
    * system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_RequestType" (exactly)
    * version ..0
    * code 1.. MS
    * display ..0
    * userSelected ..0
  * resource ..0
  * part ..0
* parameter[callbackUrl]
  * id ..0
  * name = "callbackUrl" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only url
  * resource ..0
  * part ..0
* parameter[softwareIdentifier]
  * ^comment = "Identifier für die einliefernde Software (Name des Herstellers, Produktname, Version)"
  * id ..0
  * name = "softwareIdentifier" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only string
    * id ..0
  * resource ..0
  * part ..0
* parameter[emailContactPoint]
  * id ..0
  * name = "emailContactPoint" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only ContactPoint
    * id ..0
    * system 1.. MS
    * system = #email (exactly)
    * value 1.. MS
    * use ..0
    * rank ..0
    * period ..0
  * resource ..0
  * part ..0
* parameter[chargeItem]
  * id ..0
  * name = "chargeItem" (exactly)
  * name MS
  * value[x] ..0
  * resource 1.. MS
  * resource only $KK_ELB_ChargeItem
  * part ..0