Profile: KK_ELB_BillingcontainerParameters
Parent: Parameters
* obeys Bundle-complete
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    emailContactPoint 1..1 MS and
    esolFile 1..1 MS and
    invoice 1..* MS
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
* parameter[esolFile].id ..0
* parameter[esolFile].name = "esolFile" (exactly)
* parameter[esolFile].name MS
* parameter[esolFile].value[x] 1.. MS
* parameter[esolFile].value[x] only base64Binary
* parameter[esolFile].resource ..0
* parameter[esolFile].part ..0
* parameter[invoice].id ..0
* parameter[invoice].name = "invoice" (exactly)
* parameter[invoice].name MS
* parameter[invoice].value[x] ..0
* parameter[invoice].resource ..0
* parameter[invoice].part MS
* parameter[invoice].part ^slicing.discriminator.type = #value
* parameter[invoice].part ^slicing.discriminator.path = "name"
* parameter[invoice].part ^slicing.rules = #closed
* parameter[invoice].part ^definition = "Ein container pro Abrechnungsfall\r\n- Verordnung bei Heilmittel\r\n- Abrechnungsfall = Rechnung bei Hebammen, daher nur 1 container"
* parameter[invoice].part contains invoiceReference 1..1 MS
* parameter[invoice].part[invoiceReference] ^definition = "Belegnummer, übereinstimmend mit der in der DTA Datei angegebenen Belegnummer"
* parameter[invoice].part[invoiceReference].id ..0
* parameter[invoice].part[invoiceReference].name = "invoiceReference" (exactly)
* parameter[invoice].part[invoiceReference].name MS
* parameter[invoice].part[invoiceReference].value[x] 1.. MS
* parameter[invoice].part[invoiceReference].value[x] only string
* parameter[invoice].part[invoiceReference].value[x] ^short = "Belegnummer"
* parameter[invoice].part[invoiceReference].value[x] ^definition = "Belegnummer, übereinstimmend mit der in der DTA Datei angegebenen Belegnummer"
* parameter[invoice].part[invoiceReference].resource ..0
* parameter[invoice].part[invoiceReference].part ..0
* parameter[invoice].part contains container 1..1 MS
* parameter[invoice].part[container].id ..0
* parameter[invoice].part[container].name = "container" (exactly)
* parameter[invoice].part[container].name MS
* parameter[invoice].part[container].value[x] ..0
* parameter[invoice].part[container].resource 1.. MS
* parameter[invoice].part[container].resource only $invoice-container-bundle
* parameter[invoice].part[container].part ..0