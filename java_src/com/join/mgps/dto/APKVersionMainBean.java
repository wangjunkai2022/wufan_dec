package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class APKVersionMainBean implements Serializable {

    /* renamed from: app  reason: collision with root package name */
    private List<ApkVersionbean> f48144app;
    private List<HomeViewSwich> cfg;
    private DownloadSpeedupCfgBean download_speedup_cfg;
    private SingleGameAdCfgBean mod_enhance_ad_cfg;
    private SingleGameAdCfgBean mod_normal_ad_cfg;
    private List<GameTimeLevel> play_game_time_lv_cfg;
    private List<ApkVersionbean> plugin;
    private PspGameAdCfgBean psp_game_ad_cfg;
    private PublicVideoCfgBean public_video_cfg;
    private List<SimulatorRunAdTextCfgBean> simulator_run_ad_text_cfg;
    private SingleGameAdCfgBean single_game_ad_cfg;
    private SingleGameRunAdTextCfgBean single_game_run_ad_text_cfg;

    public APKVersionMainBean() {
    }

    public List<ApkVersionbean> getApp() {
        return this.f48144app;
    }

    public List<HomeViewSwich> getCfg() {
        return this.cfg;
    }

    public DownloadSpeedupCfgBean getDownload_speedup_cfg() {
        return this.download_speedup_cfg;
    }

    public SingleGameAdCfgBean getMod_enhance_ad_cfg() {
        return this.mod_enhance_ad_cfg;
    }

    public SingleGameAdCfgBean getMod_normal_ad_cfg() {
        return this.mod_normal_ad_cfg;
    }

    public List<GameTimeLevel> getPlay_game_time_lv_cfg() {
        return this.play_game_time_lv_cfg;
    }

    public List<ApkVersionbean> getPlugin() {
        return this.plugin;
    }

    public PspGameAdCfgBean getPsp_game_ad_cfg() {
        return this.psp_game_ad_cfg;
    }

    public PublicVideoCfgBean getPublic_video_cfg() {
        return this.public_video_cfg;
    }

    public List<SimulatorRunAdTextCfgBean> getSimulator_run_ad_text_cfg() {
        return this.simulator_run_ad_text_cfg;
    }

    public SingleGameAdCfgBean getSingle_game_ad_cfg() {
        return this.single_game_ad_cfg;
    }

    public SingleGameRunAdTextCfgBean getSingle_game_run_ad_text_cfg() {
        return this.single_game_run_ad_text_cfg;
    }

    public void setApp(List<ApkVersionbean> list) {
        this.f48144app = list;
    }

    public void setCfg(List<HomeViewSwich> list) {
        this.cfg = list;
    }

    public void setDownload_speedup_cfg(DownloadSpeedupCfgBean downloadSpeedupCfgBean) {
        this.download_speedup_cfg = downloadSpeedupCfgBean;
    }

    public void setMod_enhance_ad_cfg(SingleGameAdCfgBean singleGameAdCfgBean) {
        this.mod_enhance_ad_cfg = singleGameAdCfgBean;
    }

    public void setMod_normal_ad_cfg(SingleGameAdCfgBean singleGameAdCfgBean) {
        this.mod_normal_ad_cfg = singleGameAdCfgBean;
    }

    public void setPlay_game_time_lv_cfg(List<GameTimeLevel> list) {
        this.play_game_time_lv_cfg = list;
    }

    public void setPlugin(List<ApkVersionbean> list) {
        this.plugin = list;
    }

    public void setPsp_game_ad_cfg(PspGameAdCfgBean pspGameAdCfgBean) {
        this.psp_game_ad_cfg = pspGameAdCfgBean;
    }

    public void setPublic_video_cfg(PublicVideoCfgBean publicVideoCfgBean) {
        this.public_video_cfg = publicVideoCfgBean;
    }

    public void setSimulator_run_ad_text_cfg(List<SimulatorRunAdTextCfgBean> list) {
        this.simulator_run_ad_text_cfg = list;
    }

    public void setSingle_game_ad_cfg(SingleGameAdCfgBean singleGameAdCfgBean) {
        this.single_game_ad_cfg = singleGameAdCfgBean;
    }

    public void setSingle_game_run_ad_text_cfg(SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean) {
        this.single_game_run_ad_text_cfg = singleGameRunAdTextCfgBean;
    }

    public APKVersionMainBean(List<ApkVersionbean> list, List<ApkVersionbean> list2) {
        this.f48144app = list;
        this.plugin = list2;
    }
}
