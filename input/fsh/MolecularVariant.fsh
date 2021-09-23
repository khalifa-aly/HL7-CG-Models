Logical: MolecularVariant
Title: "Molecular Variant"
Description: "MolecularVariant resource"
* molecularType 0..1 CodeableConcept
  "Molecule type"
  "The type of molecule (e.g., DNA, RNA, protein)"
* primaryRepresentation 1..1 BackboneElement
  "Primary Representation"
  "A representation for the Variant that is used as its primary definition."
  * identifier 0..1 CodeableConcept
    "Identifer"
    "Identifer based representation of a variant. The source of the identifier is specified using the URI recorded in the system attribute."
  * text 0..1 BackboneElement
    "Text"
    "Text based representation of a variant, including nomenclatures such as HGVS, ISCN, HLA, and pharmacogenetic star alleles."
    * value 1..1 string
    "Value"
    "Value for the textual representation"
    * system 1..1 CodeableConcept
    "System"
    "System that defines the nomenclature (including version, if applicable)"
  * sequence 0..1 BackboneElement
    "Sequence"
    "Sequence based representation of a variant"
    * system 1..1 CodeableConcept
      "System"
      "The system that specifies how this information should be interpreted, since systems may include different business rules governing interpretation (e.g. VCF left shifts while HGVS right shifts)"
    * referenceSequence[x] 1..1 GenomeSequenceDesignation or IdentifierSequenceDesignation
      "Reference Sequence"
      "Sequence used as a reference for defining the state expressed by the Variant"
    * interval 1..1 MolecularPreciseInterval
      "Interval"
      "Coordinates of the variant. Note the interpretation of these coordinates may be subject to system-specific business rules or conventions (e.g., 0-based or 1-based)."
    * referenceAllele 0..1 Reference(MolecularSequence)
      "Reference Allele"
      "The allele found in the Reference Sequence at the location specified by Interval."
    * alternateAllele 1..1 Reference(MolecularSequence)
      "Alternate Allele"
      "The state of the sequence at the location specified by Interval, which defines this Variant."
* secondaryRepresentation 0..* BackboneElement
  "Secondary Representation(s)"
  "Alternative representations of the variant that might be considered to be equivalent but which might contain ambiguity or imprecision. Lossless transformations between the Primary and Secondary Representation(s) are not guaranteed."
  * identifier 0..1 CodeableConcept
    "Identifer"
    "Identifer based representation of a variant. The source of the identifier is specified using the URI recorded in the system attribute."
  * text 0..1 BackboneElement
    "Text"
    "Text based representation of a variant, including nomenclatures such as HGVS, ISCN, HLA, and pharmacogenetic star alleles."
    * value 1..1 string
    "Value"
    "Value for the textual representation"
    * system 1..1 CodeableConcept
    "System"
    "System that defines the nomenclature (including version, if applicable)"
  * sequence 0..1 BackboneElement
    "Sequence"
    "Sequence based representation of a variant"
    * system 1..1 CodeableConcept
      "System"
      "The system that specifies how this information should be interpreted, since systems may include different business rules governing interpretation (e.g. VCF left shifts while HGVS right shifts)"
    * referenceSequence[x] 1..1 GenomeSequenceDesignation or IdentifierSequenceDesignation
      "Reference Sequence"
      "Sequence used as a reference for defining the state expressed by the Variant"
    * interval 1..1 MolecularPreciseInterval
      "Interval"
      "Coordinates of the variant. Note the interpretation of these coordinates may be subject to system-specific business rules or conventions (e.g., 0-based or 1-based)."
    * referenceAllele 0..1 Reference(MolecularSequence)
      "Reference Allele"
      "The allele found in the Reference Sequence at the location specified by Interval."
    * alternateAllele 1..1 Reference(MolecularSequence)
      "Alternate Allele"
      "The state of the sequence at the location specified by Interval, which defines this Variant."
* relationships 0..* BackboneElement
  "Relationship to another Variant"
  "Defines a relationship between the source Variant and a target Variant."
  * type 1..1 CodeableConcept
    "Type"
    "Type of relationship (e.g., a genomic variant might have a relationship of 'predicted translation to' a variant expressed at the protein level)"
  * description 0..1 string
    "Description"
    "Text description of the relationship"
  * relatedVariant 1..1 Reference(MolecularVariant)
    "Related Variant"
    "Target variant of the relationship"
