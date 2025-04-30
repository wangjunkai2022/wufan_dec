package com.join.mgps.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
import com.join.mgps.dto.AppBean;
/* loaded from: classes.dex */
public class AppBeanTable {
    @DatabaseField(columnName = "appbeanmain", foreign = true, foreignAutoRefresh = true)
    private AppBeanMainTable appBeanMainTable;
    @DatabaseField
    private String appSize;
    @DatabaseField
    private int butnShowType;
    @DatabaseField
    private int cdn_down_switch;
    @DatabaseField
    private String cfg_down_url;
    @DatabaseField
    private String cfg_lowest_ver;
    @DatabaseField
    private String cfg_ver;
    @DatabaseField
    private String cfg_ver_name;
    @DatabaseField
    private String company_name;
    @DatabaseField
    private String crc_sign_id;
    @DatabaseField
    private int down_status;
    @DatabaseField
    private String down_url_remote;
    @DatabaseField
    private int downloadType;
    @DatabaseField
    private String edit_recommend;
    @DatabaseField
    private String fight_fun;
    @DatabaseField
    private int fight_type;
    @DatabaseField
    private long forum_id;
    @DatabaseField
    private int forum_switch;
    @DatabaseField
    private String game_info_top_pic;
    @DatabaseField
    private String game_info_tpl_type;
    @DatabaseField
    private String game_name;
    @DatabaseField
    private int gift_package_switch;
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
    private int lock_sp;
    @DatabaseField
    private int other_down_switch;
    @DatabaseField
    private String packageName;
    @DatabaseField
    private String papa_explain;
    @DatabaseField
    private String plugin_lowest_ver;
    @DatabaseField
    private String plugin_lowest_ver_name;
    @DatabaseField
    private String plugin_num;
    @DatabaseField
    private int plugin_screenshot;
    @DatabaseField
    private String rom_lowest_ver;
    @DatabaseField
    private String screenshot_pic;
    @DatabaseField
    private String source_down_url;
    @DatabaseField
    private String source_lowest_ver;
    @DatabaseField
    private String source_ver;
    @DatabaseField
    private String source_ver_name;
    @DatabaseField
    private String sync_memory;
    @ForeignCollectionField(eager = false)
    ForeignCollection<TipBeanTable> tag_info;
    @ForeignCollectionField(eager = false)
    ForeignCollection<DownloadUrlTable> tp_down_url;
    private String unzip_size;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_name;
    @DatabaseField
    private int world_area;
    @DatabaseField
    private int world_shop;

    public AppBeanTable() {
        this.plugin_num = "";
    }

    public AppBean getAppBean() {
        return new AppBean(this.crc_sign_id, this.game_name, this.ico_remote, this.packageName, this.appSize, this.down_url_remote, this.info, this.ver, this.ver_name, this.cfg_down_url, this.cfg_ver, this.cfg_ver_name, this.screenshot_pic, this.butnShowType, this.downloadType, this.plugin_num, this.is_world, this.is_network, this.source_ver_name, this.source_ver, this.source_down_url, this.plugin_screenshot, this.forum_switch, this.forum_id, this.world_shop, this.world_area, this.is_fight, this.fight_type, this.fight_fun, this.plugin_lowest_ver_name, this.plugin_lowest_ver, this.rom_lowest_ver, this.source_lowest_ver, this.cfg_lowest_ver, this.game_info_tpl_type, this.company_name, this.cdn_down_switch, this.other_down_switch, this.game_info_top_pic, this.papa_explain, this.edit_recommend, this.sync_memory, this.gift_package_switch, this.down_status);
    }

    public AppBeanMainTable getAppBeanMainTable() {
        return this.appBeanMainTable;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public int getButnShowType() {
        return this.butnShowType;
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

    public int getDownloadType() {
        return this.downloadType;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public String getFight_fun() {
        return this.fight_fun;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public long getForum_id() {
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

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPapa_explain() {
        return this.papa_explain;
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

    public String getSync_memory() {
        return this.sync_memory;
    }

    public ForeignCollection<TipBeanTable> getTag_info() {
        return this.tag_info;
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

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public void setAppBeanMainTable(AppBeanMainTable appBeanMainTable) {
        this.appBeanMainTable = appBeanMainTable;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setButnShowType(int i2) {
        this.butnShowType = i2;
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

    public void setDownloadType(int i2) {
        this.downloadType = i2;
    }

    public void setEdit_recommend(String str) {
        this.edit_recommend = str;
    }

    public void setFight_fun(String str) {
        this.fight_fun = str;
    }

    public void setFight_type(int i2) {
        this.fight_type = i2;
    }

    public void setForum_id(long j4) {
        this.forum_id = j4;
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

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPapa_explain(String str) {
        this.papa_explain = str;
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

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTag_info(ForeignCollection<TipBeanTable> foreignCollection) {
        this.tag_info = foreignCollection;
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

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }

    public AppBeanTable(AppBean appBean) {
        this.plugin_num = "";
        if (appBean == null) {
            return;
        }
        this.crc_sign_id = appBean.getCrc_sign_id();
        this.game_name = appBean.getGame_name();
        this.ico_remote = appBean.getIco_remote();
        this.packageName = appBean.getPackageName();
        this.appSize = appBean.getAppSize();
        this.down_url_remote = appBean.getDown_url_remote();
        this.info = appBean.getInfo();
        this.ver = appBean.getVer();
        this.ver_name = appBean.getVer_name();
        this.cfg_down_url = appBean.getCfg_down_url();
        this.cfg_ver = appBean.getCfg_ver();
        this.cfg_ver_name = appBean.getCfg_ver_name();
        this.screenshot_pic = appBean.getScreenshot_pic();
        this.butnShowType = appBean.getButnShowType();
        this.downloadType = appBean.getDownloadType();
        this.plugin_num = appBean.getPlugin_num();
        this.is_world = appBean.getIs_world();
        this.is_network = appBean.getIs_network();
        this.source_ver_name = appBean.getSource_ver_name();
        this.source_ver = appBean.getSource_ver();
        this.source_down_url = appBean.getSource_down_url();
        this.plugin_screenshot = appBean.getPlugin_screenshot();
        this.forum_switch = appBean.getForum_switch();
        this.forum_id = appBean.getForum_id();
        this.world_shop = appBean.getWorld_shop();
        this.world_area = appBean.getWorld_area();
        this.is_fight = appBean.getIs_fight();
        this.fight_type = appBean.getFight_type();
        this.fight_fun = appBean.getFight_funv2();
        this.plugin_lowest_ver_name = appBean.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = appBean.getPlugin_lowest_ver();
        this.rom_lowest_ver = appBean.getRom_lowest_ver();
        this.source_lowest_ver = appBean.getSource_lowest_ver();
        this.cfg_lowest_ver = appBean.getCfg_lowest_ver();
        this.game_info_tpl_type = appBean.getGame_info_tpl_type();
        this.company_name = appBean.getCompany_name();
        this.cdn_down_switch = appBean.getCdn_down_switch();
        this.other_down_switch = appBean.getOther_down_switch();
        this.game_info_top_pic = appBean.getGame_info_top_pic();
        this.papa_explain = appBean.getPapa_explain();
        this.edit_recommend = appBean.getEdit_recommend();
        this.sync_memory = appBean.getSync_memory();
        this.gift_package_switch = appBean.getGift_package_switch();
        this.down_status = appBean.getDown_status();
    }
}
