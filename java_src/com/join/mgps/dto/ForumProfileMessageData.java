package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ForumProfileMessageData {
    private List<ForumProfileMessageBean> message_list;
    private int un_read_praise_count;

    public List<ForumProfileMessageBean> getMessage_list() {
        return this.message_list;
    }

    public int getUn_read_praise_count() {
        return this.un_read_praise_count;
    }

    public void setMessage_list(List<ForumProfileMessageBean> list) {
        this.message_list = list;
    }

    public void setUn_read_praise_count(int i2) {
        this.un_read_praise_count = i2;
    }
}
