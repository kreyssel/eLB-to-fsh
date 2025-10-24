Invariant: DiffTherapieart
Description: "Jede Therarpieart darf nur einmal innerhalb des Containers vorkommen"
* severity = #error
* expression = "entry.where(resource is ServiceRequest).select(resource.code.coding.where(system='https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_LER_Zusatzinfos').code).isDistinct()"