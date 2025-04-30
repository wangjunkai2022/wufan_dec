package com.join.mgps.activity.recomend;

import java.util.List;
/* loaded from: classes3.dex */
public class RecomentBean1 {
    private List<RecomentBean> game_list;
    private UserProtocolBean user_protocol;

    public List<RecomentBean> getGame_list() {
        return this.game_list;
    }

    public UserProtocolBean getUser_protocol() {
        return this.user_protocol;
    }

    public void setGame_list(List<RecomentBean> list) {
        this.game_list = list;
    }

    public void setUser_protocol(UserProtocolBean userProtocolBean) {
        this.user_protocol = userProtocolBean;
    }
}
