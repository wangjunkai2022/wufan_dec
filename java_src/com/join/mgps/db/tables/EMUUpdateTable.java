package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.CheckAppVersionBean;
import com.join.mgps.dto.CheckGameVersionResponseData;
/* loaded from: classes.dex */
public class EMUUpdateTable {
    @DatabaseField
    private String cfg_down_url;
    @DatabaseField
    private String cfg_lowest_ver;
    @DatabaseField
    private String cfg_ver;
    @DatabaseField
    private String cfg_ver_name;
    @DatabaseField
    private String crc_sign_id;
    @DatabaseField
    private int down_type;
    @DatabaseField
    private String down_url_remote;
    @DatabaseField
    private String fight_fun;
    @DatabaseField
    private int fight_type;
    @DatabaseField
    private long forum_id;
    @DatabaseField
    private int forum_switch;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int is_fight;
    @DatabaseField
    private int is_network;
    @DatabaseField
    private int is_world;
    @DatabaseField
    private int lock_sp;
    @DatabaseField
    private String plugin_lowest_ver;
    @DatabaseField
    private String plugin_lowest_ver_name;
    @DatabaseField
    private int plugin_screenshot;
    @DatabaseField
    private String remark;
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
    private String sync_memory;
    @DatabaseField
    private String ver;
    @DatabaseField
    private String ver_name;
    @DatabaseField
    private int world_area;
    @DatabaseField
    private int world_shop;

    public EMUUpdateTable() {
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

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public int getDown_type() {
        return this.down_type;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
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

    public int getId() {
        return this.id;
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

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getRemark() {
        return this.remark;
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

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setDown_type(int i2) {
        this.down_type = i2;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
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

    public void setId(int i2) {
        this.id = i2;
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

    public void setPlugin_lowest_ver(String str) {
        this.plugin_lowest_ver = str;
    }

    public void setPlugin_lowest_ver_name(String str) {
        this.plugin_lowest_ver_name = str;
    }

    public void setPlugin_screenshot(int i2) {
        this.plugin_screenshot = i2;
    }

    public void setRemark(String str) {
        this.remark = str;
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

    public EMUUpdateTable(CheckAppVersionBean checkAppVersionBean) {
        this.ver_name = checkAppVersionBean.getVer_name();
        this.ver = checkAppVersionBean.getVer();
        this.plugin_lowest_ver_name = checkAppVersionBean.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = checkAppVersionBean.getPlugin_lowest_ver();
        this.crc_sign_id = checkAppVersionBean.getCrc_sign_id();
        this.down_url_remote = checkAppVersionBean.getDown_url_remote();
        this.cfg_ver_name = checkAppVersionBean.getCfg_ver_name();
        this.cfg_ver = checkAppVersionBean.getCfg_ver();
        this.cfg_down_url = checkAppVersionBean.getCfg_down_url();
        this.source_ver_name = checkAppVersionBean.getSource_ver_name();
        this.source_ver = checkAppVersionBean.getSource_ver();
        this.source_down_url = checkAppVersionBean.getSource_down_url();
        this.screenshot_pic = checkAppVersionBean.getScreenshot_pic();
        this.rom_lowest_ver = checkAppVersionBean.getRom_lowest_ver();
        this.source_lowest_ver = checkAppVersionBean.getSource_lowest_ver();
        this.cfg_lowest_ver = checkAppVersionBean.getCfg_lowest_ver();
        this.is_world = checkAppVersionBean.getIs_world();
        this.is_network = checkAppVersionBean.getIs_network();
        this.plugin_screenshot = checkAppVersionBean.getPlugin_screenshot();
        this.forum_switch = checkAppVersionBean.getForum_switch();
        this.forum_id = checkAppVersionBean.getForum_id();
        this.world_shop = checkAppVersionBean.getWorld_shop();
        this.world_area = checkAppVersionBean.getWorld_area();
        this.is_fight = checkAppVersionBean.getIs_fight();
        this.fight_type = checkAppVersionBean.getFight_type();
        this.fight_fun = checkAppVersionBean.getFight_funv2();
        this.lock_sp = checkAppVersionBean.getLock_sp();
        this.sync_memory = checkAppVersionBean.getSync_memory();
        this.down_type = checkAppVersionBean.getDown_type();
    }

    public EMUUpdateTable(CheckGameVersionResponseData.VersionInfo versionInfo) {
        this.ver_name = versionInfo.getVer_name();
        this.ver = versionInfo.getVer();
        this.plugin_lowest_ver_name = versionInfo.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = versionInfo.getPlugin_lowest_ver();
        this.crc_sign_id = versionInfo.getCrc_sign_id();
        this.down_url_remote = versionInfo.getDown_url_remote();
        this.cfg_ver_name = versionInfo.getCfg_ver_name();
        this.cfg_ver = versionInfo.getCfg_ver();
        this.cfg_down_url = versionInfo.getCfg_down_url();
        this.source_ver_name = versionInfo.getSource_ver_name();
        this.source_ver = versionInfo.getSource_ver();
        this.source_down_url = versionInfo.getSource_down_url();
        this.screenshot_pic = versionInfo.getScreenshot_pic();
        this.rom_lowest_ver = versionInfo.getRom_lowest_ver();
        this.source_lowest_ver = versionInfo.getSource_lowest_ver();
        this.cfg_lowest_ver = versionInfo.getCfg_lowest_ver();
        this.is_world = versionInfo.getIs_world();
        this.is_network = versionInfo.getIs_network();
        this.plugin_screenshot = versionInfo.getPlugin_screenshot();
        this.forum_switch = versionInfo.getForum_switch();
        this.forum_id = versionInfo.getForum_id();
        this.world_shop = versionInfo.getWorld_shop();
        this.world_area = versionInfo.getWorld_area();
        this.is_fight = versionInfo.getIs_fight();
        this.fight_type = versionInfo.getFight_type();
        this.fight_fun = versionInfo.getFight_funv2();
        this.lock_sp = versionInfo.getLock_sp();
        this.sync_memory = versionInfo.getSync_memory();
        this.down_type = versionInfo.getDown_type();
    }

    public EMUUpdateTable(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, int i4, int i5, int i6, int i7, long j4, int i8, int i9, int i10, int i11, String str17) {
        this.id = i2;
        this.ver_name = str;
        this.ver = str2;
        this.plugin_lowest_ver_name = str3;
        this.plugin_lowest_ver = str4;
        this.crc_sign_id = str5;
        this.down_url_remote = str6;
        this.cfg_ver_name = str7;
        this.cfg_ver = str8;
        this.cfg_down_url = str9;
        this.source_ver_name = str10;
        this.source_ver = str11;
        this.source_down_url = str12;
        this.screenshot_pic = str13;
        this.rom_lowest_ver = str14;
        this.source_lowest_ver = str15;
        this.cfg_lowest_ver = str16;
        this.is_world = i4;
        this.is_network = i5;
        this.plugin_screenshot = i6;
        this.forum_id = j4;
        this.forum_switch = i7;
        this.world_shop = i8;
        this.world_area = i9;
        this.is_fight = i10;
        this.fight_type = i11;
        this.fight_fun = str17;
    }
}
