DELIMITER $$

CREATE TRIGGER trg_admins_before_insert
BEFORE INSERT ON admins
FOR EACH ROW
BEGIN
  IF NEW.main_admin = TRUE THEN
    IF (SELECT COUNT(*) FROM admins WHERE main_admin = TRUE) > 0 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Only one main admin allowed';
    END IF;
  END IF;
END$$

CREATE TRIGGER trg_admins_before_update
BEFORE UPDATE ON admins
FOR EACH ROW
BEGIN
  IF NEW.main_admin = TRUE THEN
    IF (SELECT COUNT(*) FROM admins WHERE main_admin = TRUE AND id <> OLD.id) > 0 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Only one main admin allowed';
    END IF;
  END IF;
END$$

DELIMITER ;
