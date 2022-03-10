Logical: IdentifierSequenceDesignation
Title: "Identifier Sequence Designation"
Description: "Datatype to support FHIR Genomics.  This datatype supports identifier/accession-style representations like GCA_000001405.28"
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* identifier 1..1 CodeableConcept
  "Sequence identifier or accession number"
  "The identifier or accession number of the sequence"
* organism 0..1 CodeableConcept
  "Organism"
  "The organism corresponding to the genome sequence, preferably expressed using an NCBI taxonomy code."
* description 0..1 string
  "Description of the genome sequence"
  "A description of the genome sequence."
