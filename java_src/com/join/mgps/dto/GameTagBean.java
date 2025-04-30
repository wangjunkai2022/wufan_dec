package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameTagBean implements Serializable {
    private int forum_id;
    private String forum_name;
    private int game_tag_type;
    private int tag_id;
    private String tag_name;

    public int getForum_id() {
        return this.forum_id;
    }

    public String getForum_name() {
        return this.forum_name;
    }

    public int getGame_tag_type() {
        return this.game_tag_type;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public void setForum_id(int i2) {
        this.forum_id = i2;
    }

    public void setForum_name(String str) {
        this.forum_name = str;
    }

    public void setGame_tag_type(int i2) {
        this.game_tag_type = i2;
    }

    public void setTag_id(int i2) {
        this.tag_id = i2;
    }

    public void setTag_name(String str) {
        this.tag_name = str;
    }

    public String toString() {
        return "GameTagBean{tag_id=" + this.tag_id + ", tag_name='" + this.tag_name + "', forum_name='" + this.forum_name + "', forum_id=" + this.forum_id + '}';
    }
}
