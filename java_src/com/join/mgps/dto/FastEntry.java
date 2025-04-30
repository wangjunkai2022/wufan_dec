package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class FastEntry implements Serializable {
    public List<BannerBean> the_new;
    public List<BannerBean> topic;
    public List<BannerBean> will_play;

    public FastEntry(List<BannerBean> list, List<BannerBean> list2) {
        this.will_play = list;
        this.the_new = list2;
    }

    public List<BannerBean> getThe_new() {
        return this.the_new;
    }

    public List<BannerBean> getTopic() {
        return this.topic;
    }

    public List<BannerBean> getWill_play() {
        return this.will_play;
    }

    public void setThe_new(List<BannerBean> list) {
        this.the_new = list;
    }

    public void setTopic(List<BannerBean> list) {
        this.topic = list;
    }

    public void setWill_play(List<BannerBean> list) {
        this.will_play = list;
    }

    public FastEntry() {
    }
}
