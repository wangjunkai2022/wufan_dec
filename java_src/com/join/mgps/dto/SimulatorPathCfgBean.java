package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorPathCfgBean extends BaseBean {
    private Integer id;
    private List<PlayCfgBean> play_cfg;
    private Integer switch_state;

    public Integer getId() {
        return this.id;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public Integer getSwitch_state() {
        return this.switch_state;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public void setPlay_cfg(List<PlayCfgBean> list) {
        this.play_cfg = list;
    }

    public void setSwitch_state(Integer num) {
        this.switch_state = num;
    }
}
