package com.join.mgps.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
/* loaded from: classes.dex */
public class WarMatchAndLocalTable {
    @DatabaseField
    private String appSize;
    @DatabaseField
    private int cdn_down_switch;
    @DatabaseField
    private String cfg_down_url;
    @DatabaseField
    private String cfg_ver;
    @DatabaseField
    private String cfg_ver_name;
    @DatabaseField
    private String crc_link_type_val;
    @DatabaseField
    int down_status;
    @DatabaseField
    private String down_url_remote;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    @DatabaseField
    private String fight_fun;
    @DatabaseField
    private String fight_screenshot_pic;
    @DatabaseField
    private int fight_type;
    @DatabaseField
    private int forum_id;
    @DatabaseField
    private int forum_switch;
    @DatabaseField
    String game_info_tpl_type;
    @DatabaseField
    private String game_name;
    @DatabaseField
    int gift_package_switch;
    @DatabaseField
    private String ico_remote;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String info;
    @DatabaseField
    private int is_fight;
    @DatabaseField
    private int is_network;
    @DatabaseField
    private int is_world;
    @DatabaseField
    private int lock_sp;
    @DatabaseField
    String main_sub_title;
    @DatabaseField
    String main_title;
    @DatabaseField
    private int other_down_switch;
    @DatabaseField
    private String packageName;
    @DatabaseField
    int pay_game_amount;
    @DatabaseField
    String pic_remote;
    @DatabaseField
    private String plugin_lowest_ver;
    @DatabaseField
    private String plugin_lowest_ver_name;
    @DatabaseField
    private int plugin_num;
    @DatabaseField
    private int plugin_screenshot;
    @DatabaseField
    private String screenshot_pic;
    @DatabaseField
    private String showName;
    @DatabaseField
    private String source_down_url;
    @DatabaseField
    private String source_ver;
    @DatabaseField
    private String source_ver_name;
    @DatabaseField
    String sync_memory;
    @DatabaseField
    private String tips;
    @ForeignCollectionField(eager = false)
    ForeignCollection<DownloadUrlTable> tp_down_url;
    @DatabaseField
    private String unzip_size;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_name;
    @DatabaseField
    private int warType;
    @DatabaseField
    private int world_area;
    @DatabaseField
    private int world_shop;

    public WarMatchAndLocalTable() {
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

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getDown_status() {
        return this.down_status;
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

    public String getFight_fun() {
        return this.fight_fun;
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

    public int getId() {
        return this.id;
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

    public String getMain_sub_title() {
        return this.main_sub_title;
    }

    public String getMain_title() {
        return this.main_title;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
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

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public String getTips() {
        return this.tips;
    }

    public ForeignCollection<DownloadUrlTable> getTp_down_url() {
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

    public int getWarType() {
        return this.warType;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
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

    public void setCfg_ver(String str) {
        this.cfg_ver = str;
    }

    public void setCfg_ver_name(String str) {
        this.cfg_ver_name = str;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
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

    public void setFight_fun(String str) {
        this.fight_fun = str;
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

    public void setId(int i2) {
        this.id = i2;
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

    public void setMain_sub_title(String str) {
        this.main_sub_title = str;
    }

    public void setMain_title(String str) {
        this.main_title = str;
    }

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPay_game_amount(int i2) {
        this.pay_game_amount = i2;
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

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setShowName(String str) {
        this.showName = str;
    }

    public void setSource_down_url(String str) {
        this.source_down_url = str;
    }

    public void setSource_ver(String str) {
        this.source_ver = str;
    }

    public void setSource_ver_name(String str) {
        this.source_ver_name = str;
    }

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public void setTp_down_url(ForeignCollection<DownloadUrlTable> foreignCollection) {
        this.tp_down_url = foreignCollection;
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

    public void setWarType(int i2) {
        this.warType = i2;
    }

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }

    public WarMatchAndLocalTable(WarMatchAndLocalTable warMatchAndLocalTable) {
        if (warMatchAndLocalTable == null) {
            return;
        }
        this.id = warMatchAndLocalTable.getId();
        this.crc_link_type_val = warMatchAndLocalTable.getCrc_link_type_val();
        this.showName = warMatchAndLocalTable.getShowName();
        this.fight_screenshot_pic = warMatchAndLocalTable.getFight_screenshot_pic();
        this.warType = warMatchAndLocalTable.getWarType();
        this.game_name = warMatchAndLocalTable.getGame_name();
        this.ico_remote = warMatchAndLocalTable.getIco_remote();
        this.packageName = warMatchAndLocalTable.getPackageName();
        this.appSize = warMatchAndLocalTable.getAppSize();
        this.tips = warMatchAndLocalTable.getTips();
        this.down_url_remote = warMatchAndLocalTable.getDown_url_remote();
        this.info = warMatchAndLocalTable.getInfo();
        this.ver = warMatchAndLocalTable.getVer();
        this.ver_name = warMatchAndLocalTable.getVer_name();
        this.plugin_num = warMatchAndLocalTable.getPlugin_num();
        this.is_world = warMatchAndLocalTable.getIs_world();
        this.is_network = warMatchAndLocalTable.getIs_network();
        this.source_ver_name = warMatchAndLocalTable.getSource_ver_name();
        this.source_ver = warMatchAndLocalTable.getSource_ver();
        this.source_down_url = warMatchAndLocalTable.getSource_down_url();
        this.plugin_screenshot = warMatchAndLocalTable.getPlugin_screenshot();
        this.forum_switch = warMatchAndLocalTable.getForum_switch();
        this.forum_id = warMatchAndLocalTable.getForum_id();
        this.world_shop = warMatchAndLocalTable.getWorld_shop();
        this.world_area = warMatchAndLocalTable.getWorld_area();
        this.is_fight = warMatchAndLocalTable.getIs_fight();
        this.fight_type = warMatchAndLocalTable.getFight_type();
        this.fight_fun = warMatchAndLocalTable.getFight_fun();
        this.plugin_lowest_ver_name = warMatchAndLocalTable.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = warMatchAndLocalTable.getPlugin_lowest_ver();
        this.cfg_ver_name = warMatchAndLocalTable.getCfg_ver_name();
        this.cfg_ver = warMatchAndLocalTable.getCfg_ver();
        this.cfg_down_url = warMatchAndLocalTable.getCfg_down_url();
        this.screenshot_pic = warMatchAndLocalTable.getScreenshot_pic();
        this.other_down_switch = warMatchAndLocalTable.getOther_down_switch();
        this.cdn_down_switch = warMatchAndLocalTable.getCdn_down_switch();
        this.game_info_tpl_type = warMatchAndLocalTable.getGame_info_tpl_type();
        this.pic_remote = warMatchAndLocalTable.getPic_remote();
        this.sync_memory = warMatchAndLocalTable.getSync_memory();
        this.gift_package_switch = this.gift_package_switch;
        this.pay_game_amount = this.pay_game_amount;
        this.download_source_url = warMatchAndLocalTable.getDownload_source_url();
        this.download_outside_url = warMatchAndLocalTable.getDownload_outside_url();
        this.download_original_switch = warMatchAndLocalTable.getDownload_original_switch();
    }
}
