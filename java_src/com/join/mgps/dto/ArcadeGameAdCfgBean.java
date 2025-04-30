package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArcadeGameAdCfgBean extends BaseBean {
    private int daily_times;
    private int how_times;
    private String l_btn_text;
    private String l_btn_url;
    private PlayCfgV2Bean play_cfg;
    private String r_btn_text;
    private int switch_state;
    private String tip_text;
    private int what_day;

    public int getDaily_times() {
        return this.daily_times;
    }

    public int getHow_times() {
        return this.how_times;
    }

    public String getL_btn_text() {
        return this.l_btn_text;
    }

    public String getL_btn_url() {
        return this.l_btn_url;
    }

    public PlayCfgV2Bean getPlay_cfg() {
        return this.play_cfg;
    }

    public String getR_btn_text() {
        return this.r_btn_text;
    }

    public int getSwitch_state() {
        return this.switch_state;
    }

    public String getTip_text() {
        return this.tip_text;
    }

    public int getWhat_day() {
        return this.what_day;
    }

    public void setDaily_times(int i2) {
        this.daily_times = i2;
    }

    public void setHow_times(int i2) {
        this.how_times = i2;
    }

    public void setL_btn_text(String str) {
        this.l_btn_text = str;
    }

    public void setL_btn_url(String str) {
        this.l_btn_url = str;
    }

    public void setPlay_cfg(PlayCfgV2Bean playCfgV2Bean) {
        this.play_cfg = playCfgV2Bean;
    }

    public void setR_btn_text(String str) {
        this.r_btn_text = str;
    }

    public void setSwitch_state(int i2) {
        this.switch_state = i2;
    }

    public void setTip_text(String str) {
        this.tip_text = str;
    }

    public void setWhat_day(int i2) {
        this.what_day = i2;
    }
}
