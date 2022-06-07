SELECT berta_document_exercises.id, berta_documents.id, berta_document_exercises.type_id, berta_document_exercises.text, berta_document_exercises.alternatives, berta_documents.plain_text
FROM berta_document_exercises
LEFT JOIN berta_documents ON berta_documents.id = berta_document_exercises.document_id
WHERE (
	(berta_document_exercises.type_id = 1 AND berta_document_exercises.subtype_id IS NULL) 
	OR berta_document_exercises.type_id = 2
) AND berta_documents.status_id <> 4 ORDER BY berta_documents.id ASC
