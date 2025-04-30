package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class AccountVoucherGameBean extends CollectionBeanSub {
    private int coupon_id;
    private double coupon_money;
    private int coupon_surplus;
    private String coupon_title;
    private int coupon_type;
    private String game_crc;
    private String game_icon;
    private List<TipBean> game_tags;
    private String game_tpl;

    public AccountVoucherGameBean() {
    }

    public int getCoupon_id() {
        return this.coupon_id;
    }

    public double getCoupon_money() {
        return this.coupon_money;
    }

    public int getCoupon_surplus() {
        return this.coupon_surplus;
    }

    public String getCoupon_title() {
        return this.coupon_title;
    }

    public int getCoupon_type() {
        return this.coupon_type;
    }

    public String getGame_crc() {
        return this.game_crc;
    }

    public String getGame_icon() {
        return this.game_icon;
    }

    public List<TipBean> getGame_tags() {
        return this.game_tags;
    }

    public String getGame_tpl() {
        return this.game_tpl;
    }

    public void setCoupon_id(int i2) {
        this.coupon_id = i2;
    }

    public void setCoupon_money(double d4) {
        this.coupon_money = d4;
    }

    public void setCoupon_surplus(int i2) {
        this.coupon_surplus = i2;
    }

    public void setCoupon_title(String str) {
        this.coupon_title = str;
    }

    public void setCoupon_type(int i2) {
        this.coupon_type = i2;
    }

    public void setGame_crc(String str) {
        this.game_crc = str;
    }

    public void setGame_icon(String str) {
        this.game_icon = str;
    }

    public void setGame_tags(List<TipBean> list) {
        this.game_tags = list;
    }

    public void setGame_tpl(String str) {
        this.game_tpl = str;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String toString() {
        return "AccountVoucherGameBean{coupon_title='" + this.coupon_title + "', coupon_id=" + this.coupon_id + ", game_tags=" + this.game_tags + ", game_icon='" + this.game_icon + "', game_tpl='" + this.game_tpl + "', game_crc='" + this.game_crc + "', coupon_type=" + this.coupon_type + ", coupon_money=" + this.coupon_money + ", coupon_surplus=" + this.coupon_surplus + '}';
    }

    public AccountVoucherGameBean(CollectionBeanSub collectionBeanSub, String str, int i2, List<TipBean> list, String str2) {
        super(collectionBeanSub);
        this.coupon_title = str;
        this.coupon_id = i2;
        this.game_tags = list;
        this.game_icon = str2;
    }
}
