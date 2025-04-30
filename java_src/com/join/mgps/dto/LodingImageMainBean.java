package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class LodingImageMainBean {
    private int isopen;
    private List<LodingImageBean> pic;

    public LodingImageMainBean() {
    }

    public int getIsopen() {
        return this.isopen;
    }

    public List<LodingImageBean> getPic() {
        return this.pic;
    }

    public void setIsopen(int i2) {
        this.isopen = i2;
    }

    public void setPic(List<LodingImageBean> list) {
        this.pic = list;
    }

    public LodingImageMainBean(int i2, List<LodingImageBean> list) {
        this.isopen = i2;
        this.pic = list;
    }
}
