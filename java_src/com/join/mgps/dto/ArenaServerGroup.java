package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaServerGroup implements Serializable {
    private int key;
    private NetBattleUdpPortBean ping;
    private boolean selected;
    private NetGetDataBattleUdpPortBean server;
    private String title;

    public int getKey() {
        return this.key;
    }

    public NetBattleUdpPortBean getPing() {
        return this.ping;
    }

    public boolean getSelected() {
        return this.selected;
    }

    public NetGetDataBattleUdpPortBean getServer() {
        return this.server;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setKey(int i2) {
        this.key = i2;
    }

    public void setPing(NetBattleUdpPortBean netBattleUdpPortBean) {
        this.ping = netBattleUdpPortBean;
    }

    public void setSelected(boolean z3) {
        this.selected = z3;
    }

    public void setServer(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.server = netGetDataBattleUdpPortBean;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
