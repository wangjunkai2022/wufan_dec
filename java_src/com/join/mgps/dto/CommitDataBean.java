package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CommitDataBean implements Serializable {
    private String comment_id;
    private String content;
    private String game_id;
    private boolean has_praised;
    private String head_portrait;
    private int praise_count;
    private long times;
    private int uid;
    private int user_level;
    private String user_name;

    public String getComment_id() {
        return this.comment_id;
    }

    public String getContent() {
        return this.content;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public int getPraise_count() {
        return this.praise_count;
    }

    public long getTimes() {
        return this.times;
    }

    public int getUid() {
        return this.uid;
    }

    public int getUser_level() {
        return this.user_level;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public boolean isHas_praised() {
        return this.has_praised;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setHas_praised(boolean z3) {
        this.has_praised = z3;
    }

    public void setPraise_count(int i2) {
        this.praise_count = i2;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
