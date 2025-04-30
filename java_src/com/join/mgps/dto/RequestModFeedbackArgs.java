package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestModFeedbackArgs {
    private String contact;
    private String gameId;
    private String questionType;
    private int uid;

    public String getContact() {
        return this.contact;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getQuestionType() {
        return this.questionType;
    }

    public int getUid() {
        return this.uid;
    }

    public void setContact(String str) {
        this.contact = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setQuestionType(String str) {
        this.questionType = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
