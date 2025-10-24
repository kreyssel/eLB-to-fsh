Profile: KK_ELB_InvoiceContainerBundle
Parent: Bundle
Id: KK_ELB_InvoiceContainerBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_InvoiceContainerBundle"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* obeys Therapieart and DiffTherapieart
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system = "https://e-lb.de/fhir/sid/KK_ELB_Belegnummer" (exactly)
* identifier.value 1.. MS
* identifier.value ^maxLength = 10
* type = #collection (exactly)
* type MS
* total ..0
* link ..0
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    SignedChargeItem 1..* MS and
    BinaryFile 0..* and
    HebammeAttestServiceRequest 0..* and
    Condition 0..* and
    HeilmittelBundle 0..* and
    LERZusatzinfoServiceRequest 0..2
* entry[SignedChargeItem] obeys sig-1
* entry[SignedChargeItem].fullUrl 1.. MS
* entry[SignedChargeItem].resource 1.. MS
* entry[SignedChargeItem].resource only KK_ELB_ResponseDocumentBundle
* entry[BinaryFile].fullUrl 1.. MS
* entry[BinaryFile].resource 1.. MS
* entry[BinaryFile].resource only Binary
* entry[BinaryFile].resource.contentType MS
* entry[BinaryFile].resource.data 1.. MS
* entry[HebammeAttestServiceRequest].fullUrl 1.. MS
* entry[HebammeAttestServiceRequest].resource 1.. MS
* entry[HebammeAttestServiceRequest].resource only KK_ELB_ServiceRequest
* entry[Condition].fullUrl 1.. MS
* entry[Condition].resource 1.. MS
* entry[Condition].resource only KK_ELB_Condition
* entry[HeilmittelBundle].fullUrl 1.. MS
* entry[HeilmittelBundle].resource 1.. MS
* entry[HeilmittelBundle].resource only KK_ELB_HLM_VO_DocumentBundle
* entry[LERZusatzinfoServiceRequest].fullUrl 1.. MS
* entry[LERZusatzinfoServiceRequest].resource 1.. MS
* entry[LERZusatzinfoServiceRequest].resource only KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest