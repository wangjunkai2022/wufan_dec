package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class NetBattleInviteBean {
    private String client_ip;
    private String error;
    private NetBattleGetMatchAvailableServerBean server;
    private String status;
    private GameWorldFightRecoderUserInfoBean user_info;

    public NetBattleInviteBean(String str, String str2, String str3, NetBattleGetMatchAvailableServerBean netBattleGetMatchAvailableServerBean, GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean) {
        this.client_ip = "";
        this.status = str;
        this.error = str2;
        this.client_ip = str3;
        this.server = netBattleGetMatchAvailableServerBean;
        this.user_info = gameWorldFightRecoderUserInfoBean;
    }

    public String getClient_ip() {
        return this.client_ip;
    }

    public String getError() {
        return this.error;
    }

    public NetBattleGetMatchAvailableServerBean getServer() {
        return this.server;
    }

    public String getStatus() {
        return this.status;
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setClient_ip(String str) {
        this.client_ip = str;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setServer(NetBattleGetMatchAvailableServerBean netBattleGetMatchAvailableServerBean) {
        this.server = netBattleGetMatchAvailableServerBean;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean) {
        this.user_info = gameWorldFightRecoderUserInfoBean;
    }

    public String toString() {
        return "NetBattleInviteBean{status='" + this.status + "', error='" + this.error + "', server=" + this.server + ", user_info=" + this.user_info + '}';
    }

    public NetBattleInviteBean() {
        this.client_ip = "";
    }
}
