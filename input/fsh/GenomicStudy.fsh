Logical: GenomicStudy
Title: "Genomic Study"
Description: "Including related information to a genomic study, such as procedures, stakeholders, and others"
* identifier[x] 0..* identifier 
  "One or more identifier for this genomic study" "One or more identifier for this genomic study"
* type 0..1 CodeableConcept
  "Here is the type"
* subject 0..* Reference(Patient)
  "Subject(s) of this genomic study" "Subject(s) of this genomic study"
* startDate 0..1 dateTime
  "Here is the start date"
// we may add more later
* basedOn 0..* Reference(ServiceRequest or Task)
  "Here is based on"
* endpoint 0..* Endpoint
  "Here is the end point"
* note 0..* Annotation
  "Here is a note"
* description 0..* string
  "Here is a description"
* reasonCode 0..* CodeableConcept
  "Here is a reason code"
// we may add more later
* reasonReference 0..* Reference(Condition or Observation)
  "Here is a reason reference"