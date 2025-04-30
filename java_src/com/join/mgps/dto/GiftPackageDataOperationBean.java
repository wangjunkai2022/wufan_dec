package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GiftPackageDataOperationBean implements Serializable {
    private DetailResultBean game_info;
    private GiftPackageDataInfoBean gift_info;

    public DetailResultBean getGame_info() {
        return this.game_info;
    }

    public GiftPackageDataInfoBean getGift_info() {
        return this.gift_info;
    }

    public void setGame_info(DetailResultBean detailResultBean) {
        this.game_info = detailResultBean;
    }

    public void setGift_info(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        this.gift_info = giftPackageDataInfoBean;
    }
}
