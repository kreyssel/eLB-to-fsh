Invariant: HLMKatalog
Description: "Es muss mindestens ein Heilmittel nach Maßgabe des Kataloges vorhanden sein"
* severity = #error
* expression = "entry.where(resource is ServiceRequest).select(resource.category.coding.where(system='https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_Section_Type' and code='HLM')).exists()"