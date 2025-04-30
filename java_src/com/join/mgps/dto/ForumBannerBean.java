package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ForumBannerBean<T> {
    private String code;
    private String flag;
    private T messages;
    private String requesttype;
    private String version;

    /* loaded from: classes4.dex */
    public static class ForumAreaBannerMessagesData {
        private ForumBannerDataBannerBean ad;

        public ForumBannerDataBannerBean getAd() {
            return this.ad;
        }

        public void setAd(ForumBannerDataBannerBean forumBannerDataBannerBean) {
            this.ad = forumBannerDataBannerBean;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerDataBannerBean {
        private List<BannerBean> banner;
        private String sub_title;
        private String title;

        public List<BannerBean> getBanner() {
            return this.banner;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public void setBanner(List<BannerBean> list) {
            this.banner = list;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerDataBannerCellBean {
        private int ad_switch;
        private String crc_link_type_val;
        private String game_info_tpl_type;
        private String jump_type;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private String plugin_num = "";
        private String sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getJump_type() {
            return this.jump_type;
        }

        public String getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public String getPic_remote() {
            return this.pic_remote;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public String getSync_memory() {
            return this.sync_memory;
        }

        public String getTitle() {
            return this.title;
        }

        public String getTpl_type() {
            return this.tpl_type;
        }

        public String getType() {
            return this.type;
        }

        public void setAd_switch(int i2) {
            this.ad_switch = i2;
        }

        public void setCrc_link_type_val(String str) {
            this.crc_link_type_val = str;
        }

        public void setGame_info_tpl_type(String str) {
            this.game_info_tpl_type = str;
        }

        public void setJump_type(String str) {
            this.jump_type = str;
        }

        public void setLink_type(String str) {
            this.link_type = str;
        }

        public void setLink_type_val(String str) {
            this.link_type_val = str;
        }

        public void setPic_remote(String str) {
            this.pic_remote = str;
        }

        public void setPlugin_num(String str) {
            this.plugin_num = str;
        }

        public void setSync_memory(String str) {
            this.sync_memory = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTpl_type(String str) {
            this.tpl_type = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerMessages {
        private ForumBannerMessagesData data;
        private String modeltype;

        public ForumBannerMessages() {
        }

        public ForumBannerMessagesData getData() {
            return this.data;
        }

        public String getModeltype() {
            return this.modeltype;
        }

        public void setData(ForumBannerMessagesData forumBannerMessagesData) {
            this.data = forumBannerMessagesData;
        }

        public void setModeltype(String str) {
            this.modeltype = str;
        }

        public ForumBannerMessages(String str, ForumBannerMessagesData forumBannerMessagesData) {
            this.modeltype = str;
            this.data = forumBannerMessagesData;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerMessagesData {
        private List<ForumBannerDataBannerBean> ad;
        private List<ForumBannerDataBannerBean> live;
        private List<ForumBannerDataBannerBean> mid;
        private List<ForumBannerDataBannerBean> top;

        public List<ForumBannerDataBannerBean> getAd() {
            return this.ad;
        }

        public List<ForumBannerDataBannerBean> getLive() {
            return this.live;
        }

        public List<ForumBannerDataBannerBean> getMid() {
            return this.mid;
        }

        public List<ForumBannerDataBannerBean> getTop() {
            return this.top;
        }

        public void setAd(List<ForumBannerDataBannerBean> list) {
            this.ad = list;
        }

        public void setLive(List<ForumBannerDataBannerBean> list) {
            this.live = list;
        }

        public void setMid(List<ForumBannerDataBannerBean> list) {
            this.mid = list;
        }

        public void setTop(List<ForumBannerDataBannerBean> list) {
            this.top = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerRequestBean {
        private String deviceid;
        private RequestMessages messages;
        private String requesttype;
        private String sign;
        private String version;

        /* loaded from: classes4.dex */
        public static class RequestMessages {
            private RequestMessagesArgs args;
            private String modeltype;

            public RequestMessages() {
            }

            public RequestMessagesArgs getArgs() {
                return this.args;
            }

            public String getModeltype() {
                return this.modeltype;
            }

            public void setArgs(RequestMessagesArgs requestMessagesArgs) {
                this.args = requestMessagesArgs;
            }

            public void setModeltype(String str) {
                this.modeltype = str;
            }

            public RequestMessages(String str, RequestMessagesArgs requestMessagesArgs) {
                this.modeltype = str;
                this.args = requestMessagesArgs;
            }
        }

        /* loaded from: classes4.dex */
        public static class RequestMessagesArgs {
            private int area_id;
            private int pn;

            public RequestMessagesArgs() {
            }

            public int getArea_id() {
                return this.area_id;
            }

            public int getPn() {
                return this.pn;
            }

            public void setArea_id(int i2) {
                this.area_id = i2;
            }

            public void setPn(int i2) {
                this.pn = i2;
            }

            public RequestMessagesArgs(Object... objArr) {
                this.pn = ((Integer) objArr[0]).intValue();
                this.area_id = ((Integer) objArr[0]).intValue();
            }
        }

        public ForumBannerRequestBean() {
        }

        public String getDeviceid() {
            return this.deviceid;
        }

        public RequestMessages getMessages() {
            return this.messages;
        }

        public String getRequesttype() {
            return this.requesttype;
        }

        public String getSign() {
            return this.sign;
        }

        public String getVersion() {
            return this.version;
        }

        public void setDeviceid(String str) {
            this.deviceid = str;
        }

        public void setMessages(RequestMessages requestMessages) {
            this.messages = requestMessages;
        }

        public void setRequesttype(String str) {
            this.requesttype = str;
        }

        public void setSign(String str) {
            this.sign = str;
        }

        public void setVersion(String str) {
            this.version = str;
        }

        public ForumBannerRequestBean(String str, String str2, String str3, String str4, RequestMessages requestMessages) {
            this.version = str;
            this.deviceid = str2;
            this.requesttype = str3;
            this.sign = str4;
            this.messages = requestMessages;
        }
    }

    /* loaded from: classes4.dex */
    public static class ForumBannerResponseBean {
        private String code;
        private String flag;
        private ForumBannerMessages messages;
        private String requesttype;
        private String version;

        public ForumBannerResponseBean() {
        }

        public String getCode() {
            return this.code;
        }

        public String getFlag() {
            return this.flag;
        }

        public ForumBannerMessages getMessages() {
            return this.messages;
        }

        public String getRequesttype() {
            return this.requesttype;
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

        public void setMessages(ForumBannerMessages forumBannerMessages) {
            this.messages = forumBannerMessages;
        }

        public void setRequesttype(String str) {
            this.requesttype = str;
        }

        public void setVersion(String str) {
            this.version = str;
        }

        public ForumBannerResponseBean(String str, String str2, String str3, String str4, ForumBannerMessages forumBannerMessages) {
            this.flag = str;
            this.code = str2;
            this.version = str3;
            this.requesttype = str4;
            this.messages = forumBannerMessages;
        }
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public T getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
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

    public void setMessages(T t3) {
        this.messages = t3;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
