package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class MessageRedPointBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    /* loaded from: classes4.dex */
    public static class MessagesBean {
        private DataBean data;

        /* loaded from: classes.dex */
        public static class DataBean {
            private int community_praise_surplus_number;
            private int community_surplus_number;
            private int notice_surplus_number;
            private int praise_surplus_number;
            private int replay_surplus_number;

            public int getCommunity_praise_surplus_number() {
                return this.community_praise_surplus_number;
            }

            public int getCommunity_surplus_number() {
                return this.community_surplus_number;
            }

            public int getNotice_surplus_number() {
                return this.notice_surplus_number;
            }

            public int getPraise_surplus_number() {
                return this.praise_surplus_number;
            }

            public int getReplay_surplus_number() {
                return this.replay_surplus_number;
            }

            public void setCommunity_praise_surplus_number(int i2) {
                this.community_praise_surplus_number = i2;
            }

            public void setCommunity_surplus_number(int i2) {
                this.community_surplus_number = i2;
            }

            public void setNotice_surplus_number(int i2) {
                this.notice_surplus_number = i2;
            }

            public void setPraise_surplus_number(int i2) {
                this.praise_surplus_number = i2;
            }

            public void setReplay_surplus_number(int i2) {
                this.replay_surplus_number = i2;
            }
        }

        public DataBean getData() {
            return this.data;
        }

        public void setData(DataBean dataBean) {
            this.data = dataBean;
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
