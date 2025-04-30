package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GamedetialMoreGiftData {
    private DetialMoreGameInfo game_info;
    private List<GiftPackageDataInfoBean> gift_list;

    public DetialMoreGameInfo getGame_info() {
        return this.game_info;
    }

    public List<GiftPackageDataInfoBean> getGift_list() {
        return this.gift_list;
    }

    public void setGame_info(DetialMoreGameInfo detialMoreGameInfo) {
        this.game_info = detialMoreGameInfo;
    }

    public void setGift_list(List<GiftPackageDataInfoBean> list) {
        this.gift_list = list;
    }
}
