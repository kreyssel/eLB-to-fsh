Profile: KK_ELB_ResponseComposition
Parent: Composition
Id: KK_ELB_ResponseComposition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* identifier ..0
* status = #final (exactly)
* status MS
* type MS
  * coding 1..1 MS
    * system 1.. MS
    * system = "http://dvmd.de/fhir/CodeSystem/kdl" (exactly)
    * code 1.. MS
    * code = #AM190107 (exactly)
* category ..0
* subject ..0
* encounter ..0
* date MS
* author ..1 MS
  * id ..0
  * reference ..0
  * type ..0
  * identifier 1.. MS
  * identifier only $identifier-iknr
  * display ..0
* title = "Elektronische Leistungsbestätigung" (exactly)
* title MS
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event ..0
* section 1..1 MS
  * id ..0
  * title ..0
    * ^mustSupport = false
  * code ..0
  * author ..0
  * focus ..0
  * text ..0
  * mode ..0
  * orderedBy ..0
  * entry 1..1 MS
  * entry only Reference($KK_ELB_ChargeItem)
    * ^type.aggregation = #bundled
    * reference 1.. MS
  * emptyReason ..0
  * section ..0