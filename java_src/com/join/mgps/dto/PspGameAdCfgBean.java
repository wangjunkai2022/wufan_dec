package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PspGameAdCfgBean extends BaseBean {
    private int count_down;
    private String l_btn_text;
    private String l_btn_url;
    private List<PlayCfgBean> play_cfg;
    private String r_btn_text;
    private int switch_state;
    private String tip_text;
    private int what_day;

    public int getCount_down() {
        return this.count_down;
    }

    public String getL_btn_text() {
        return this.l_btn_text;
    }

    public String getL_btn_url() {
        return this.l_btn_url;
    }

    public List<PlayCfgBean> getPlay_cfg() {
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

    public void setCount_down(int i2) {
        this.count_down = i2;
    }

    public void setL_btn_text(String str) {
        this.l_btn_text = str;
    }

    public void setL_btn_url(String str) {
        this.l_btn_url = str;
    }

    public void setPlay_cfg(List<PlayCfgBean> list) {
        this.play_cfg = list;
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
