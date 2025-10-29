Profile: KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest
Parent: ServiceRequest
Id: KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest"
* ^version = "1.0.0"
* ^status = #draft
* meta 1.. MS
  * profile 1..1 MS
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
  * coding 1..1 MS
    * system 1.. MS
    * system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_LER_Zusatzinfos" (exactly)
    * code 1.. MS
* orderDetail ..0
* quantity[x] ..0
* subject MS
  * reference ..0
  * type ..0
  * identifier 1.. MS
  * identifier only $identifier-kvid-10
    * id ..0
    * use ..0
    * type ..0
    * system MS
    * value MS
    * period ..0
    * assigner ..0
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