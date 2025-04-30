package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class IntroductionCommentDetailParamsBean implements Serializable {
    private int comment_id;
    private long game_id;
    private int parent_comment_id;
    private int post_id;

    public int getComment_id() {
        return this.comment_id;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public int getParent_comment_id() {
        return this.parent_comment_id;
    }

    public int getPost_id() {
        return this.post_id;
    }

    public void setComment_id(int i2) {
        this.comment_id = i2;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }

    public void setParent_comment_id(int i2) {
        this.parent_comment_id = i2;
    }

    public void setPost_id(Integer num) {
        this.post_id = num.intValue();
    }
}
