package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class FightSubGameInfoDataBean implements Serializable {
    private long actual_size;
    private String appSize;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String company_name;
    private String crc_sign_id;
    private int down_status;
    private String down_url_remote;
    private String edit_recommend;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private int forum_id;
    private int forum_switch;
    private String game_info_top_pic;
    private String game_info_tpl_type;
    private String game_name;
    private int gift_package_switch;
    private String ico_remote;
    private String info;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int lock_sp;
    private int other_down_switch;
    private String packageName;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private String pic_remote;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private int plugin_num;
    private int plugin_screenshot;
    private String rom_lowest_ver;
    private String screenshot_pic;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private String sync_memory;
    private ArrayList<TipBean> tag_info;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String ver;
    private String ver_name;
    private int world_area;
    private int world_shop;

    public long getActual_size() {
        return this.actual_size;
    }

    public String getAppSize() {
        return this.appSize;
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

    public String getCompany_name() {
        return this.company_name;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public DownloadTask getDownloadTask() {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setDown_status(this.down_status);
        downloadTask.setPackageName(this.packageName);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setPlugin_num(this.plugin_num + "");
        downloadTask.setRomType(this.plugin_num + "");
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        downloadTask.setShowSize(this.appSize);
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setIs_world(this.is_fight);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(this.forum_switch);
        downloadTask.setPlugin_area_val(this.forum_id);
        downloadTask.setWorld_shop(this.world_shop);
        downloadTask.setWorld_area(this.world_area);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_fun(this.fight_funv2);
        downloadTask.setFight_screenshot_pic(this.fight_screenshot_pic);
        downloadTask.setCdn_down_switch(this.cdn_down_switch);
        downloadTask.setOther_down_switch(this.other_down_switch);
        downloadTask.setTp_down_url(this.tp_down_url);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setDownloadTask(downloadTask);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setSp_tag_info(this.sp_tag_info);
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

    public int getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
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

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPapa_explain() {
        return this.papa_explain;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public int getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
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

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public void setActual_size(long j4) {
        this.actual_size = j4;
    }

    public void setAppSize(String str) {
        this.appSize = str;
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

    public void setCompany_name(String str) {
        this.company_name = str;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
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

    public void setForum_id(int i2) {
        this.forum_id = i2;
    }

    public void setForum_switch(int i2) {
        this.forum_switch = i2;
    }

    public void setGame_info_top_pic(String str) {
        this.game_info_top_pic = str;
    }

    public void setGame_info_tpl_type(String str) {
        this.game_info_tpl_type = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGift_package_switch(int i2) {
        this.gift_package_switch = i2;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
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

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPapa_explain(String str) {
        this.papa_explain = str;
    }

    public void setPay_tag_info(PayTagInfo payTagInfo) {
        this.pay_tag_info = payTagInfo;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setPlugin_lowest_ver(String str) {
        this.plugin_lowest_ver = str;
    }

    public void setPlugin_lowest_ver_name(String str) {
        this.plugin_lowest_ver_name = str;
    }

    public void setPlugin_num(int i2) {
        this.plugin_num = i2;
    }

    public void setPlugin_screenshot(int i2) {
        this.plugin_screenshot = i2;
    }

    public void setRom_lowest_ver(String str) {
        this.rom_lowest_ver = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
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

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }
}
