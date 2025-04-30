package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ClassifyBean implements Serializable {
    private List<ClassifyGameTagBean> game_tag_type;
    private List<ClassifyGameTypeBean> game_type;
    private List<RecomDatabean> game_type_recommend;

    public ClassifyBean(List<RecomDatabean> list, List<ClassifyGameTypeBean> list2, List<ClassifyGameTagBean> list3) {
        this.game_type_recommend = list;
        this.game_type = list2;
        this.game_tag_type = list3;
    }

    public List<ClassifyGameTagBean> getGame_tag_type() {
        return this.game_tag_type;
    }

    public List<ClassifyGameTypeBean> getGame_type() {
        return this.game_type;
    }

    public List<RecomDatabean> getGame_type_recommend() {
        return this.game_type_recommend;
    }

    public void setGame_tag_type(List<ClassifyGameTagBean> list) {
        this.game_tag_type = list;
    }

    public void setGame_type(List<ClassifyGameTypeBean> list) {
        this.game_type = list;
    }

    public void setGame_type_recommend(List<RecomDatabean> list) {
        this.game_type_recommend = list;
    }

    public ClassifyBean() {
    }

    public ClassifyBean(List<ClassifyGameTagBean> list) {
        this.game_tag_type = list;
    }
}
