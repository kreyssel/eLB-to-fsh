Invariant: Therapieart
Description: "Es darf nicht sowohl ein ServiceRequest mit GT als auch mit ET geben"
* severity = #error
* expression = "entry.where(resource is ServiceRequest).select(resource.code.coding.where(system='https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_LER_Zusatzinfos').where(code='GT')).exists() implies entry.where(resource is ServiceRequest).select(resource.code.coding.where(system='https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_HLM_LER_Zusatzinfos').where(code='ET')).exists().not()"