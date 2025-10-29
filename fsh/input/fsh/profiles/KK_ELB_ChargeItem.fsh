Profile: KK_ELB_ChargeItem
Parent: ChargeItem
Id: KK_ELB_ChargeItem
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ChargeItem"
* obeys LBNR
* id ^mustSupport = false
* meta 1.. MS
  * security 1..1 MS
    * system 1.. MS
    * system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_Nutzungsbedingung_Version" (exactly)
    * code 1.. MS
    * code from $KK_ELB_VS_Nutzungsbedingung_Version (required)
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension 1..
* extension contains $KK_ELB_Payor named Payor 1..1 MS
* extension[Payor] ^short = "Kostenträger"
  * ^definition = "Identifier des Kostenträgers des Versicherten (subject)"
  * ^isModifier = false
* identifier 1..1 MS
  * system 1.. MS
  * system = "urn:ietf:rfc:3986" (exactly)
  * value 1.. MS
* definitionUri ..0
* definitionCanonical ..0
* status MS
* partOf ..0
* code MS
  * coding 1..1 MS
    * system 1.. MS
    * system = "https://e-lb.de/fhir/sid/KK_ELB_ChargeItemCode" (exactly)
    * code 1.. MS
* subject MS
  * identifier 1.. MS
  * identifier only $identifier-kvid-10
    * system MS
    * value MS
* context ..0
* occurrence[x] 1.. MS
* occurrence[x] only dateTime or Period
* performer ..2 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "actor.type"
  * ^slicing.rules = #closed
* performer contains
    leistungserbringerOrganisation 1..1 MS and
    angestellteLeistungserbringerin 0..1
* performer[leistungserbringerOrganisation] 
  * ^comment = "In diesem Slice wird die Leistungserbringer-Organisation bzw. der Leistungserbringer anhand des IKs identifiziert. Die Funktion des Leistungserbringer wird anhand des Sammelgruppenschlüssels in der function angegeben."
  * function 1.. MS
    * coding 1..1 MS
      * system 1.. MS
      * system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_SGS" (exactly)
      * code 1.. MS
  * actor MS
    * type 1.. MS
    * type = "Organization" (exactly)
    * identifier 1.. MS
    * identifier only $identifier-iknr
      * system MS
      * value MS
* performer[angestellteLeistungserbringerin] 
  * ^comment = "In diesem Slice muss bei einem angestelltenverhältnisses des Leistungserbringers zusätzlich zur IK der Leistungserbringer-Organisation der Name des Leistungserbringers angegeben werden."
  * actor only Reference(Practitioner)
  * actor MS
    * type 1.. MS
    * type = "Practitioner" (exactly)
    * identifier only $KK_ELB_Identifier_LBNR
    * display 1.. MS
* performingOrganization ..0
* requestingOrganization ..0
* costCenter ..0
* quantity ..0
* bodysite ..0
* factorOverride ..0
* priceOverride ..0
* overrideReason ..0
* enterer ..0
* enteredDate ..0
* service ..0
* product[x] ..0
* account ..0
* note ..0
* supportingInformation ..0