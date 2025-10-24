CodeSystem: KK_ELB_RequestType
Id: KK_ELB_RequestType
Description: "Requesttypes for eLB"
* ^url = "https://e-lb.de/fhir/CodeSystem/KK_ELB_RequestType"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* ^caseSensitive = true
* ^content = #complete
* #REQUEST_WITH_CALLBACK "Anfrage mit Verweis auf CallbackURL in source->endpoint"
* #REQUEST_WITH_POLLING "Anfrage mit Verweis auf Abruf mittels Polling-Schnittstelle"