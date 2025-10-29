Profile: KK_ELB_BillingContainerParameters
Parent: Parameters
Id: KK_ELB_BillingContainerParameters
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_BillingContainerParameters"
* obeys Bundle-complete
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
    emailContactPoint 1..1 MS and
    esolFile 1..1 MS and
    invoice 1..* MS
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
* parameter[esolFile]
  * id ..0
  * name = "esolFile" (exactly)
  * name MS
  * value[x] 1.. MS
  * value[x] only base64Binary
  * resource ..0
  * part ..0
* parameter[invoice]
  * id ..0
  * name = "invoice" (exactly)
  * name MS
  * value[x] ..0
  * resource ..0
  * part MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #closed
    * ^definition = "Ein container pro Abrechnungsfall\r\n- Verordnung bei Heilmittel\r\n- Abrechnungsfall = Rechnung bei Hebammen, daher nur 1 Container"
  * part contains 
      invoiceReference 1..1 MS and
      container 1..1 MS
  * part[invoiceReference] 
    * ^short = "Parameter Rechnungsnummer"
    * ^definition = "Parameter Rechnungsnummer, übereinstimmend mit der in der DTA Datei angegebenen Rechnungsnummer"
    * id ..0
    * name = "invoiceReference" (exactly)
    * name MS
    * value[x] 1.. MS
    * value[x] only string
      * ^short = "Rechnungsnummer"
      * ^definition = "Rechnungsnummer, übereinstimmend mit der in der DTA Datei angegebenen Rechnungsnummer"
    * resource ..0
    * part ..0
  * part[container] 
    * ^definition = "Alle Belege für eine Rechnung"
    * id ..0
    * name = "container" (exactly)
    * name MS
    * value[x] ..0
    * resource 1.. MS
    * resource only $KK_ELB_InvoiceContainerBundle
    * part ..0