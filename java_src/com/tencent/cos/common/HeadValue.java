package com.tencent.cos.common;

import io.netty.handler.codec.http.HttpHeaders;
/* loaded from: classes4.dex */
public final class HeadValue {
    private static HeadValue value;
    public final String JSON = HttpHeaders.Values.APPLICATION_JSON;
    public final String FORM_DATA = HttpHeaders.Values.MULTIPART_FORM_DATA;
    public final String ACCPET_ALL = "*/*";
    public final String KEEP_ALIVE = "Keep-Alive";

    private HeadValue() {
    }

    public static synchronized HeadValue getInstance() {
        HeadValue headValue;
        synchronized (HeadValue.class) {
            if (value == null) {
                value = new HeadValue();
            }
            headValue = value;
        }
        return headValue;
    }
}
