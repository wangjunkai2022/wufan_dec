package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameDiscoverChannelBean implements Serializable {
    private List<RecomDatabean> broadcast;
    private List<RecomDatabean> d_discover;
    private List<RecomDatabean> s_channel;
    private GameDiscoverTheNewBean the_new;

    public List<RecomDatabean> getBroadcast() {
        return this.broadcast;
    }

    public List<RecomDatabean> getD_discover() {
        return this.d_discover;
    }

    public List<RecomDatabean> getS_channel() {
        return this.s_channel;
    }

    public GameDiscoverTheNewBean getThe_new() {
        return this.the_new;
    }

    public void setBroadcast(List<RecomDatabean> list) {
        this.broadcast = list;
    }

    public void setD_discover(List<RecomDatabean> list) {
        this.d_discover = list;
    }

    public void setS_channel(List<RecomDatabean> list) {
        this.s_channel = list;
    }

    public void setThe_new(GameDiscoverTheNewBean gameDiscoverTheNewBean) {
        this.the_new = gameDiscoverTheNewBean;
    }
}
