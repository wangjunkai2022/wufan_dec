package com.join.mgps.dto;

import com.join.mgps.Util.u1;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class BluetoothHandleBlackListRequestBean {
    private String device_id;
    private String sign;

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, u1.f(this));
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
