## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching through 500-page legal contracts because keyword search only finds exact word matches and does not understand the meaning of the text. Legal documents often use complex language, and the same concept can be written in different ways. For example, a “termination clause” might be written as “contract cancellation terms” in another document. A keyword-based search may miss such information if the exact words are not used.

A vector database solves this problem by using embeddings, which capture the semantic meaning of text instead of just matching keywords. The legal documents would be converted into vector embeddings and stored in a vector database. When a lawyer asks a question in plain English, the query is also converted into an embedding and compared with stored embeddings using similarity search. This helps in finding relevant sections even when the wording is different.

Therefore, a vector database plays an important role in semantic search, document retrieval, and question-answering systems. It improves search accuracy and helps lawyers quickly find relevant information from very large legal documents.
