package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class NetBattleStartBattleBean {
    private String client_ip;
    private String error_msg;
    private String remaining_seconds;
    private NetBattleGetMatchAvailableServerBean server;
    private String winning_reward_money;

    public NetBattleStartBattleBean() {
        this.remaining_seconds = "";
        this.error_msg = "";
        this.client_ip = "";
        this.winning_reward_money = "";
    }

    public String getClient_ip() {
        return this.client_ip;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public String getRemaining_seconds() {
        return this.remaining_seconds;
    }

    public NetBattleGetMatchAvailableServerBean getServer() {
        return this.server;
    }

    public String getWinning_reward_money() {
        return this.winning_reward_money;
    }

    public void setClient_ip(String str) {
        this.client_ip = str;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setRemaining_seconds(String str) {
        this.remaining_seconds = str;
    }

    public void setServer(NetBattleGetMatchAvailableServerBean netBattleGetMatchAvailableServerBean) {
        this.server = netBattleGetMatchAvailableServerBean;
    }

    public void setWinning_reward_money(String str) {
        this.winning_reward_money = str;
    }

    public NetBattleStartBattleBean(String str, String str2, NetBattleGetMatchAvailableServerBean netBattleGetMatchAvailableServerBean) {
        this.remaining_seconds = "";
        this.error_msg = "";
        this.client_ip = "";
        this.winning_reward_money = "";
        this.remaining_seconds = str;
        this.error_msg = str2;
        this.server = netBattleGetMatchAvailableServerBean;
    }

    public NetBattleStartBattleBean(String str, String str2) {
        this.remaining_seconds = "";
        this.error_msg = "";
        this.client_ip = "";
        this.winning_reward_money = "";
        this.remaining_seconds = str;
        this.error_msg = str2;
    }
}
