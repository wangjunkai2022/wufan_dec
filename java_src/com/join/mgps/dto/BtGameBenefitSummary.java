package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class BtGameBenefitSummary {
    BtGameBenefitBean game_coupon_summary;
    BtGameBenefitBean game_gift_summary;
    String jump_url;

    public BtGameBenefitBean getGame_coupon_summary() {
        return this.game_coupon_summary;
    }

    public BtGameBenefitBean getGame_gift_summary() {
        return this.game_gift_summary;
    }

    public String getJump_url() {
        return this.jump_url;
    }

    public void setGame_coupon_summary(BtGameBenefitBean btGameBenefitBean) {
        this.game_coupon_summary = btGameBenefitBean;
    }

    public void setGame_gift_summary(BtGameBenefitBean btGameBenefitBean) {
        this.game_gift_summary = btGameBenefitBean;
    }

    public void setJump_url(String str) {
        this.jump_url = str;
    }
}
