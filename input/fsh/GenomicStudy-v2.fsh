Logical: GenomicStudyV2
Id: genomic-study-v2
Title: "Genomic Study V2"
Description: "A Genomic Study is a set of files and procedures that are performed to generate and analyze genomic data."
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^status = #draft
* identifier 0..* Identifier 
  "An identifier for this genomic study" "An identifier for this genomic study"
* status 1..1 CodeableConcept
  "The status of the genomic study"
* type 0..1 CodeableConcept
  "The type of the study"
* subject 1..1 Reference(Patient)
  "The subject of the genomic study" "The subject of the genomic study"
* encounter 0..1 Reference(Encounter)
  "The healthcare encounter with which this genomics study is associated"
* startDate 0..1 dateTime
  "When the genomic study was started"
* basedOn 0..* Reference(ServiceRequest or Task)
  "Event resources that the genomic study is based on"
* referrer 0..1 Reference(Practitioner or PractitionerRole)
  "Healthcare professional(s) who requested or referred the genomic study"
* interpreter 0..* Reference(Practitioner or PractitionerRole)
  "Healthcare professional(s) who interpreted the genomic study"
//* endpoint 0..* Endpoint
//  "The endpoint for the genomic study"
//* reason 0..* CodeableReference  -- note, not part of R4
* reason 0..* CodeableConcept // or Reference(Condition or Observation)
  "Why the genomic study was performed"
//* reasonCode 0..* CodeableConcept
//  "Here is a reason code"
// we may add more later
//* reasonReference 0..* Reference(Condition or Observation)
//  "Here is a reason reference"
* note 0..* Annotation
  "User-defined notes related to the genomic study"
* description 0..1 string
  "A description of the genomic study"
* analysis 0..* BackboneElement
  "Genomic Analysis Event"
  * identifier 0..* Identifier "Identifier(s) for the analysis"
  * instantiatesCanonical 0..1 Reference(PlanDefinition) "The defined protocol that describes the analysis"
  * genomeBuild 0..1 CodeableConcept "Genome build that is used in this analysis"
  * methodType 0..* CodeableConcept   "Type of the methods used in the analysis"
  * instantiatesUri 0..1 uri "The URL pointing to an externally maintained protocol that describes the analysis"
  * title 0..1 string "Name of the analysis event (human friendly)"
  * subject 0..1 Reference(Patient) "The subject of the analysis event"
  * specimen 0..1 Reference(Specimen) "The specimen used in the analysis event"
  * date 0..1 dateTime "The date of the analysis event"
  * note 0..* Annotation "Any notes capture with the analysis event"
  * protocolPerformed 0..1 Reference(Procedure or Task) "The protocol that was performed for the analysis event"
  * regionStudied 0..* Reference(DocumentReference) "The genomic regions to be studied in the analysis (BED file)"
  * regionsCalled 0..1 Reference(DocumentReference) "Genomic regions actually called in the analysis event (BED file)"
  * input 0..* BackboneElement "Inputs for the analysis event"
    * file 0..1 Reference(DocumentReference) "File containing input data"
    * type 0..1 CodeableConcept "Type of input data"
    * generatedBy[x] 0..1 Identifier or Reference(GenomicStudy)
      "The analysis event or other GenomicStudy that generated this input file"
    * subject 0..1 Reference(Patient) "The subject of the input data"
    * role 0..1 CodeableConcept "Role of the subject for this input"
  * output 0..* BackboneElement "Outputs for the analysis event"
    * file 0..1 Reference(DocumentReference) "File containing output data"
    * type 0..1 CodeableConcept "Type of output data"
  * performer 0..1 BackboneElement "Performer for the analysis event"
    * actor 0..1 Reference(Practitioner or PractitionerRole or Organization or Device)
        "The organization, healthcare professional, or others who participated in performing this analysis"
    * role 0..1 CodeableConcept "Role of the actor for this analysis"
  * device 0..* BackboneElement "Devices used for the analysis (e.g., instruments, software), with settings and parameters"
    * device 0..1 Reference(Device) "Device used for the analysis"
    * function 0..1 CodeableConcept "Specific function for the device used for the analysis"