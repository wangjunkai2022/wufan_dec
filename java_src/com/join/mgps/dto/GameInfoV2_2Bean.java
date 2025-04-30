package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameInfoV2_2Bean extends PaPaBean implements Serializable {
    private String appSize;
    private int bespeak_switch;
    private String crc_sign_id;
    private int down_count;
    private int down_status;
    private String down_url_remote;
    private DownloadTask downloadTask;
    private String formula_weight;
    private String game_info_tpl_type;
    private String game_name;
    private String game_open_time;
    private String ico_remote;
    private String info;
    private String packageName;
    private String plugin_num = "";
    private String screenshot_pic;
    private String size;
    private int sp_tpl_two_position;
    private List<GameTagInfoV2_2Bean> tag_info;
    private String times;
    private String unzip_size;
    private String update_times;
    private String ver;
    private String ver_name;

    public String getAppSize() {
        return this.appSize;
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

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public String getFormula_weight() {
        return this.formula_weight;
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

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

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
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getSize() {
        return this.size;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public List<GameTagInfoV2_2Bean> getTag_info() {
        return this.tag_info;
    }

    public String getTimes() {
        return this.times;
    }

    public String getUnzip_size() {
        return this.unzip_size;
    }

    public String getUpdate_times() {
        return this.update_times;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public void setAppSize(String str) {
        this.appSize = str;
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

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setFormula_weight(String str) {
        this.formula_weight = str;
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

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPlugin_num(String str) {
        this.plugin_num = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setTag_info(List<GameTagInfoV2_2Bean> list) {
        this.tag_info = list;
    }

    public void setTimes(String str) {
        this.times = str;
    }

    public void setUnzip_size(String str) {
        this.unzip_size = str;
    }

    public void setUpdate_times(String str) {
        this.update_times = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public String toString() {
        return "GameInfoV2_2Bean{crc_sign_id='" + this.crc_sign_id + "', game_name='" + this.game_name + "', screenshot_pic='" + this.screenshot_pic + "', ico_remote='" + this.ico_remote + "', packageName='" + this.packageName + "', formula_weight='" + this.formula_weight + "', down_url_remote='" + this.down_url_remote + "', down_status=" + this.down_status + ", info='" + this.info + "', plugin_num='" + this.plugin_num + "', game_info_tpl_type='" + this.game_info_tpl_type + "', unzip_size='" + this.unzip_size + "', times='" + this.times + "', appSize='" + this.appSize + "', update_times='" + this.update_times + "', sp_tpl_two_position=" + this.sp_tpl_two_position + ", game_open_time='" + this.game_open_time + "', ver='" + this.ver + "', ver_name='" + this.ver_name + "', down_count=" + this.down_count + ", tag_info=" + this.tag_info + ", downloadTask=" + this.downloadTask + '}';
    }
}
