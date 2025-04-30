package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class DownloadSpeedupCfgBean extends BaseBean {
    private String btn_text;
    private int net_status = 0;
    private List<PlayCfgBean> play_cfg;
    private int show_users;
    private int speedup_times;
    private int switch_state;
    private String tip_text;
    private int what_day;

    public String getBtn_text() {
        return this.btn_text;
    }

    public int getNet_status() {
        return this.net_status;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public int getShow_users() {
        return this.show_users;
    }

    public int getSpeedup_times() {
        return this.speedup_times;
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

    public void setBtn_text(String str) {
        this.btn_text = str;
    }

    public void setNet_status(int i2) {
        this.net_status = i2;
    }

    public void setPlay_cfg(List<PlayCfgBean> list) {
        this.play_cfg = list;
    }

    public void setShow_users(int i2) {
        this.show_users = i2;
    }

    public void setSpeedup_times(int i2) {
        this.speedup_times = i2;
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
