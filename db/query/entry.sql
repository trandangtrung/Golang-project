-- name: CreateEntry :one
INSERT INTO entries (
  amount
) VALUES (
  $1
)
RETURNING *;

-- name: GetEntry :one
SELECT * FROM entries
WHERE id = $1 LIMIT 1;

-- name: ListEntries :many
SELECT * FROM entries
LIMIT $1
OFFSET $2;


-- name: UpdateEntry :one
UPDATE entries
SET amount = $1
WHERE id = $2
RETURNING *;

-- name: DeleteEntry :exec
DELETE FROM entries
WHERE id = $1;


