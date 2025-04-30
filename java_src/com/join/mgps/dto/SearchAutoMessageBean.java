package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SearchAutoMessageBean {
    private SearchAutoData data;
    private String modeltype;

    /* loaded from: classes4.dex */
    public class SearchAutoData {
        private List<CollectionBeanSub> game_list;
        private List<SearchAutoDataBean> search_list;

        public SearchAutoData() {
        }

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

    public SearchAutoData getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(SearchAutoData searchAutoData) {
        this.data = searchAutoData;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
