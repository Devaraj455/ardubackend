package com.example.ARDU.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.Instant;
import java.time.LocalDate;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String passwordHash;

    @Column(nullable = false)
    private String mobileNumber;

    private Boolean mobileVerified = false;
    private Boolean emailVerified = false;
    private String whatsappNumber;
    private Boolean whatsappVerified = false;

    private String dlNumber;
    private String fatherName;
    private LocalDate dateOfBirth;
    private String badgeNumber;
    private String address;
    private String bloodGroup;

    @Column(nullable = false)
    private String role; // USER, ADMIN

    @Column(nullable = false)
    private String approvalStatus; // PENDING, APPROVED, REJECTED

    // @Column(nullable = false)
    // private LocalDate dateOfJoiningOrRenewal;

    // @Column(nullable = false)
    // private LocalDate expiryDate;

    // private Boolean active = true;

    // @Column(nullable = false, updatable = false)
    // private Instant createdAt = Instant.now();

    //private Instant updatedAt = Instant.now();

    //
        @Column(nullable = true, updatable = false)
    private Instant createdAt;

    private Instant updatedAt;

    @Column(nullable = true)
    private LocalDate dateOfJoiningOrRenewal;

    @Column(nullable = true)
    private LocalDate expiryDate;

    private Boolean active = false; // start as not active until approved

        @Column(name = "image_url", length = 1000)
    private String imageUrl;

    @Column(name = "image_public_id", length = 500)
    private String imagePublicId;

    //
    private String otpCode;
private Instant otpExpiry;

// inside User.java
private String nomineeName;
private String nomineeRelationship;
private String nomineeContactNumber;





}
