Profile: KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest
Parent: ServiceRequest
Id: KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest"
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
* code 1.. MS
* code.coding 1..1 MS
* code.coding.system 1.. MS
* code.coding.system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_LER_Zusatzinfos" (exactly)
* code.coding.code 1.. MS
* orderDetail ..0
* quantity[x] ..0
* subject MS
* subject.reference ..0
* subject.type ..0
* subject.identifier 1.. MS
* subject.identifier only $identifier-kvid-10
* subject.identifier.id ..0
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system MS
* subject.identifier.value MS
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* encounter ..0
* occurrence[x] ..0
* asNeeded[x] ..0
* authoredOn ..0
* requester ..0
* performerType ..0
* performer ..0
* locationCode ..0
* locationReference ..0
* reasonCode ..0
* reasonReference ..0
* insurance ..0
* supportingInfo ..0
* specimen ..0
* bodySite ..0
* note ..0
* patientInstruction ..0
* relevantHistory ..0