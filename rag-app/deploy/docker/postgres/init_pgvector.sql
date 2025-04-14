/* Create the vector extension */
-- The vector dimension is set to 384 because this matches the output of the embedding model used by default (MiniLM: all-MiniLM-L6-v2).
-- If you change the embedding model, this value MUST match the output size of that model.
-- Examples:
-- - OpenAI `text-embedding-ada-002`: use vector(1536)
-- - BERT-base: use vector(768)
-- - MiniLM-L12-v2: use vector(768)
-- You cannot store a vector with mismatched size — it will raise an error.
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE papers (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    summary TEXT NOT NULL,
    chunk TEXT NOT NULL,
    embedding vector(384)
);