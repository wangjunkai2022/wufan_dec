package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetGetBattleUdpPortBean implements Serializable {
    private String error;
    private NetGetDataBattleUdpPortBean invite;
    private NetGetDataBattleUdpPortBean match;
    private NetGetDataBattleUdpPortBean psp;

    /* renamed from: test  reason: collision with root package name */
    private NetGetDataBattleUdpPortBean f48148test;

    public String getError() {
        return this.error;
    }

    public NetGetDataBattleUdpPortBean getInvite() {
        return this.invite;
    }

    public NetGetDataBattleUdpPortBean getMatch() {
        return this.match;
    }

    public NetGetDataBattleUdpPortBean getPsp() {
        return this.psp;
    }

    public NetGetDataBattleUdpPortBean getTest() {
        return this.f48148test;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setInvite(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.invite = netGetDataBattleUdpPortBean;
    }

    public void setMatch(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.match = netGetDataBattleUdpPortBean;
    }

    public void setPsp(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.psp = netGetDataBattleUdpPortBean;
    }

    public void setTest(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.f48148test = netGetDataBattleUdpPortBean;
    }

    public String toString() {
        return "NetGetBattleUdpPortBean{error='" + this.error + "', test=" + this.f48148test + ", match=" + this.match + ", invite=" + this.invite + '}';
    }
}
