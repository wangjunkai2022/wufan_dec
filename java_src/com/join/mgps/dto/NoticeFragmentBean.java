package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class NoticeFragmentBean {
    private DataBean data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private List<NotificationListBean> notification_list;

        /* loaded from: classes4.dex */
        public static class NotificationListBean {
            private String add_time;
            private String cover_pic;
            private List<JumpInfoBean> jump_info;
            private String title;

            /* loaded from: classes4.dex */
            public static class JumpInfoBean {
                private MainBean main;
                private List<SubBean> sub;

                /* loaded from: classes4.dex */
                public static class MainBean {
                    private int ad_switch;
                    private String color;
                    private String ico_remote;
                    private String label;
                    private String margin;
                    private String model_type;
                    private String pic_remote;
                    private int quit_switch;
                    private String sub_title;
                    private String title;
                    private String title_type;
                    private String vedio_url;

                    public int getAd_switch() {
                        return this.ad_switch;
                    }

                    public String getColor() {
                        return this.color;
                    }

                    public String getIco_remote() {
                        return this.ico_remote;
                    }

                    public String getLabel() {
                        return this.label;
                    }

                    public String getMargin() {
                        return this.margin;
                    }

                    public String getModel_type() {
                        return this.model_type;
                    }

                    public String getPic_remote() {
                        return this.pic_remote;
                    }

                    public int getQuit_switch() {
                        return this.quit_switch;
                    }

                    public String getSub_title() {
                        return this.sub_title;
                    }

                    public String getTitle() {
                        return this.title;
                    }

                    public String getTitle_type() {
                        return this.title_type;
                    }

                    public String getVedio_url() {
                        return this.vedio_url;
                    }

                    public void setAd_switch(int i2) {
                        this.ad_switch = i2;
                    }

                    public void setColor(String str) {
                        this.color = str;
                    }

                    public void setIco_remote(String str) {
                        this.ico_remote = str;
                    }

                    public void setLabel(String str) {
                        this.label = str;
                    }

                    public void setMargin(String str) {
                        this.margin = str;
                    }

                    public void setModel_type(String str) {
                        this.model_type = str;
                    }

                    public void setPic_remote(String str) {
                        this.pic_remote = str;
                    }

                    public void setQuit_switch(int i2) {
                        this.quit_switch = i2;
                    }

                    public void setSub_title(String str) {
                        this.sub_title = str;
                    }

                    public void setTitle(String str) {
                        this.title = str;
                    }

                    public void setTitle_type(String str) {
                        this.title_type = str;
                    }

                    public void setVedio_url(String str) {
                        this.vedio_url = str;
                    }
                }

                /* loaded from: classes4.dex */
                public static class SubBean {
                    private String crc_link_type_val;
                    private String is_more;
                    private String jump_type;
                    private String link_type;
                    private String link_type_val;
                    private String tpl_type;

                    public String getCrc_link_type_val() {
                        return this.crc_link_type_val;
                    }

                    public String getIs_more() {
                        return this.is_more;
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

                    public String getTpl_type() {
                        return this.tpl_type;
                    }

                    public void setCrc_link_type_val(String str) {
                        this.crc_link_type_val = str;
                    }

                    public void setIs_more(String str) {
                        this.is_more = str;
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

                    public void setTpl_type(String str) {
                        this.tpl_type = str;
                    }
                }

                public MainBean getMain() {
                    return this.main;
                }

                public List<SubBean> getSub() {
                    return this.sub;
                }

                public void setMain(MainBean mainBean) {
                    this.main = mainBean;
                }

                public void setSub(List<SubBean> list) {
                    this.sub = list;
                }
            }

            public String getAdd_time() {
                return this.add_time;
            }

            public String getCover_pic() {
                return this.cover_pic;
            }

            public List<JumpInfoBean> getJump_info() {
                return this.jump_info;
            }

            public String getTitle() {
                return this.title;
            }

            public void setAdd_time(String str) {
                this.add_time = str;
            }

            public void setCover_pic(String str) {
                this.cover_pic = str;
            }

            public void setJump_info(List<JumpInfoBean> list) {
                this.jump_info = list;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public List<NotificationListBean> getNotification_list() {
            return this.notification_list;
        }

        public void setNotification_list(List<NotificationListBean> list) {
            this.notification_list = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
