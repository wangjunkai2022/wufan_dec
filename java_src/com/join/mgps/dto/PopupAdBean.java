package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class PopupAdBean implements Serializable {
    private String ad_switch;
    private List<RecomDatabean> big_pic;
    private List<RecomDatabean> more;
    private List<RecomDatabean> small_pic;
    private int start_up_counts;
    private String tag;

    public String getAd_switch() {
        return this.ad_switch;
    }

    public List<RecomDatabean> getBig_pic() {
        return this.big_pic;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getSmall_pic() {
        return this.small_pic;
    }

    public int getStart_up_counts() {
        return this.start_up_counts;
    }

    public String getTag() {
        return this.tag;
    }

    public void setAd_switch(String str) {
        this.ad_switch = str;
    }

    public void setBig_pic(List<RecomDatabean> list) {
        this.big_pic = list;
    }

    public void setMore(List<RecomDatabean> list) {
        this.more = list;
    }

    public void setSmall_pic(List<RecomDatabean> list) {
        this.small_pic = list;
    }

    public void setStart_up_counts(int i2) {
        this.start_up_counts = i2;
    }

    public void setTag(String str) {
        this.tag = str;
    }
}
