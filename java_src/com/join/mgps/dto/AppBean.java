package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.d2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AppBean extends DownloadPointBase implements Serializable {
    private String allow_start_up_ad;
    private String appSize;
    private String bespeak_count;
    private int bespeak_switch;
    private long bespeak_time;
    private int butnShowType;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String company_name;
    private String crc_sign_id;
    private int down_count;
    private int down_status;
    private int down_type;
    private String down_url_remote;
    @JsonIgnore
    private DownloadTask downloadTask;
    private int downloadType;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private String fight_funv2;
    private int fight_type;
    private long forum_id;
    private int forum_switch;
    private String game_id;
    private String game_info_top_pic;
    private String game_info_tpl_type;
    private String game_name;
    private String game_open_time;
    private String gif_ico_remote;
    private int gift_package_switch;
    private String ico_remote;
    private String info;
    private int is_bespeak;
    private int is_boot_commented;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private String plugin_num;
    private int plugin_screenshot;
    private String residual_time;
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
    private String ver;
    private String ver_name;
    private int world_area;
    private int world_shop;

    public AppBean() {
        this.plugin_num = "";
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getBespeak_count() {
        return this.bespeak_count;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public long getBespeak_time() {
        return this.bespeak_time;
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
        return d2.h(this.crc_sign_id) ? this.game_id : this.crc_sign_id;
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

    public int getDown_type() {
        return this.down_type;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
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

    @JsonIgnore
    public DownloadTask getDownloadtaskDown() {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setPackageName(this.packageName);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        downloadTask.setCrc_link_type_val(this.crc_sign_id);
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        if (d2.h(this.size)) {
            downloadTask.setShowSize(this.appSize);
        } else {
            downloadTask.setShowSize(this.size);
        }
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(this.downloadType);
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
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i2);
        }
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        if (d2.i(this.cfg_down_url)) {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
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
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
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

    public String getGame_id() {
        return this.game_id;
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

    public String getInfo() {
        return this.info;
    }

    @JsonIgnore
    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setTpl_type(this.game_info_tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_sign_id);
        intentDateBean.setJump_type(this.sp_tpl_two_position);
        IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
        intentToDetialBean.f(this.crc_sign_id);
        intentToDetialBean.g(this.game_name);
        intentToDetialBean.i(this.ico_remote);
        intentToDetialBean.h(0);
        intentDateBean.setExtBean(new ExtBean(get_from_type()));
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public int getIs_bespeak() {
        return this.is_bespeak;
    }

    public int getIs_boot_commented() {
        return this.is_boot_commented;
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

    public String getPapa_explain() {
        return this.papa_explain;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
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

    public String getResidual_time() {
        return this.residual_time;
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

    public void setAllow_start_up_ad(String str) {
        this.allow_start_up_ad = str;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setBespeak_count(String str) {
        this.bespeak_count = str;
    }

    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
    }

    public void setBespeak_time(long j4) {
        this.bespeak_time = j4;
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

    public void setDown_count(int i2) {
        this.down_count = i2;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDown_type(int i2) {
        this.down_type = i2;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
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

    public void setFight_type(int i2) {
        this.fight_type = i2;
    }

    public void setForum_id(long j4) {
        this.forum_id = j4;
    }

    public void setForum_switch(int i2) {
        this.forum_switch = i2;
    }

    public void setGame_id(String str) {
        this.game_id = str;
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

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIs_bespeak(int i2) {
        this.is_bespeak = i2;
    }

    public void setIs_boot_commented(int i2) {
        this.is_boot_commented = i2;
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

    public void setPapa_explain(String str) {
        this.papa_explain = str;
    }

    public void setPay_tag_info(PayTagInfo payTagInfo) {
        this.pay_tag_info = payTagInfo;
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

    public void setResidual_time(String str) {
        this.residual_time = str;
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

    public AppBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i2, int i4, String str14, int i5, int i6, String str15, String str16, String str17, int i7, int i8, long j4, int i9, int i10, int i11, int i12, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, int i13, int i14, String str26, String str27, String str28, String str29, int i15, int i16) {
        this.plugin_num = "";
        this.crc_sign_id = str;
        this.game_name = str2;
        this.ico_remote = str3;
        this.packageName = str4;
        this.appSize = str5;
        this.down_url_remote = str6;
        this.info = str7;
        this.ver = str8;
        this.ver_name = str9;
        this.cfg_down_url = str10;
        this.cfg_ver = str11;
        this.cfg_ver_name = str12;
        this.screenshot_pic = str13;
        this.butnShowType = i2;
        this.downloadType = i4;
        this.plugin_num = str14;
        this.is_world = i5;
        this.is_network = i6;
        this.source_ver_name = str15;
        this.source_ver = str16;
        this.source_down_url = str17;
        this.plugin_screenshot = i7;
        this.forum_switch = i8;
        this.forum_id = j4;
        this.world_shop = i9;
        this.world_area = i10;
        this.is_fight = i11;
        this.fight_type = i12;
        this.fight_funv2 = str18;
        this.plugin_lowest_ver_name = str19;
        this.plugin_lowest_ver = str20;
        this.rom_lowest_ver = str21;
        this.source_lowest_ver = str22;
        this.cfg_lowest_ver = str23;
        this.game_info_tpl_type = str24;
        this.company_name = str25;
        this.cdn_down_switch = i13;
        this.other_down_switch = i14;
        this.game_info_top_pic = str26;
        this.papa_explain = str27;
        this.edit_recommend = str28;
        this.sync_memory = str29;
        this.gift_package_switch = i15;
        this.down_status = i16;
    }
}
