package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class CloudBackupsRequestBean {
    private String backup_file;
    private String backup_type = "game";
    private String brand_name;
    private String game_id;
    private String rid;
    private String token;
    private String uid;

    public LinkedMultiValueMap<String, String> getAllCanDataParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add("token", this.token);
        return linkedMultiValueMap;
    }

    public String getBrand_name() {
        return this.brand_name;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("rid", this.rid);
        return linkedMultiValueMap;
    }

    public LinkedMultiValueMap<String, String> getParams1() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("brand_name", this.brand_name);
        return linkedMultiValueMap;
    }

    public String getRid() {
        return this.rid;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setBrand_name(String str) {
        this.brand_name = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setRid(String str) {
        this.rid = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
