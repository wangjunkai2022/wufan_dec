package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ClassfyTypeBean {
    List<ClassifyGameTagBean> game_type;
    List<ClassifyGameTagBean> simulator_type;

    public List<ClassifyGameTagBean> getGame_type() {
        return this.game_type;
    }

    public List<ClassifyGameTagBean> getSimulator_type() {
        return this.simulator_type;
    }

    public void setGame_type(List<ClassifyGameTagBean> list) {
        this.game_type = list;
    }

    public void setSimulator_type(List<ClassifyGameTagBean> list) {
        this.simulator_type = list;
    }
}
