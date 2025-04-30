package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
/* loaded from: classes4.dex */
public class TodayWufunEverday extends CollectionBeanSub {
    private int bespeak_switch;
    private String discover_pic;
    private int down_status;
    private DownloadTask downloadTask;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String game_down;
    private String game_ico;
    private String game_id;
    private String game_name;
    private int game_open_switch;
    private long game_open_time;
    private int game_plugin_num;
    private ModInfoBean mod_info;
    PayTagInfo pay_tag_info;
    private SingleGameModInfoBean single_game_mod_info;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private String title;
    private String tpl_type;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public String getDiscover_pic() {
        return this.discover_pic;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getDown_status() {
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i2;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getGame_down() {
        return this.game_down;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_id() {
        return this.game_id;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public int getGame_plugin_num() {
        return this.game_plugin_num;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
    }

    public void setDiscover_pic(String str) {
        this.discover_pic = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_original_switch(String str) {
        this.download_original_switch = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_outside_url(String str) {
        this.download_outside_url = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_switch_v1(String str) {
        this.download_source_switch_v1 = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_switch_v2(String str) {
        this.download_source_switch_v2 = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_url(String str) {
        this.download_source_url = str;
    }

    public void setGame_down(String str) {
        this.game_down = str;
    }

    public void setGame_ico(String str) {
        this.game_ico = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_id(String str) {
        this.game_id = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_open_switch(int i2) {
        this.game_open_switch = i2;
    }

    public void setGame_plugin_num(int i2) {
        this.game_plugin_num = i2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setMod_info(ModInfoBean modInfoBean) {
        this.mod_info = modInfoBean;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setPay_tag_info(PayTagInfo payTagInfo) {
        this.pay_tag_info = payTagInfo;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSingle_game_mod_info(SingleGameModInfoBean singleGameModInfoBean) {
        this.single_game_mod_info = singleGameModInfoBean;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSp_tag_info(TipNew tipNew) {
        this.sp_tag_info = tipNew;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
