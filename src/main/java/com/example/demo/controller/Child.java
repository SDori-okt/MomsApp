package com.example.demo.controller;

import net.bytebuddy.asm.Advice;

public class Child {
    private int childID;
    private String childName;
    private int childAge;
    private String childSex;
    private String typeOfHappening;
    private String timeOfHappening;
    private String placeOfHappening;
    private int momID;

    public Child(int childID, String childName, int childAge, String childSex, String typeOfHappening, String timeOfHappening, String placeOfHappening, int momID) {
        this.childID = childID;
        this.childName = childName;
        this.childAge = childAge;
        this.childSex = childSex;
        this.typeOfHappening = typeOfHappening;
        this.timeOfHappening = timeOfHappening;
        this.placeOfHappening = placeOfHappening;
        this.momID = momID;
    }

    public int getChildID() {
        return childID;
    }

    public void setChildID(int childID) {
        this.childID = childID;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public int getChildAge() {
        return childAge;
    }

    public void setChildAge(int childAge) {
        this.childAge = childAge;
    }

    public String getChildSex() {
        return childSex;
    }

    public void setChildSex(String childSex) {
        this.childSex = childSex;
    }

    public String getTypeOfHappening() {
        return typeOfHappening;
    }

    public void setTypeOfHappening(String typeOfHappening) {
        this.typeOfHappening = typeOfHappening;
    }

    public String getTimeOfHappening() {
        return timeOfHappening;
    }

    public void setTimeOfHappening(String timeOfHappening) {
        this.timeOfHappening = timeOfHappening;
    }

    public String getPlaceOfHappening() {
        return placeOfHappening;
    }

    public void setPlaceOfHappening(String placeOfHappening) {
        this.placeOfHappening = placeOfHappening;
    }

    public int getMomID() {
        return momID;
    }

    public void setMomID(int momID) {
        this.momID = momID;
    }
}
