package com.customerservice;

public class Ticket {
    private int id;
    private String subject;
    private String issue;
    private String category;
    private String priority;
    
    
    public Ticket(int id, String subject, String issue, String category, String priority) {
        super();
        this.id = id;
        this.subject = subject;
        this.issue = issue;
        this.category = category;
        this.priority = priority;
    }


    public int getId() {
        return id;
    }


    public String getSubject() {
        return subject;
    }


    public String getIssue() {
        return issue;
    }


    public String getCategory() {
        return category;
    }


    public String getPriority() {
        return priority;
    }    
        
}
