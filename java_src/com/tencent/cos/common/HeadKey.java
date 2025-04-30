package com.tencent.cos.common;
/* loaded from: classes4.dex */
public final class HeadKey {
    private static HeadKey key;
    public final String AUTHORIZATION = "Authorization";
    public final String CONTENT_TYPE = "Content-Type";
    public final String ACCEPT = "Accept";
    public final String CONNECTION = "Connection";

    private HeadKey() {
    }

    public static synchronized HeadKey getInstance() {
        HeadKey headKey;
        synchronized (HeadKey.class) {
            if (key == null) {
                key = new HeadKey();
            }
            headKey = key;
        }
        return headKey;
    }
}
