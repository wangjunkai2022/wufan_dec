package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GamerecommendBean implements Serializable {
    private List<RecomDatabean> left;
    private List<RecomDatabean> right;
    private List<RecomDatabean> top;

    public GamerecommendBean() {
    }

    public List<RecomDatabean> getLeft() {
        return this.left;
    }

    public List<RecomDatabean> getRight() {
        return this.right;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setLeft(List<RecomDatabean> list) {
        this.left = list;
    }

    public void setRight(List<RecomDatabean> list) {
        this.right = list;
    }

    public void setTop(List<RecomDatabean> list) {
        this.top = list;
    }

    public GamerecommendBean(List<RecomDatabean> list, List<RecomDatabean> list2, List<RecomDatabean> list3) {
        this.left = list;
        this.top = list2;
        this.right = list3;
    }
}
