package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CommentAlllistIntentData implements Serializable {
    int bespeakSwitch;
    String commentContent;
    String commentId;
    String commentScoreSwitch;
    float commentStars;
    String gameId;
    int gameIsStart;
    String gameType;
    String packageName;
    int sgcSwitch;

    public int getBespeakSwitch() {
        return this.bespeakSwitch;
    }

    public String getCommentContent() {
        return this.commentContent;
    }

    public String getCommentId() {
        return this.commentId;
    }

    public String getCommentScoreSwitch() {
        return this.commentScoreSwitch;
    }

    public float getCommentStars() {
        return this.commentStars;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getGameIsStart() {
        return this.gameIsStart;
    }

    public String getGameType() {
        return this.gameType;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getSgcSwitch() {
        return this.sgcSwitch;
    }

    public void setBespeakSwitch(int i2) {
        this.bespeakSwitch = i2;
    }

    public void setCommentContent(String str) {
        this.commentContent = str;
    }

    public void setCommentId(String str) {
        this.commentId = str;
    }

    public void setCommentScoreSwitch(String str) {
        this.commentScoreSwitch = str;
    }

    public void setCommentStars(float f4) {
        this.commentStars = f4;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameIsStart(int i2) {
        this.gameIsStart = i2;
    }

    public void setGameType(String str) {
        this.gameType = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSgcSwitch(int i2) {
        this.sgcSwitch = i2;
    }
}
