package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestFeedbackUserCustomTag {
    private Integer feedbackType;
    private String feedbackUid;
    private String gameId;
    private String reason;
    private String tagName;

    public Integer getFeedbackType() {
        return this.feedbackType;
    }

    public String getFeedbackUid() {
        return this.feedbackUid;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getReason() {
        return this.reason;
    }

    public String getTagName() {
        return this.tagName;
    }

    public void setFeedbackType(Integer num) {
        this.feedbackType = num;
    }

    public void setFeedbackUid(String str) {
        this.feedbackUid = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }
}
