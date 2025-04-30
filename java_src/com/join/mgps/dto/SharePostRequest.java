package com.join.mgps.dto;

import java.io.Serializable;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class SharePostRequest implements Serializable {
    private String res_id;
    private int res_type;
    private String share_channel;
    private String share_url;
    private int status;
    private String uid;

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("res_type", this.res_type + "");
        linkedMultiValueMap.add("res_id", this.res_id + "");
        linkedMultiValueMap.add("status", this.status + "");
        linkedMultiValueMap.add("share_url", this.share_url);
        linkedMultiValueMap.add("share_channel", this.share_channel);
        return linkedMultiValueMap;
    }

    public String getRes_id() {
        return this.res_id;
    }

    public int getRes_type() {
        return this.res_type;
    }

    public String getShare_channel() {
        return this.share_channel;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public int getStatus() {
        return this.status;
    }

    public String getUid() {
        return this.uid;
    }

    public void setRes_id(String str) {
        this.res_id = str;
    }

    public void setRes_type(int i2) {
        this.res_type = i2;
    }

    public void setShare_channel(String str) {
        this.share_channel = str;
    }

    public void setShare_url(String str) {
        this.share_url = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
