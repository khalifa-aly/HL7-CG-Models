Logical: GenomicStudy
Title: "Genomic Study"
Description: "Including related information to a genomic study, such as procedures, stakeholders, and others"
* identifier 0..1 Identifier 
  "One or more identifier for this genomic study" "One or more identifier for this genomic study"
* status 1..1 CodeableConcept
  "The status of the genomic study resource"
* device 0..* Device
  "The involved devices in this study, e.g., sequencers"
* type 0..1 CodeableConcept
  "The type of this study"
* subject 0..* Reference(Patient)
  "Subject(s) of this genomic study" "Subject(s) of this genomic study"
* encounter 0..1 Reference(Encounter)
  "The healthcare encounter that involved this genomics study"
* startDate 0..1 dateTime
  "The start date of this genomic study"
* basedOn 0..* Reference(ServiceRequest or Task)
  "Event resources that this genomic study is based on"
* referrer 0..1 Reference(Practitioner or PractitionerRole)
  "Healthcare professional(s) who requested or referred this genomic study"
* interpreter 0..* Reference(Practitioner or PractitionerRole)
  "Healthcare professional(s) who reviewed the raw data and provided the related interpretation"
//* procedure 0..* CodeableReference -- note, not part of R4
* procedure[x] 0..* CodeableConcept or Reference(Procedure)
  "The performed procedure(s) or its(their) code(s)"
* endpoint 0..* Endpoint
  "The endpoint of this genomic study"
//* reason 0..* CodeableReference  -- note, not part of R4
* reason[x] 0..* CodeableConcept or Reference(Condition or Observation)
  "reason code(s) or relevant condition(s) or observation(s) references"
//* reasonCode 0..* CodeableConcept
//  "Here is a reason code"
// we may add more later
//* reasonReference 0..* Reference(Condition or Observation)
//  "Here is a reason reference"
* note 0..* Annotation
  "Here is a note"
* description 0..* string
  "Here is a description"
* genomicAnalysis 0..* BackboneElement
  "Genomic Analysis"
  * identifier 0..* Identifier "Identifier"
  * methodType 0..1 CodeableConcept "Type of the used method"
  * protocolDefinition 0..* Reference(ActivityDefinition) "Protocol Definition"
  * protocolPerformed 0..* Reference(Procedure) "Protocol Performed"
  * genomicAssay 0..* BackboneElement "Genomic Assay"
    * identifier 0..1 Identifier "Identifier"
    * specimen 0..* Reference(Specimen) "Specimen"
    * subject 0..* Reference(Patient) "Subject(s) of this genomic assay"
    * date 0..1 dateTime "Date of this genomic assay"
    * regionStudied 0..1 Reference(Observation) "Region Studied"
    * genomicFile 0..* Reference(DocumentReference) "Relevant genomic files"
