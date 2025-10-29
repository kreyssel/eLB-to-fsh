CodeSystem: KK_ELB_RequestType
Id: KK_ELB_RequestType
Description: "Requesttypes for eLB"
* ^url = "https://e-lb.de/fhir/CodeSystem/KK_ELB_RequestType"
* ^caseSensitive = true
* ^content = #complete
* #REQUEST_WITH_CALLBACK "Anfrage mit Verweis auf CallbackURL in source->endpoint"
* #REQUEST_WITH_POLLING "Anfrage mit Verweis auf Abruf mittels Polling-Schnittstelle"