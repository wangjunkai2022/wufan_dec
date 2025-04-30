package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GiftPackageInfoArgs extends BaseDto {
    private int gift_package_id;
    private int uid;

    public GiftPackageInfoArgs() {
    }

    public int getGift_package_id() {
        return this.gift_package_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGift_package_id(int i2) {
        this.gift_package_id = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public GiftPackageInfoArgs(int i2, int i4) {
        this.uid = i2;
        this.gift_package_id = i4;
    }
}
