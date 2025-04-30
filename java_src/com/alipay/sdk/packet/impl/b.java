package com.alipay.sdk.packet.impl;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b extends com.alipay.sdk.packet.d {
    @Override // com.alipay.sdk.packet.d
    protected final JSONObject i() throws JSONException {
        return com.alipay.sdk.packet.d.j("sdkConfig", "obtain");
    }

    @Override // com.alipay.sdk.packet.d
    protected final String n() {
        return "5.0.0";
    }
}
