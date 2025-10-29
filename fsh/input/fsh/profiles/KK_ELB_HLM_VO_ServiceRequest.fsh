Profile: KK_ELB_HLM_VO_ServiceRequest
Parent: ServiceRequest
Id: KK_ELB_HLM_VO_ServiceRequest
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_ServiceRequest"
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
* category 1..1 MS
  * coding 1..1 MS
    * system 1.. MS
    * system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_Section_Type" (exactly)
    * code 1.. MS
    * userSelected ..0
* priority ..0
* doNotPerform ..0
* code 1.. MS
  * coding 1..1 MS
    * system 1.. MS
    * system = "https://e-lb.de/fhir/sid/KK_ELB_HLM_Katalog" (exactly)
    * code 1.. MS
* orderDetail ..0
* quantity[x] 1.. MS
* quantity[x] only Quantity
  * ^short = "Behandlungseinheiten"
  * id ..0
  * value 1.. MS
  * comparator ..0
  * unit 1.. MS
  * unit = "{Count}" (exactly)
  * code = #1 (exactly)
  * code 1.. MS
  * system = "http://unitsofmeasure.org" (exactly)
  * system 1.. MS
* subject MS
  * reference ..0
  * identifier 1.. MS
  * identifier only $identifier-kvid-10
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