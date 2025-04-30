package com.join.mgps.activity.search;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchAutoData {
    private List<CollectionBeanSub> game_list;
    private List<SearchAutoDataBean> search_list;

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public List<SearchAutoDataBean> getSearch_list() {
        return this.search_list;
    }

    public void setGame_list(List<CollectionBeanSub> list) {
        this.game_list = list;
    }

    public void setSearch_list(List<SearchAutoDataBean> list) {
        this.search_list = list;
    }
}
