package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GiftPackageOperationArgs extends BaseDto {
    private String game_id;
    private int gift_package_id;
    private int uid;

    public GiftPackageOperationArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getGift_package_id() {
        return this.gift_package_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGift_package_id(int i2) {
        this.gift_package_id = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public GiftPackageOperationArgs(int i2, int i4, String str) {
        this.uid = i2;
        this.gift_package_id = i4;
        this.game_id = str;
    }
}
