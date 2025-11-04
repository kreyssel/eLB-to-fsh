Invariant: sig-1
Description: "Signature of KK_ELB_ResponseDocumentBundles in a KK_ELB_InvoiceContainerBundle must be present"
* severity = #error
* expression = "resource.signature.exists()"
* xpath = "exists(f:resource:signature)"