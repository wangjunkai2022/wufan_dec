package com.facebook.imageformat;

import javax.annotation.Nullable;
/* compiled from: ImageFormat.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    public static final c f12384c = new c("UNKNOWN", null);

    /* renamed from: a  reason: collision with root package name */
    private final String f12385a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12386b;

    /* compiled from: ImageFormat.java */
    /* loaded from: classes.dex */
    public interface a {
        @Nullable
        c a(byte[] bArr, int i2);

        int b();
    }

    public c(String str, @Nullable String str2) {
        this.f12386b = str;
        this.f12385a = str2;
    }

    @Nullable
    public String a() {
        return this.f12385a;
    }

    public String b() {
        return this.f12386b;
    }

    public String toString() {
        return b();
    }
}
