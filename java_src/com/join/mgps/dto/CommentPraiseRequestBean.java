package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommentPraiseRequestBean extends CommentRequest {
    private String comment_id;
    private String game_id;
    private int type;
    private String user_token;

    public String getComment_id() {
        return this.comment_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getType() {
        return this.type;
    }

    public String getUser_token() {
        return this.user_token;
    }

    public void setComment_id(String str) {
        this.comment_id = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUser_token(String str) {
        this.user_token = str;
    }
}
