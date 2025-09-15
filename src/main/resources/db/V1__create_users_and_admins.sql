-- create users table
CREATE TABLE IF NOT EXISTS users (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  email VARCHAR(180) NOT NULL,
  password_hash VARCHAR(200) NOT NULL,
  mobile_number VARCHAR(20) NOT NULL,
  mobile_verified BOOLEAN DEFAULT FALSE,
  email_verified BOOLEAN DEFAULT FALSE,
  whatsapp_number VARCHAR(20),
  whatsapp_verified BOOLEAN DEFAULT FALSE,
  dl_number VARCHAR(100),
  father_name VARCHAR(200),
  date_of_birth DATE,
  badge_number VARCHAR(100),
  address TEXT,
  blood_group VARCHAR(10),
  role VARCHAR(20) NOT NULL,
  approval_status VARCHAR(20) NOT NULL,
  date_of_joining_or_renewal DATE NOT NULL,
  expiry_date DATE NOT NULL,
  active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_users_email (email),
  UNIQUE KEY uq_users_mobile (mobile_number)
);

-- create admins table
CREATE TABLE IF NOT EXISTS admins (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  email VARCHAR(180) NOT NULL,
  password_hash VARCHAR(200) NOT NULL,
  mobile_number VARCHAR(20) NOT NULL,
  mobile_verified BOOLEAN DEFAULT FALSE,
  email_verified BOOLEAN DEFAULT FALSE,
  main_admin BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_admins_email (email),
  UNIQUE KEY uq_admins_mobile (mobile_number)
);
