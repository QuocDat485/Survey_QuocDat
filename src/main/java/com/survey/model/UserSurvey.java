package com.survey.model;

import java.io.Serializable;

public class UserSurvey implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String gender;
    private String heardFrom;
    private String contactVia;
    private String wantsUpdates;
    private String emailAnnouncements;
    private String feedback;

    public UserSurvey() {
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.dob = "";
        this.gender = "";
        this.heardFrom = "";
        this.contactVia = "";
        this.wantsUpdates = "";
        this.emailAnnouncements = "";
        this.feedback = "";
    }

    public UserSurvey(String firstName, String lastName, String email, String dob,
                      String gender, String heardFrom, String contactVia,
                      String wantsUpdates, String emailAnnouncements, String feedback) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.heardFrom = heardFrom;
        this.contactVia = contactVia;
        this.wantsUpdates = wantsUpdates;
        this.emailAnnouncements = emailAnnouncements;
        this.feedback = feedback;
    }

    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public String getHeardFrom() { return heardFrom; }
    public void setHeardFrom(String heardFrom) { this.heardFrom = heardFrom; }

    public String getContactVia() { return contactVia; }
    public void setContactVia(String contactVia) { this.contactVia = contactVia; }

    public String getWantsUpdates() { return wantsUpdates; }
    public void setWantsUpdates(String wantsUpdates) { this.wantsUpdates = wantsUpdates; }

    public String getEmailAnnouncements() { return emailAnnouncements; }
    public void setEmailAnnouncements(String emailAnnouncements) { this.emailAnnouncements = emailAnnouncements; }

    public String getFeedback() { return feedback; }
    public void setFeedback(String feedback) { this.feedback = feedback; }
}