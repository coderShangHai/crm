package com.fxeie.crm.vo;

public class MailVO {

    private Integer id;

    private String sendDate;

    private String sendTime;

    private String nature;

    private String sendResult;

    private String explain;

    private String receiveMailbox;

    private String account;

    private String recipients;

    private String title;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSendDate() {
        return sendDate;
    }

    public void setSendDate(String sendDate) {
        this.sendDate = sendDate;
    }

    public String getSendTime() {
        return sendTime;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getSendResult() {
        return sendResult;
    }

    public void setSendResult(String sendResult) {
        this.sendResult = sendResult;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public String getReceiveMailbox() {
        return receiveMailbox;
    }

    public void setReceiveMailbox(String receiveMailbox) {
        this.receiveMailbox = receiveMailbox;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getRecipients() {
        return recipients;
    }

    public void setRecipients(String recipients) {
        this.recipients = recipients;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "MailVO{" +
                "id=" + id +
                ", sendDate='" + sendDate + '\'' +
                ", sendTime='" + sendTime + '\'' +
                ", nature='" + nature + '\'' +
                ", sendResult='" + sendResult + '\'' +
                ", explain='" + explain + '\'' +
                ", receiveMailbox='" + receiveMailbox + '\'' +
                ", account='" + account + '\'' +
                ", recipients='" + recipients + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
