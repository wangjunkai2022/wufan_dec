package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class CollectionBeanSub extends DownloadPointBase implements Serializable {
    private long actual_size;
    private String allow_start_up_ad;
    private String appSize;
    private String battle_upload_pic;
    private int bespeak_switch;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String collection_game_describe;
    private String crc_sign_id;
    private String customer_info;
    private int down_count;
    private int down_status;
    private String down_url_remote;
    private int downloadType;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private String first_hot_comment;
    private long forum_id;
    private int forum_switch;
    private String game_dimension;
    private String game_id;
    private String game_info_top_pic;
    private String game_info_top_video_url;
    private String game_info_tpl_type;
    private String game_name;
    private String game_open_time;
    private String gif_ico_remote;
    private int gift_package_switch;
    private String ico_remote;
    private int index;
    private String info;
    private boolean isAd;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private String package_name;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private List<DetialShowImageBean> pic_info;
    private int pic_position;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private String plugin_num;
    private int plugin_screenshot;
    private List<RecGameTagBean> rec_game_tags;
    private String recommend_game_big_gif;
    private String recommend_game_big_pic;
    private long resourceSize;
    private String resourceUrl;
    private String rom_lowest_ver;
    private String score;
    private String screenshot_pic;
    private SingleGameModInfoBean single_game_mod_info;
    private String size;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private String sync_memory;
    private ArrayList<TipBean> tag_info;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String vedio_cover_pic;
    private String vedio_url;
    private String ver;
    private String ver_name;
    private int viewType;
    private int world_area;
    private int world_shop;

    /* loaded from: classes4.dex */
    public static class GameTagInfo {
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

    public CollectionBeanSub() {
        this.plugin_num = "";
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getBattle_upload_pic() {
        return this.battle_upload_pic;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_lowest_ver() {
        return this.cfg_lowest_ver;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getCollection_game_describe() {
        return this.collection_game_describe;
    }

    public String getCrc_sign_id() {
        if (d2.h(this.crc_sign_id)) {
            return this.game_id;
        }
        return this.crc_sign_id;
    }

    public String getCustomer_info() {
        return this.customer_info;
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

    public int getDownloadType() {
        return this.downloadType;
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

    public DownloadTask getDownloadtaskDown() {
        DownloadTask downloadTask = new DownloadTask();
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i2);
        }
        downloadTask.setPackageName(this.package_name);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        if (d2.i(this.game_id)) {
            downloadTask.setCrc_link_type_val(this.game_id);
        } else {
            downloadTask.setCrc_link_type_val(this.crc_sign_id);
        }
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        downloadTask.setShowSize(this.size);
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(0);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setPlugin_num(this.plugin_num);
        downloadTask.setIs_world(this.is_world);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(this.forum_switch);
        downloadTask.setPlugin_area_val(this.forum_id);
        downloadTask.setWorld_shop(this.world_shop);
        downloadTask.setWorld_area(this.world_area);
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setFight_fun(this.fight_funv2);
        downloadTask.setFight_screenshot_pic(this.fight_screenshot_pic);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setBattle_upload_pic(this.battle_upload_pic);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setGame_info_top_pic(this.game_info_top_pic);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.setRes_actual_size(this.resourceSize);
        if (d2.i(this.resourceUrl)) {
            downloadTask.setResource_url_remote(this.resourceUrl);
        } else {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        downloadTask.setActual_size(this.actual_size);
        ModInfoBean modInfoBean = this.mod_info;
        if (modInfoBean != null) {
            if (modInfoBean.getMod_game_id().equals(this.crc_sign_id)) {
                downloadTask.setResource_url_remote(this.mod_info.getDown_url());
                downloadTask.setRef_crc_sign_id(this.mod_info.getMain_game_id());
            } else {
                downloadTask.setRef_crc_sign_id(this.mod_info.getMod_game_id());
            }
            downloadTask.setMod_info(JsonMapper.toJsonString(this.mod_info));
        }
        SingleGameModInfoBean singleGameModInfoBean = this.single_game_mod_info;
        if (singleGameModInfoBean != null) {
            downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(this.single_game_mod_info));
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom(get_from() + "");
        extBean.set_from_type(get_from_type());
        extBean.setRecPosition(getRecPosition());
        extBean.setReMarks(getReMarks());
        extBean.setNodeId(getNodeId());
        extBean.setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "");
        extBean.setOnlineGame(UtilsMy.F1(this.tag_info));
        extBean.setReMarks(getReMarks());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFirst_hot_comment() {
        return this.first_hot_comment;
    }

    public long getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    public String getGame_dimension() {
        return this.game_dimension;
    }

    public String getGame_id() {
        return d2.h(this.game_id) ? this.crc_sign_id : this.game_id;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getGame_open_time() {
        return this.game_open_time;
    }

    public String getGif_ico_remote() {
        return this.gif_ico_remote;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getIndex() {
        return this.index;
    }

    public String getInfo() {
        return this.info;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setTpl_type(this.game_info_tpl_type);
        if (d2.i(this.game_id)) {
            intentDateBean.setCrc_link_type_val(this.game_id);
        } else {
            intentDateBean.setCrc_link_type_val(this.crc_sign_id);
        }
        intentDateBean.setJump_type(this.sp_tpl_two_position);
        intentDateBean.setExtBean(new ExtBean(get_from_type()).setRecPosition(getRecPosition()).setReMarks(getReMarks()).setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "").setOnlineGame(UtilsMy.F1(this.tag_info)));
        IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
        intentToDetialBean.f(this.game_id);
        intentToDetialBean.g(this.game_name);
        intentToDetialBean.i(this.ico_remote);
        intentToDetialBean.h(0);
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPapa_explain() {
        return this.papa_explain;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public List<DetialShowImageBean> getPic_info() {
        return this.pic_info;
    }

    public int getPic_position() {
        return this.pic_position;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public List<RecGameTagBean> getRec_game_tags() {
        return this.rec_game_tags;
    }

    public String getRecommend_game_big_gif() {
        return this.recommend_game_big_gif;
    }

    public String getRecommend_game_big_pic() {
        return this.recommend_game_big_pic;
    }

    public long getResourceSize() {
        return this.resourceSize;
    }

    public String getResourceUrl() {
        return this.resourceUrl;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public String getScore() {
        return this.score;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public String getSize() {
        return this.size;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_lowest_ver() {
        return this.source_lowest_ver;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public ArrayList<TipBean> getTag_info() {
        return this.tag_info;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public String getUnzip_size() {
        return this.unzip_size;
    }

    public String getVedio_cover_pic() {
        return this.vedio_cover_pic;
    }

    public String getVedio_url() {
        return this.vedio_url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public boolean isAd() {
        return this.isAd;
    }

    public void setActual_size(long j4) {
        this.actual_size = j4;
    }

    public void setAd(boolean z3) {
        this.isAd = z3;
    }

    public void setAllow_start_up_ad(String str) {
        this.allow_start_up_ad = str;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setBattle_upload_pic(String str) {
        this.battle_upload_pic = str;
    }

    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
    }

    public void setCdn_down_switch(int i2) {
        this.cdn_down_switch = i2;
    }

    public void setCfg_down_url(String str) {
        this.cfg_down_url = str;
    }

    public void setCfg_lowest_ver(String str) {
        this.cfg_lowest_ver = str;
    }

    public void setCfg_ver(String str) {
        this.cfg_ver = str;
    }

    public void setCfg_ver_name(String str) {
        this.cfg_ver_name = str;
    }

    public void setCollection_game_describe(String str) {
        this.collection_game_describe = str;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setCustomer_info(String str) {
        this.customer_info = str;
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

    public void setDownloadType(int i2) {
        this.downloadType = i2;
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

    public void setEdit_recommend(String str) {
        this.edit_recommend = str;
    }

    public void setFight_funv2(String str) {
        this.fight_funv2 = str;
    }

    public void setFight_screenshot_pic(String str) {
        this.fight_screenshot_pic = str;
    }

    public void setFight_type(int i2) {
        this.fight_type = i2;
    }

    public void setFirst_hot_comment(String str) {
        this.first_hot_comment = str;
    }

    public void setForum_id(long j4) {
        this.forum_id = j4;
    }

    public void setForum_switch(int i2) {
        this.forum_switch = i2;
    }

    public void setGame_dimension(String str) {
        this.game_dimension = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_info_top_pic(String str) {
        this.game_info_top_pic = str;
    }

    public void setGame_info_top_video_url(String str) {
        this.game_info_top_video_url = str;
    }

    public void setGame_info_tpl_type(String str) {
        this.game_info_tpl_type = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_open_time(String str) {
        this.game_open_time = str;
    }

    public void setGif_ico_remote(String str) {
        this.gif_ico_remote = str;
    }

    public void setGift_package_switch(int i2) {
        this.gift_package_switch = i2;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setIndex(int i2) {
        this.index = i2;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIs_fight(int i2) {
        this.is_fight = i2;
    }

    public void setIs_network(int i2) {
        this.is_network = i2;
    }

    public void setIs_world(int i2) {
        this.is_world = i2;
    }

    public void setLock_sp(int i2) {
        this.lock_sp = i2;
    }

    public void setMax_an_compatible_ver(int i2) {
        this.max_an_compatible_ver = i2;
    }

    public void setMin_an_compatible_ver(int i2) {
        this.min_an_compatible_ver = i2;
    }

    public void setMod_info(ModInfoBean modInfoBean) {
        this.mod_info = modInfoBean;
    }

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPapa_explain(String str) {
        this.papa_explain = str;
    }

    public void setPay_tag_info(PayTagInfo payTagInfo) {
        this.pay_tag_info = payTagInfo;
    }

    public void setPic_info(List<DetialShowImageBean> list) {
        this.pic_info = list;
    }

    public void setPic_position(int i2) {
        this.pic_position = i2;
    }

    public void setPlugin_lowest_ver(String str) {
        this.plugin_lowest_ver = str;
    }

    public void setPlugin_lowest_ver_name(String str) {
        this.plugin_lowest_ver_name = str;
    }

    public void setPlugin_num(String str) {
        this.plugin_num = str;
    }

    public void setPlugin_screenshot(int i2) {
        this.plugin_screenshot = i2;
    }

    public void setRec_game_tags(List<RecGameTagBean> list) {
        this.rec_game_tags = list;
    }

    public void setRecommend_game_big_gif(String str) {
        this.recommend_game_big_gif = str;
    }

    public void setRecommend_game_big_pic(String str) {
        this.recommend_game_big_pic = str;
    }

    public void setResourceSize(long j4) {
        this.resourceSize = j4;
    }

    public void setResourceUrl(String str) {
        this.resourceUrl = str;
    }

    public void setRom_lowest_ver(String str) {
        this.rom_lowest_ver = str;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setSingle_game_mod_info(SingleGameModInfoBean singleGameModInfoBean) {
        this.single_game_mod_info = singleGameModInfoBean;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setSource_down_url(String str) {
        this.source_down_url = str;
    }

    public void setSource_lowest_ver(String str) {
        this.source_lowest_ver = str;
    }

    public void setSource_ver(String str) {
        this.source_ver = str;
    }

    public void setSource_ver_name(String str) {
        this.source_ver_name = str;
    }

    public void setSp_tag_info(TipNew tipNew) {
        this.sp_tag_info = tipNew;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTag_info(ArrayList<TipBean> arrayList) {
        this.tag_info = arrayList;
    }

    public void setTp_down_url(List<DownloadUrlBean> list) {
        this.tp_down_url = list;
    }

    public void setUnzip_size(String str) {
        this.unzip_size = str;
    }

    public void setVedio_cover_pic(String str) {
        this.vedio_cover_pic = str;
    }

    public void setVedio_url(String str) {
        this.vedio_url = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public void setViewType(int i2) {
        this.viewType = i2;
    }

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }

    public String toString() {
        return "CollectionBeanSub{game_id='" + this.game_id + "', crc_sign_id='" + this.crc_sign_id + "', game_name='" + this.game_name + "', cfg_ver_name='" + this.cfg_ver_name + "', cfg_ver='" + this.cfg_ver + "', cfg_down_url='" + this.cfg_down_url + "', screenshot_pic='" + this.screenshot_pic + "', ico_remote='" + this.ico_remote + "', package_name='" + this.package_name + "', down_url_remote='" + this.down_url_remote + "', info='" + this.info + "', size='" + this.size + "', actual_size=" + this.actual_size + ", ver_name='" + this.ver_name + "', ver='" + this.ver + "', plugin_num='" + this.plugin_num + "', is_world=" + this.is_world + ", is_network=" + this.is_network + ", source_ver_name='" + this.source_ver_name + "', source_ver='" + this.source_ver + "', source_down_url='" + this.source_down_url + "', plugin_screenshot=" + this.plugin_screenshot + ", forum_switch=" + this.forum_switch + ", forum_id=" + this.forum_id + ", world_shop=" + this.world_shop + ", world_area=" + this.world_area + ", is_fight=" + this.is_fight + ", fight_type=" + this.fight_type + ", fight_funv2='" + this.fight_funv2 + "', plugin_lowest_ver_name='" + this.plugin_lowest_ver_name + "', plugin_lowest_ver='" + this.plugin_lowest_ver + "', fight_screenshot_pic='" + this.fight_screenshot_pic + "', rom_lowest_ver='" + this.rom_lowest_ver + "', source_lowest_ver='" + this.source_lowest_ver + "', cfg_lowest_ver='" + this.cfg_lowest_ver + "', game_info_tpl_type='" + this.game_info_tpl_type + "', papa_explain='" + this.papa_explain + "', edit_recommend='" + this.edit_recommend + "', cdn_down_switch=" + this.cdn_down_switch + ", other_down_switch=" + this.other_down_switch + ", lock_sp=" + this.lock_sp + ", sp_tpl_two_position=" + this.sp_tpl_two_position + ", unzip_size='" + this.unzip_size + "', tag_info=" + this.tag_info + ", sp_tag_info=" + this.sp_tag_info + ", tp_down_url=" + this.tp_down_url + ", sync_memory='" + this.sync_memory + "', gift_package_switch=" + this.gift_package_switch + ", down_status=" + this.down_status + ", battle_upload_pic='" + this.battle_upload_pic + "', game_open_time='" + this.game_open_time + "', down_count=" + this.down_count + ", collection_game_describe='" + this.collection_game_describe + "', game_info_top_video_url='" + this.game_info_top_video_url + "', game_info_top_pic='" + this.game_info_top_pic + "', score='" + this.score + "', pay_tag_info=" + this.pay_tag_info + ", pic_position=" + this.pic_position + ", vedio_url='" + this.vedio_url + "', vedio_cover_pic='" + this.vedio_cover_pic + "', pic_info=" + this.pic_info + ", viewType=" + this.viewType + ", isAd=" + this.isAd + ", allow_start_up_ad='" + this.allow_start_up_ad + "', download_source_url='" + this.download_source_url + "', download_outside_url='" + this.download_outside_url + "', download_original_switch='" + this.download_original_switch + "', download_source_switch_v1='" + this.download_source_switch_v1 + "', download_source_switch_v2='" + this.download_source_switch_v2 + "'}";
    }

    public CollectionBeanSub(CollectionBeanSub collectionBeanSub) {
        this.plugin_num = "";
        this.game_id = collectionBeanSub.getGame_id();
        this.crc_sign_id = collectionBeanSub.getCrc_sign_id();
        this.game_name = collectionBeanSub.getGame_name();
        this.cfg_ver_name = collectionBeanSub.getCfg_ver_name();
        this.cfg_ver = collectionBeanSub.getCfg_ver();
        this.cfg_down_url = collectionBeanSub.getCfg_down_url();
        this.customer_info = collectionBeanSub.getCustomer_info();
        this.screenshot_pic = collectionBeanSub.getScreenshot_pic();
        this.ico_remote = collectionBeanSub.getIco_remote();
        String package_name = collectionBeanSub.getPackage_name();
        this.package_name = package_name;
        if (d2.h(package_name)) {
            this.package_name = collectionBeanSub.getPackageName();
        }
        this.down_url_remote = collectionBeanSub.getDown_url_remote();
        this.info = collectionBeanSub.getInfo();
        this.size = collectionBeanSub.getSize();
        this.ver_name = collectionBeanSub.getVer_name();
        this.ver = collectionBeanSub.getVer();
        this.plugin_num = collectionBeanSub.getPlugin_num();
        this.is_world = collectionBeanSub.getIs_world();
        this.is_network = collectionBeanSub.getIs_network();
        this.source_ver_name = collectionBeanSub.getSource_ver_name();
        this.source_ver = collectionBeanSub.getSource_ver();
        this.source_down_url = collectionBeanSub.getSource_down_url();
        this.plugin_screenshot = collectionBeanSub.getPlugin_screenshot();
        this.forum_switch = collectionBeanSub.getForum_switch();
        this.forum_id = collectionBeanSub.getForum_id();
        this.world_shop = collectionBeanSub.getWorld_shop();
        this.world_area = collectionBeanSub.getWorld_area();
        this.is_fight = collectionBeanSub.getIs_fight();
        this.fight_type = collectionBeanSub.getFight_type();
        this.fight_funv2 = collectionBeanSub.getFight_funv2();
        this.plugin_lowest_ver_name = collectionBeanSub.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = collectionBeanSub.getPlugin_lowest_ver();
        this.fight_screenshot_pic = collectionBeanSub.getFight_screenshot_pic();
        this.rom_lowest_ver = collectionBeanSub.getRom_lowest_ver();
        this.source_lowest_ver = collectionBeanSub.getSource_lowest_ver();
        this.cfg_lowest_ver = collectionBeanSub.getCfg_lowest_ver();
        this.game_info_tpl_type = collectionBeanSub.getGame_info_tpl_type();
        this.papa_explain = collectionBeanSub.getPapa_explain();
        this.edit_recommend = collectionBeanSub.getEdit_recommend();
        this.cdn_down_switch = collectionBeanSub.getCdn_down_switch();
        this.other_down_switch = collectionBeanSub.getOther_down_switch();
        this.lock_sp = collectionBeanSub.getLock_sp();
        this.unzip_size = collectionBeanSub.getUnzip_size();
        this.tag_info = collectionBeanSub.getTag_info();
        this.tp_down_url = collectionBeanSub.getTp_down_url();
        this.sync_memory = collectionBeanSub.getSync_memory();
        this.gift_package_switch = collectionBeanSub.getGift_package_switch();
        this.down_status = collectionBeanSub.getDown_status();
        this.game_open_time = collectionBeanSub.getGame_open_time();
        this.actual_size = collectionBeanSub.getActual_size();
        this.sp_tpl_two_position = collectionBeanSub.getSp_tpl_two_position();
        this.down_count = collectionBeanSub.getDown_count();
        this.sp_tag_info = collectionBeanSub.getSp_tag_info();
        this.game_info_top_pic = collectionBeanSub.getGame_info_top_pic();
        this.game_info_top_video_url = collectionBeanSub.getGame_info_top_video_url();
        this.collection_game_describe = collectionBeanSub.getCollection_game_describe();
        this.score = collectionBeanSub.getScore();
        this.pay_tag_info = collectionBeanSub.getPay_tag_info();
        if (this.pic_info == null) {
            this.pic_info = new ArrayList();
        }
        if (collectionBeanSub.getPic_info() != null) {
            this.pic_info.addAll(collectionBeanSub.getPic_info());
        }
        this.pic_position = collectionBeanSub.getPic_position();
        this.vedio_url = collectionBeanSub.getVedio_url();
        this.vedio_cover_pic = collectionBeanSub.getVedio_cover_pic();
        this.viewType = collectionBeanSub.getViewType();
        this.download_source_url = collectionBeanSub.getDownload_source_url();
        this.download_outside_url = collectionBeanSub.getDownload_outside_url();
        this.download_original_switch = collectionBeanSub.getDownload_original_switch();
        this.download_source_switch_v1 = collectionBeanSub.getDownload_source_switch_v1();
        this.download_source_switch_v2 = collectionBeanSub.getDownload_source_switch_v2();
        this.allow_start_up_ad = collectionBeanSub.getAllow_start_up_ad();
        this.min_an_compatible_ver = collectionBeanSub.getMin_an_compatible_ver();
        this.max_an_compatible_ver = collectionBeanSub.getMax_an_compatible_ver();
        this.mod_info = collectionBeanSub.getMod_info();
        this.index = collectionBeanSub.getIndex();
        this.single_game_mod_info = collectionBeanSub.getSingle_game_mod_info();
        this.game_dimension = collectionBeanSub.getGame_dimension();
        this.gif_ico_remote = collectionBeanSub.getGif_ico_remote();
        set_from(collectionBeanSub.get_from());
        set_from_type(collectionBeanSub.get_from_type());
        setReMarks(collectionBeanSub.getReMarks());
        setNodeId(collectionBeanSub.getNodeId());
        setRec_game_tags(collectionBeanSub.getRec_game_tags());
    }
}
