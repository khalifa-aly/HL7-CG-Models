Logical: MolecularVariant
Title: "Molecular Variant"
Description: "MolecularVariant resource"
* molecularType 0..1 CodeableConcept
  "The type of molecule"
  "The type of molecule"
* primaryRepresentation 1..1 BackboneElement
  "Primary Representation"
  * identifier 0..1 CodeableConcept
    "Identifer"
    "Identifer based representation of a variant"
  * text 0..1 BackboneElement
    "Text"
    "Text based representations"
    * value 1..1 string
    "Value"
    "Value for the textual representation"
    * system 1..1 CodeableConcept
    "System"
    "System where the value was drawn from"
  * sequence 0..1 BackboneElement
    "Sequence"
    "Sequence based representation of a variant"
    * interval 1..1 MolecularPreciseInterval
      "Interval"
      "Coordinates of the variant"
    * referenceSequence[x] 1..1 GenomeSequenceDesignation or IdentifierSequenceDesignation
      "Reference Sequence"
      "Reference Sequence"
    * referenceAllele 0..1 Reference(MolecularSequence)
      "Reference Allele"
      "Reference Allele"
    * alernateAllele 1..1 Reference(MolecularSequence)
      "Alternat Allele"
      "Alternate Allele"
    * system 1..1 CodeableConcept
      "System"
      "Specifying the format that defines the meaning of this sequence which may include business rules governing their interpretation (e.g. left versus right shifting)"
* secondaryRepresentation 0..* BackboneElement
  "Secondary Representation"
  "Include any number of alternative representations for the variant"
  * identifier 0..1 CodeableConcept
    "Identifer"
    "Identifer based representation of a variant"
  * text 0..1 BackboneElement
    "Text"
    "Text based representations"
    * value 1..1 string
    "Value"
    "Value for the textual representation"
    * system 1..1 CodeableConcept
    "System"
    "System where the value was drawn from"
  * sequence 0..1 BackboneElement
    "Sequence"
    "Sequence based representation of a variant"
    * interval 1..1 MolecularPreciseInterval
      "Interval"
      "Coordinates of the variant"
    * referenceSequence[x] 1..1 GenomeSequenceDesignation or IdentifierSequenceDesignation
      "Reference Sequence"
      "Reference Sequence"
    * referenceAllele 0..1 Reference(MolecularSequence)
      "Reference Allele"
      "Reference Allele"
    * alernateAllele 1..1 Reference(MolecularSequence)
      "Alternat Allele"
      "Alternate Allele"
    * system 1..1 CodeableConcept
      "System"
      "Specifying the format that defines the meaning of this sequence which may include business rules governing their interpretation (e.g. left versus right shifting)"
* relationships 0..* BackboneElement
  "Relationships"
  "Other variants related to this variant"
  * type 1..1 CodeableConcept
    "Type"
    "Type of relationship"
  * description 0..1 string
    "Description"
    "Further description of the relationship"
  * relatedVariant 1..1 Reference(MolecularVariant)
    "Related Variant"
    "Target variant in the relationship"
    