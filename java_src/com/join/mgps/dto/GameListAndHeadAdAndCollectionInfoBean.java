package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameListAndHeadAdAndCollectionInfoBean extends PaPaBean {
    private List<GameHeadAd> head_ad;
    private List<GameListAndCollectionInfo> list;

    public List<GameHeadAd> getHead_ad() {
        return this.head_ad;
    }

    public List<GameListAndCollectionInfo> getList() {
        return this.list;
    }

    public void setHead_ad(List<GameHeadAd> list) {
        this.head_ad = list;
    }

    public void setList(List<GameListAndCollectionInfo> list) {
        this.list = list;
    }
}
