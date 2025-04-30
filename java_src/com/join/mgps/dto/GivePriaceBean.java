package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GivePriaceBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    /* loaded from: classes4.dex */
    public static class MessagesBean {
        private List<DataBean> data;

        /* loaded from: classes4.dex */
        public static class DataBean {
            String comment_score_switch;
            String comment_switch;
            String game_id;
            private String original_text;
            private int original_text_id;
            private int original_text_uid;
            private String praise_text;
            private int praise_text_id;
            private int praise_text_uid;
            private long praise_time;
            private String praise_title;
            private String praise_user_ico;

            public String getComment_score_switch() {
                return this.comment_score_switch;
            }

            public String getComment_switch() {
                return this.comment_switch;
            }

            public String getGame_id() {
                return this.game_id;
            }

            public String getOriginal_text() {
                return this.original_text;
            }

            public int getOriginal_text_id() {
                return this.original_text_id;
            }

            public int getOriginal_text_uid() {
                return this.original_text_uid;
            }

            public String getPraise_text() {
                return this.praise_text;
            }

            public int getPraise_text_id() {
                return this.praise_text_id;
            }

            public int getPraise_text_uid() {
                return this.praise_text_uid;
            }

            public long getPraise_time() {
                return this.praise_time;
            }

            public String getPraise_title() {
                return this.praise_title;
            }

            public String getPraise_user_ico() {
                return this.praise_user_ico;
            }

            public void setComment_score_switch(String str) {
                this.comment_score_switch = str;
            }

            public void setComment_switch(String str) {
                this.comment_switch = str;
            }

            public void setGame_id(String str) {
                this.game_id = str;
            }

            public void setOriginal_text(String str) {
                this.original_text = str;
            }

            public void setOriginal_text_id(int i2) {
                this.original_text_id = i2;
            }

            public void setOriginal_text_uid(int i2) {
                this.original_text_uid = i2;
            }

            public void setPraise_text(String str) {
                this.praise_text = str;
            }

            public void setPraise_text_id(int i2) {
                this.praise_text_id = i2;
            }

            public void setPraise_text_uid(int i2) {
                this.praise_text_uid = i2;
            }

            public void setPraise_time(long j4) {
                this.praise_time = j4;
            }

            public void setPraise_title(String str) {
                this.praise_title = str;
            }

            public void setPraise_user_ico(String str) {
                this.praise_user_ico = str;
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public MessagesBean getMessages() {
        return this.messages;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setFlag(String str) {
        this.flag = str;
    }

    public void setMessages(MessagesBean messagesBean) {
        this.messages = messagesBean;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
