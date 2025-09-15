-- add image fields to users
ALTER TABLE users
  ADD COLUMN image_url VARCHAR(1000) NULL,
  ADD COLUMN image_public_id VARCHAR(500) NULL;

-- add image fields to admins
ALTER TABLE admins
  ADD COLUMN image_url VARCHAR(1000) NULL,
  ADD COLUMN image_public_id VARCHAR(500) NULL;
