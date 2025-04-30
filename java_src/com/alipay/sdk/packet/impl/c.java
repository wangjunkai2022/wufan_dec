package com.alipay.sdk.packet.impl;

import android.content.Context;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c extends com.alipay.sdk.packet.d {

    /* renamed from: u  reason: collision with root package name */
    public static final String f9804u = "log_v";

    @Override // com.alipay.sdk.packet.d
    public final com.alipay.sdk.packet.b b(Context context, String str) throws Throwable {
        return d(context, str, "http://mcgw.alipay.com/sdklog.do", true);
    }

    @Override // com.alipay.sdk.packet.d
    protected final String e(String str, JSONObject jSONObject) {
        return str;
    }

    @Override // com.alipay.sdk.packet.d
    protected final List<Header> h(boolean z3, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f9782c, String.valueOf(z3)));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f9785f, HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f9788i, "CBC"));
        return arrayList;
    }

    @Override // com.alipay.sdk.packet.d
    protected final JSONObject i() throws JSONException {
        return null;
    }

    @Override // com.alipay.sdk.packet.d
    protected final String p() throws JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put(com.alipay.sdk.packet.d.f9790k, "/sdk/log");
        hashMap.put(com.alipay.sdk.packet.d.f9791l, "1.0.0");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(f9804u, "1.0");
        return com.alipay.sdk.packet.d.f(hashMap, hashMap2);
    }
}
