Profile: KK_ELB_ServiceRequest
Parent: ServiceRequest
Id: KK_ELB_ServiceRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ServiceRequest"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* replaces ..0
* requisition ..0
* status = #unknown (exactly)
* status MS
* intent = #order (exactly)
* intent MS
* category ..0
* priority ..0
* doNotPerform ..0
* code ..0
* orderDetail ..0
* quantity[x] only Quantity
* quantity[x].value 1.. MS
* quantity[x].unit 1.. MS
* quantity[x].system 1.. MS
* quantity[x].system = "http://unitsofmeasure.org" (exactly)
* quantity[x].code 1.. MS
* quantity[x].code = #1 (exactly)
* subject MS
* subject.identifier 1.. MS
* subject.identifier only $identifier-kvid-10
* subject.identifier.system MS
* subject.identifier.value MS
* encounter ..0
* asNeeded[x] ..0
* authoredOn 1.. MS
* requester 1.. MS
* requester.identifier 1.. MS
* requester.identifier.system 1.. MS
* requester.identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR" (exactly)
* requester.identifier.value 1.. MS
* performerType ..0
* performer ..0
* locationCode ..0
* locationReference ..0
* reasonCode ..0
* reasonReference 1..1 MS
* reasonReference only Reference(KK_ELB_Condition)
* reasonReference.id ..0
* reasonReference.reference 1.. MS
* reasonReference.identifier ..0
* reasonReference.display ..0
* insurance ..0
* supportingInfo ..0
* specimen ..0
* bodySite ..0
* note ..0
* patientInstruction ..0
* relevantHistory ..0