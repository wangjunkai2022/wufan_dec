package com.join.mgps.dto;

import com.join.mgps.business.CollectionBeanSubBusiness;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorAreaDataBean implements Serializable {
    private List<CollectionRecommendBean> collection_recommend;
    private List<GameTypeBean> game_type;
    private List<SimulatorFbaEncyclopediasBean> simulator_fba_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_fc_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_gba_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_psp_encyclopedias;
    private List<SubjectListBean> subject_list;
    private List<CollectionBeanSubBusiness> the_new_release;
    private List<CollectionBeanSubBusiness> top_5;

    /* loaded from: classes4.dex */
    public static class CollectionRecommendBean implements Serializable {
        private CollectionInfoBean collection_info;
        private List<CollectionBeanSubBusiness> game_list;

        /* loaded from: classes4.dex */
        public static class CollectionInfoBean implements Serializable {
            private String collection_id;
            private String title;

            public String getCollection_id() {
                return this.collection_id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setCollection_id(String str) {
                this.collection_id = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public CollectionInfoBean getCollection_info() {
            return this.collection_info;
        }

        public List<CollectionBeanSubBusiness> getGame_list() {
            return this.game_list;
        }

        public void setCollection_info(CollectionInfoBean collectionInfoBean) {
            this.collection_info = collectionInfoBean;
        }

        public void setGame_list(List<CollectionBeanSubBusiness> list) {
            this.game_list = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class GameTypeBean implements Serializable {
        private String describe;
        private String game_count;
        private String ico_remote;
        private String id;
        private String show_index;
        private String title;

        public String getDescribe() {
            return this.describe;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public String getIco_remote() {
            return this.ico_remote;
        }

        public String getId() {
            return this.id;
        }

        public String getShow_index() {
            return this.show_index;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDescribe(String str) {
            this.describe = str;
        }

        public void setGame_count(String str) {
            this.game_count = str;
        }

        public void setIco_remote(String str) {
            this.ico_remote = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setShow_index(String str) {
            this.show_index = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class SimulatorFbaEncyclopediasBean implements Serializable {
        private SubjectListBean.MainBean main;
        private List<SubjectListBean.SubBean> sub;

        public SubjectListBean.MainBean getMain() {
            return this.main;
        }

        public List<SubjectListBean.SubBean> getSub() {
            return this.sub;
        }

        public void setMain(SubjectListBean.MainBean mainBean) {
            this.main = mainBean;
        }

        public void setSub(List<SubjectListBean.SubBean> list) {
            this.sub = list;
        }
    }

    /* loaded from: classes4.dex */
    public static class SubjectListBean implements Serializable {
        private MainBean main;
        private List<SubBean> sub;

        /* loaded from: classes4.dex */
        public static class MainBean implements Serializable {
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
        public static class SubBean implements Serializable {
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

    public List<CollectionRecommendBean> getCollection_recommend() {
        return this.collection_recommend;
    }

    public List<GameTypeBean> getGame_type() {
        return this.game_type;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_fba_encyclopedias() {
        return this.simulator_fba_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_fc_encyclopedias() {
        return this.simulator_fc_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_gba_encyclopedias() {
        return this.simulator_gba_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_psp_encyclopedias() {
        return this.simulator_psp_encyclopedias;
    }

    public List<SubjectListBean> getSubject_list() {
        return this.subject_list;
    }

    public List<CollectionBeanSubBusiness> getThe_new_release() {
        return this.the_new_release;
    }

    public List<CollectionBeanSubBusiness> getTop_5() {
        return this.top_5;
    }

    public void setCollection_recommend(List<CollectionRecommendBean> list) {
        this.collection_recommend = list;
    }

    public void setGame_type(List<GameTypeBean> list) {
        this.game_type = list;
    }

    public void setSimulator_fba_encyclopedias(List<SimulatorFbaEncyclopediasBean> list) {
        this.simulator_fba_encyclopedias = list;
    }

    public void setSimulator_fc_encyclopedias(List<SimulatorFbaEncyclopediasBean> list) {
        this.simulator_fc_encyclopedias = list;
    }

    public void setSimulator_gba_encyclopedias(List<SimulatorFbaEncyclopediasBean> list) {
        this.simulator_gba_encyclopedias = list;
    }

    public void setSimulator_psp_encyclopedias(List<SimulatorFbaEncyclopediasBean> list) {
        this.simulator_psp_encyclopedias = list;
    }

    public void setSubject_list(List<SubjectListBean> list) {
        this.subject_list = list;
    }

    public void setThe_new_release(List<CollectionBeanSubBusiness> list) {
        this.the_new_release = list;
    }

    public void setTop_5(List<CollectionBeanSubBusiness> list) {
        this.top_5 = list;
    }
}
