package com.danikula.videocache;
/* loaded from: classes2.dex */
public class ProxyCacheException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11075a = ". Version: 1.0";

    public ProxyCacheException(String str) {
        super(str + f11075a);
    }

    public ProxyCacheException(String str, Throwable th) {
        super(str + f11075a, th);
    }

    public ProxyCacheException(Throwable th) {
        super("No explanation error. Version: 1.0", th);
    }
}
