package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameFromDetailBean {
    private DataBean data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private DetailsBean details;
        private List<GameListBean> game_list;

        /* loaded from: classes4.dex */
        public static class DetailsBean {
            private String add_time;
            private String book_count;
            private String book_state;
            private String game_count;
            private String id;
            private String is_self;
            private String nick_name;
            private String portrait;
            private String title;
            private int tv_btn = 0;
            private int uid;

            public String getAdd_time() {
                return this.add_time;
            }

            public String getBook_count() {
                return this.book_count;
            }

            public String getBook_state() {
                return this.book_state;
            }

            public String getGame_count() {
                return this.game_count;
            }

            public String getId() {
                return this.id;
            }

            public String getIs_self() {
                return this.is_self;
            }

            public String getNick_name() {
                return this.nick_name;
            }

            public String getPortrait() {
                return this.portrait;
            }

            public String getTitle() {
                return this.title;
            }

            public int getTv_btn() {
                return this.tv_btn;
            }

            public int getUid() {
                return this.uid;
            }

            public void setAdd_time(String str) {
                this.add_time = str;
            }

            public void setBook_count(String str) {
                this.book_count = str;
            }

            public void setBook_state(String str) {
                this.book_state = str;
            }

            public void setGame_count(String str) {
                this.game_count = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setIs_self(String str) {
                this.is_self = str;
            }

            public void setNick_name(String str) {
                this.nick_name = str;
            }

            public void setPortrait(String str) {
                this.portrait = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public void setTv_btn(int i2) {
                this.tv_btn = i2;
            }

            public void setUid(int i2) {
                this.uid = i2;
            }
        }

        /* loaded from: classes4.dex */
        public static class GameListBean {
            private String allow_start_up_ad;
            private int bespeak_switch;
            private String crc_sign_id;
            private int down_count;
            private int down_status;
            private String down_url_remote;
            private String download_original_switch;
            private String download_outside_url;
            private String download_source_switch_v1;
            private String download_source_switch_v2;
            private String download_source_url;
            private String game_desc;
            private String game_ico_remote;
            private String game_id;
            private String game_info_tpl_type;
            private String game_name;
            private String game_size;
            private List<GameTagInfoBean> game_tag_info;
            private String ico_remote;
            private String info;
            private String info_tpl_type;
            private String packageName;
            private String package_name;
            private Object pay_tag_info;
            private int plugin_num;
            private String size;
            private SpTagInfoBean sp_tag_info;
            private String sp_tpl_two_position;
            private List<TagInfoBean> tag_info;

            /* loaded from: classes4.dex */
            public static class GameTagInfoBean {
                private String color;
                private String id;
                private String name;
                private String type;

                public String getColor() {
                    return this.color;
                }

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getType() {
                    return this.type;
                }

                public void setColor(String str) {
                    this.color = str;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setType(String str) {
                    this.type = str;
                }
            }

            /* loaded from: classes4.dex */
            public static class SpTagInfoBean {
                private DownResBean down_res;
                private ModelBean model;

                /* loaded from: classes4.dex */
                public static class DownResBean {
                    private String color;
                    private String id;
                    private String name;

                    public String getColor() {
                        return this.color;
                    }

                    public String getId() {
                        return this.id;
                    }

                    public String getName() {
                        return this.name;
                    }

                    public void setColor(String str) {
                        this.color = str;
                    }

                    public void setId(String str) {
                        this.id = str;
                    }

                    public void setName(String str) {
                        this.name = str;
                    }
                }

                /* loaded from: classes4.dex */
                public static class ModelBean {
                    private String color;
                    private String id;
                    private String name;

                    public String getColor() {
                        return this.color;
                    }

                    public String getId() {
                        return this.id;
                    }

                    public String getName() {
                        return this.name;
                    }

                    public void setColor(String str) {
                        this.color = str;
                    }

                    public void setId(String str) {
                        this.id = str;
                    }

                    public void setName(String str) {
                        this.name = str;
                    }
                }

                public DownResBean getDown_res() {
                    return this.down_res;
                }

                public ModelBean getModel() {
                    return this.model;
                }

                public void setDown_res(DownResBean downResBean) {
                    this.down_res = downResBean;
                }

                public void setModel(ModelBean modelBean) {
                    this.model = modelBean;
                }
            }

            /* loaded from: classes4.dex */
            public static class TagInfoBean {
                private String color;
                private String id;
                private String name;
                private String type;

                public String getColor() {
                    return this.color;
                }

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getType() {
                    return this.type;
                }

                public void setColor(String str) {
                    this.color = str;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setType(String str) {
                    this.type = str;
                }
            }

            public String getAllow_start_up_ad() {
                return this.allow_start_up_ad;
            }

            public int getBespeak_switch() {
                return this.bespeak_switch;
            }

            public String getCrc_sign_id() {
                return this.crc_sign_id;
            }

            public int getDown_count() {
                return this.down_count;
            }

            public int getDown_status() {
                int i2 = this.down_status;
                if (i2 == 2 && this.bespeak_switch == 1) {
                    return 6;
                }
                return i2;
            }

            public String getDown_url_remote() {
                return this.down_url_remote;
            }

            public String getDownload_original_switch() {
                return this.download_original_switch;
            }

            public String getDownload_outside_url() {
                return this.download_outside_url;
            }

            public String getDownload_source_switch_v1() {
                return this.download_source_switch_v1;
            }

            public String getDownload_source_switch_v2() {
                return this.download_source_switch_v2;
            }

            public String getDownload_source_url() {
                return this.download_source_url;
            }

            public String getGame_desc() {
                return this.game_desc;
            }

            public String getGame_ico_remote() {
                return this.game_ico_remote;
            }

            public String getGame_id() {
                return this.game_id;
            }

            public String getGame_info_tpl_type() {
                return this.game_info_tpl_type;
            }

            public String getGame_name() {
                return this.game_name;
            }

            public String getGame_size() {
                return this.game_size;
            }

            public List<GameTagInfoBean> getGame_tag_info() {
                return this.game_tag_info;
            }

            public String getIco_remote() {
                return this.ico_remote;
            }

            public String getInfo() {
                return this.info;
            }

            public String getInfo_tpl_type() {
                return this.info_tpl_type;
            }

            public String getPackageName() {
                return this.packageName;
            }

            public String getPackage_name() {
                return this.package_name;
            }

            public Object getPay_tag_info() {
                return this.pay_tag_info;
            }

            public int getPlugin_num() {
                return this.plugin_num;
            }

            public String getSize() {
                return this.size;
            }

            public SpTagInfoBean getSp_tag_info() {
                return this.sp_tag_info;
            }

            public String getSp_tpl_two_position() {
                return this.sp_tpl_two_position;
            }

            public List<TagInfoBean> getTag_info() {
                return this.tag_info;
            }

            public void setAllow_start_up_ad(String str) {
                this.allow_start_up_ad = str;
            }

            public void setBespeak_switch(int i2) {
                this.bespeak_switch = i2;
            }

            public void setCrc_sign_id(String str) {
                this.crc_sign_id = str;
            }

            public void setDown_count(int i2) {
                this.down_count = i2;
            }

            public void setDown_status(int i2) {
                this.down_status = i2;
            }

            public void setDown_url_remote(String str) {
                this.down_url_remote = str;
            }

            public void setDownload_original_switch(String str) {
                this.download_original_switch = str;
            }

            public void setDownload_outside_url(String str) {
                this.download_outside_url = str;
            }

            public void setDownload_source_switch_v1(String str) {
                this.download_source_switch_v1 = str;
            }

            public void setDownload_source_switch_v2(String str) {
                this.download_source_switch_v2 = str;
            }

            public void setDownload_source_url(String str) {
                this.download_source_url = str;
            }

            public void setGame_desc(String str) {
                this.game_desc = str;
            }

            public void setGame_ico_remote(String str) {
                this.game_ico_remote = str;
            }

            public void setGame_id(String str) {
                this.game_id = str;
            }

            public void setGame_info_tpl_type(String str) {
                this.game_info_tpl_type = str;
            }

            public void setGame_name(String str) {
                this.game_name = str;
            }

            public void setGame_size(String str) {
                this.game_size = str;
            }

            public void setGame_tag_info(List<GameTagInfoBean> list) {
                this.game_tag_info = list;
            }

            public void setIco_remote(String str) {
                this.ico_remote = str;
            }

            public void setInfo(String str) {
                this.info = str;
            }

            public void setInfo_tpl_type(String str) {
                this.info_tpl_type = str;
            }

            public void setPackageName(String str) {
                this.packageName = str;
            }

            public void setPackage_name(String str) {
                this.package_name = str;
            }

            public void setPay_tag_info(Object obj) {
                this.pay_tag_info = obj;
            }

            public void setPlugin_num(int i2) {
                this.plugin_num = i2;
            }

            public void setSize(String str) {
                this.size = str;
            }

            public void setSp_tag_info(SpTagInfoBean spTagInfoBean) {
                this.sp_tag_info = spTagInfoBean;
            }

            public void setSp_tpl_two_position(String str) {
                this.sp_tpl_two_position = str;
            }

            public void setTag_info(List<TagInfoBean> list) {
                this.tag_info = list;
            }
        }

        public DetailsBean getDetails() {
            return this.details;
        }

        public List<GameListBean> getGame_list() {
            return this.game_list;
        }

        public void setDetails(DetailsBean detailsBean) {
            this.details = detailsBean;
        }

        public void setGame_list(List<GameListBean> list) {
            this.game_list = list;
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
