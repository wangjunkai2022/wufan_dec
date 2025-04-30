package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameReplyMessageListBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    /* loaded from: classes4.dex */
    public static class MessagesBean {
        private List<DataBean> data;

        /* loaded from: classes4.dex */
        public static class DataBean {
            private int comment_score_switch;
            private int comment_switch;
            private String current_reply_text;
            private int current_reply_text_id;
            private int current_reply_text_uid;
            private long current_reply_time;
            private String current_reply_title;
            private String current_reply_user_ico;
            private String game_id;
            private String original_text;
            private int original_text_id;
            private int original_text_uid;
            private ReplySubBean reply_sub;

            /* loaded from: classes4.dex */
            public static class ReplySubBean {
                private String reply_text;
                private int reply_text_id;
                private int reply_text_uid;

                public String getReply_text() {
                    return this.reply_text;
                }

                public int getReply_text_id() {
                    return this.reply_text_id;
                }

                public int getReply_text_uid() {
                    return this.reply_text_uid;
                }

                public void setReply_text(String str) {
                    this.reply_text = str;
                }

                public void setReply_text_id(int i2) {
                    this.reply_text_id = i2;
                }

                public void setReply_text_uid(int i2) {
                    this.reply_text_uid = i2;
                }
            }

            public int getComment_score_switch() {
                return this.comment_score_switch;
            }

            public int getComment_switch() {
                return this.comment_switch;
            }

            public String getCurrent_reply_text() {
                return this.current_reply_text;
            }

            public int getCurrent_reply_text_id() {
                return this.current_reply_text_id;
            }

            public int getCurrent_reply_text_uid() {
                return this.current_reply_text_uid;
            }

            public long getCurrent_reply_time() {
                return this.current_reply_time;
            }

            public String getCurrent_reply_title() {
                return this.current_reply_title;
            }

            public String getCurrent_reply_user_ico() {
                return this.current_reply_user_ico;
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

            public ReplySubBean getReply_sub() {
                return this.reply_sub;
            }

            public void setComment_score_switch(int i2) {
                this.comment_score_switch = i2;
            }

            public void setComment_switch(int i2) {
                this.comment_switch = i2;
            }

            public void setCurrent_reply_text(String str) {
                this.current_reply_text = str;
            }

            public void setCurrent_reply_text_id(int i2) {
                this.current_reply_text_id = i2;
            }

            public void setCurrent_reply_text_uid(int i2) {
                this.current_reply_text_uid = i2;
            }

            public void setCurrent_reply_time(long j4) {
                this.current_reply_time = j4;
            }

            public void setCurrent_reply_title(String str) {
                this.current_reply_title = str;
            }

            public void setCurrent_reply_user_ico(String str) {
                this.current_reply_user_ico = str;
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

            public void setReply_sub(ReplySubBean replySubBean) {
                this.reply_sub = replySubBean;
            }

            public String toString() {
                return "DataBean{game_id='" + this.game_id + "', original_text='" + this.original_text + "', original_text_id=" + this.original_text_id + ", original_text_uid=" + this.original_text_uid + ", current_reply_text='" + this.current_reply_text + "', current_reply_text_id=" + this.current_reply_text_id + ", current_reply_text_uid=" + this.current_reply_text_uid + ", reply_sub=" + this.reply_sub + ", current_reply_time=" + this.current_reply_time + ", current_reply_title='" + this.current_reply_title + "', current_reply_user_ico='" + this.current_reply_user_ico + "'}";
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
