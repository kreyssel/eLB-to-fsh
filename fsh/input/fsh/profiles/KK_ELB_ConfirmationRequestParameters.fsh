Profile: KK_ELB_ConfirmationRequestParameters
Parent: Parameters
Id: KK_ELB_ConfirmationRequestParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ConfirmationRequestParameters"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* obeys Parameters-endpoint-request-with-callback
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    requestType 1..1 MS and
    callbackUrl 0..1 and
    softwareIdentifier 1..1 MS and
    emailContactPoint 1..1 MS and
    chargeItem 1..* MS
* parameter[requestType].id ..0
* parameter[requestType].name = "requestType" (exactly)
* parameter[requestType].name MS
* parameter[requestType].value[x] 1.. MS
* parameter[requestType].value[x] only Coding
* parameter[requestType].value[x].id ..0
* parameter[requestType].value[x].system 1.. MS
* parameter[requestType].value[x].system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_RequestType" (exactly)
* parameter[requestType].value[x].version ..0
* parameter[requestType].value[x].code 1.. MS
* parameter[requestType].value[x].display ..0
* parameter[requestType].value[x].userSelected ..0
* parameter[requestType].resource ..0
* parameter[requestType].part ..0
* parameter[callbackUrl].id ..0
* parameter[callbackUrl].name = "callbackUrl" (exactly)
* parameter[callbackUrl].name MS
* parameter[callbackUrl].value[x] 1.. MS
* parameter[callbackUrl].value[x] only url
* parameter[callbackUrl].resource ..0
* parameter[callbackUrl].part ..0
* parameter[softwareIdentifier] ^comment = "Freier Identifier für die einliefernde Software"
* parameter[softwareIdentifier].id ..0
* parameter[softwareIdentifier].name = "softwareIdentifier" (exactly)
* parameter[softwareIdentifier].name MS
* parameter[softwareIdentifier].value[x] 1.. MS
* parameter[softwareIdentifier].value[x] only string
* parameter[softwareIdentifier].value[x].id ..0
* parameter[softwareIdentifier].resource ..0
* parameter[softwareIdentifier].part ..0
* parameter[emailContactPoint].id ..0
* parameter[emailContactPoint].name = "emailContactPoint" (exactly)
* parameter[emailContactPoint].name MS
* parameter[emailContactPoint].value[x] 1.. MS
* parameter[emailContactPoint].value[x] only ContactPoint
* parameter[emailContactPoint].value[x].id ..0
* parameter[emailContactPoint].value[x].system 1.. MS
* parameter[emailContactPoint].value[x].system = #email (exactly)
* parameter[emailContactPoint].value[x].value 1.. MS
* parameter[emailContactPoint].value[x].use ..0
* parameter[emailContactPoint].value[x].rank ..0
* parameter[emailContactPoint].value[x].period ..0
* parameter[emailContactPoint].resource ..0
* parameter[emailContactPoint].part ..0
* parameter[chargeItem].id ..0
* parameter[chargeItem].name = "chargeItem" (exactly)
* parameter[chargeItem].name MS
* parameter[chargeItem].value[x] ..0
* parameter[chargeItem].resource 1.. MS
* parameter[chargeItem].resource only KK_ELB_ChargeItem
* parameter[chargeItem].part ..0