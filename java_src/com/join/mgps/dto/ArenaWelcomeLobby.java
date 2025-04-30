package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaWelcomeLobby implements Serializable {
    private String close_show_url;
    private ArenaConfig config;
    private String error;
    private ArenaFilterConfig filter_config;
    private NetGetDataBattleUdpPortBean server;
    private ArenaUser user;

    public String getClose_show_url() {
        return this.close_show_url;
    }

    public ArenaConfig getConfig() {
        return this.config;
    }

    public String getError() {
        return this.error;
    }

    public ArenaFilterConfig getFilter_config() {
        return this.filter_config;
    }

    public NetGetDataBattleUdpPortBean getServer() {
        return this.server;
    }

    public ArenaUser getUser() {
        return this.user;
    }

    public void setClose_show_url(String str) {
        this.close_show_url = str;
    }

    public void setConfig(ArenaConfig arenaConfig) {
        this.config = arenaConfig;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setFilter_config(ArenaFilterConfig arenaFilterConfig) {
        this.filter_config = arenaFilterConfig;
    }

    public void setServer(NetGetDataBattleUdpPortBean netGetDataBattleUdpPortBean) {
        this.server = netGetDataBattleUdpPortBean;
    }

    public void setUser(ArenaUser arenaUser) {
        this.user = arenaUser;
    }

    public String toString() {
        return "ArenaWelcomeLobby{error='" + this.error + "', server=" + this.server + ", filter_config=" + this.filter_config + '}';
    }
}
