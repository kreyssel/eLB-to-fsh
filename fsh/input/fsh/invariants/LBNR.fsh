Invariant: LBNR
Description: "In performer:angestellteLeistungserbringerin ist keine LBNR angegeben, diese ist aber eine Pflichtangabe bei dem verwendeten SGS code."
* severity = #error
* expression = "performer.where(actor.type='Organization').function.coding.where(code='C' or code='R').exists() implies (performer.all(actor.where(type='Practitioner').exists().not()) or performer.actor.where(type='Practitioner').identifier.where(system='http://fhir.de/sid/bfarm/lbnr').exists())"