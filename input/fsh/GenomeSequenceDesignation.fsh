Logical: GenomeSequenceDesignation
Title: "Genome Sequence Designation"
Description: "Datatype to support FHIR Genomics.  This datatype supports representations like GRCH38.p13 Chromosome 1"
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* build 1..1 Identifier
  "Genome build id"
  "The identifier of a genome build, which contains a sequence of interest."
* organism 0..1 CodeableConcept
  "Organism"
  "The organism corresponding to the genome sequence, preferably expressed using an NCBI taxonomy code."
* description 0..1 string
  "Description of the genome sequence"
  "A description of the genome sequence."
* accession 0..1 CodeableConcept
  "Genome build accession number"
  "The accession number of the Genome Build"
* chromosome 1..1 CodeableConcept
  "Chromosome represented by the genome sequence"
  "The name or number (preferably coded) of the chromosome represented by the genome sequence."
