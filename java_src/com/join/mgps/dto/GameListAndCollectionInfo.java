package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameListAndCollectionInfo extends PaPaBean {
    private CollectionInfo collection_info;
    private List<AppBean> game_list;

    public CollectionInfo getCollection_info() {
        return this.collection_info;
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public void setCollection_info(CollectionInfo collectionInfo) {
        this.collection_info = collectionInfo;
    }

    public void setGame_list(List<AppBean> list) {
        this.game_list = list;
    }
}
