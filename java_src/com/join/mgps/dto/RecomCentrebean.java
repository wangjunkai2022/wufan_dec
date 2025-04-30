package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomCentrebean {
    private RecomDatabean cash_coupon;
    private RecomDatabean copper;
    private RecomDatabean currency_red_packets;
    private RecomDatabean game_packs;
    private RecomDatabean members_center_first;
    private RecomDatabean members_center_second;
    private RecomDatabean personal_information;
    private RecomDatabean vip;

    public RecomCentrebean() {
    }

    public RecomDatabean getCash_coupon() {
        return this.cash_coupon;
    }

    public RecomDatabean getCopper() {
        return this.copper;
    }

    public RecomDatabean getCurrency_red_packets() {
        return this.currency_red_packets;
    }

    public RecomDatabean getGame_packs() {
        return this.game_packs;
    }

    public RecomDatabean getMembers_center_first() {
        return this.members_center_first;
    }

    public RecomDatabean getMembers_center_second() {
        return this.members_center_second;
    }

    public RecomDatabean getPersonal_information() {
        return this.personal_information;
    }

    public RecomDatabean getVip() {
        return this.vip;
    }

    public void setCash_coupon(RecomDatabean recomDatabean) {
        this.cash_coupon = recomDatabean;
    }

    public void setCopper(RecomDatabean recomDatabean) {
        this.copper = recomDatabean;
    }

    public void setCurrency_red_packets(RecomDatabean recomDatabean) {
        this.currency_red_packets = recomDatabean;
    }

    public void setGame_packs(RecomDatabean recomDatabean) {
        this.game_packs = recomDatabean;
    }

    public void setMembers_center_first(RecomDatabean recomDatabean) {
        this.members_center_first = recomDatabean;
    }

    public void setMembers_center_second(RecomDatabean recomDatabean) {
        this.members_center_second = recomDatabean;
    }

    public void setPersonal_information(RecomDatabean recomDatabean) {
        this.personal_information = recomDatabean;
    }

    public void setVip(RecomDatabean recomDatabean) {
        this.vip = recomDatabean;
    }

    public RecomCentrebean(RecomDatabean recomDatabean, RecomDatabean recomDatabean2, RecomDatabean recomDatabean3, RecomDatabean recomDatabean4, RecomDatabean recomDatabean5, RecomDatabean recomDatabean6, RecomDatabean recomDatabean7, RecomDatabean recomDatabean8) {
        this.cash_coupon = recomDatabean;
        this.vip = recomDatabean2;
        this.personal_information = recomDatabean3;
        this.members_center_second = recomDatabean4;
        this.members_center_first = recomDatabean5;
        this.game_packs = recomDatabean6;
        this.currency_red_packets = recomDatabean7;
        this.copper = recomDatabean8;
    }
}
