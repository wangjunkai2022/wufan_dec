package com.join.mgps.dto;

import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ModGameDetailBean implements Serializable {
    private RecomDatabean ad_info;
    private CloudArchiveCfg cloud_archive_cfg;
    private ModGameArchivePathData cloud_archive_local_path;
    private GeneralCfgBean general_cfg;
    private List<GoldFingerBean> gold_finger;
    private GamedetialModleFourBean main_game_info;
    private GamedetialModleFourBean mod_game_info;

    public RecomDatabean getAd_info() {
        return this.ad_info;
    }

    public CloudArchiveCfg getCloud_archive_cfg() {
        return this.cloud_archive_cfg;
    }

    public ModGameArchivePathData getCloud_archive_local_path() {
        return this.cloud_archive_local_path;
    }

    public GeneralCfgBean getGeneral_cfg() {
        return this.general_cfg;
    }

    public List<GoldFingerBean> getGold_finger() {
        return this.gold_finger;
    }

    public GamedetialModleFourBean getMain_game_info() {
        return this.main_game_info;
    }

    public GamedetialModleFourBean getMod_game_info() {
        return this.mod_game_info;
    }

    public void setAd_info(RecomDatabean recomDatabean) {
        this.ad_info = recomDatabean;
    }

    public void setCloud_archive_cfg(CloudArchiveCfg cloudArchiveCfg) {
        this.cloud_archive_cfg = cloudArchiveCfg;
    }

    public void setCloud_archive_local_path(ModGameArchivePathData modGameArchivePathData) {
        this.cloud_archive_local_path = modGameArchivePathData;
    }

    public void setGeneral_cfg(GeneralCfgBean generalCfgBean) {
        this.general_cfg = generalCfgBean;
    }

    public void setGold_finger(List<GoldFingerBean> list) {
        this.gold_finger = list;
    }

    public void setMain_game_info(GamedetialModleFourBean gamedetialModleFourBean) {
        this.main_game_info = gamedetialModleFourBean;
    }

    public void setMod_game_info(GamedetialModleFourBean gamedetialModleFourBean) {
        this.mod_game_info = gamedetialModleFourBean;
    }
}
