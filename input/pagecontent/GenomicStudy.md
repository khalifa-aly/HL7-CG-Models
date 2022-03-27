# Genomic Study
## Content
It aims at delineating relevant information of a genomic study of specific reasons or use cases. Where one study could comprise one or more analyses that in turn could include one or more assays. Analyses may vary in method (e.g., karyotyping, CNV, or SNV detection), performer, used devices. While, assays may vary in region studied, specimen, or even subject.
## Scope and Usage
Genomic study describes relevant information including, reasons, purpose, and performers. It also provides technical endpoints to access these data. It could be a logical aggregator for complex genomic analyses, where each analysis may carry out various genomic assays of diverse methods.

It could be based on one or more care plans or service requests. The reasons of performing this genomic study could be [Conditions]( https://www.hl7.org/fhir/condition.html), [Observations]( https://www.hl7.org/fhir/observation.html), or as [Codeable Concepts]( https://www.hl7.org/fhir/datatypes.html#CodeableConcept) that represent these reasons. 
Although the genomics study subject is the focus of the study, the assay-level subject could be used to list different subject, e.g., in trio testing, and de novo mutation detection.

The study interpreters use all the results of these various analyses to provide diagnostic and therapeutic insights. Where performers are listed according to their participation in each genomic analysis and included assays. Each analysis may base on a set of defined protocols that may differ from the performed protocols.

The result files could be listed either on the analysis-level or assay-level based on their nature.
## Boundaries and Relationships
Genomic study is used for genomic relevant information where result files are represented as [DocumentReference(s)]( https://www.hl7.org/fhir/documentreference.html) that include relevant metadata in addition the actual files as attachments.

This resource could be referenced by Genomic Diagnostic Report or genomic observations, e.g., [Variant]( https://hl7.org/fhir/uv/genomics-reporting/variant.html), or [Genotype]( https://hl7.org/fhir/uv/genomics-reporting/genotype.html).
## Implementation Notes
### Search Parameters
