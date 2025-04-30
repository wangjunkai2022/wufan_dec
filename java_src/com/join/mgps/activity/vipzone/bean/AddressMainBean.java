package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class AddressMainBean {
    List<LuckAddressbean> citys;
    List<LuckAddressbean> privences;
    List<LuckAddressbean> towns;

    public List<LuckAddressbean> getCitys() {
        return this.citys;
    }

    public List<LuckAddressbean> getPrivences() {
        return this.privences;
    }

    public List<LuckAddressbean> getTowns() {
        return this.towns;
    }

    public void setCitys(List<LuckAddressbean> list) {
        this.citys = list;
    }

    public void setPrivences(List<LuckAddressbean> list) {
        this.privences = list;
    }

    public void setTowns(List<LuckAddressbean> list) {
        this.towns = list;
    }
}
