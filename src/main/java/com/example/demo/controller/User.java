package com.example.demo.controller;

import java.util.Date;

public class User {
    private String firstName;
    private String lastName;
    private String userName;
    private int zipCode;
    private String location;
    private String street;
    private int streetNumber;
    private String email;
    private boolean isAdmin;
    private String password;
    private boolean isStreetPublic;
    private boolean isStreetNumberPublic;
    private Date dateOfBirth;

    public User(String firstName, String lastName, String userName, int zipCode, String location, String street, int streetNumber, String email, boolean isAdmin, String password, boolean isStreetPublic, boolean isStreetNumberPublic, Date dateOfBirth) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.zipCode = zipCode;
        this.location = location;
        this.street = street;
        this.streetNumber = streetNumber;
        this.email = email;
        this.isAdmin = isAdmin;
        this.password = password;
        this.isStreetPublic = isStreetPublic;
        this.isStreetNumberPublic = isStreetNumberPublic;
        this.dateOfBirth = dateOfBirth;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getStreetNumber() {
        return streetNumber;
    }

    public void setStreetNumber(int streetNumber) {
        this.streetNumber = streetNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isStreetPublic() {
        return isStreetPublic;
    }

    public void setStreetPublic(boolean streetPublic) {
        isStreetPublic = streetPublic;
    }

    public boolean isStreetNumberPublic() {
        return isStreetNumberPublic;
    }

    public void setStreetNumberPublic(boolean streetNumberPublic) {
        isStreetNumberPublic = streetNumberPublic;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
