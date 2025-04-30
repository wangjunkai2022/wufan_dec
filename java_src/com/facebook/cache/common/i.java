package com.facebook.cache.common;

import android.net.Uri;
/* compiled from: SimpleCacheKey.java */
/* loaded from: classes2.dex */
public class i implements c {

    /* renamed from: a  reason: collision with root package name */
    final String f11549a;

    public i(String str) {
        this.f11549a = (String) com.facebook.common.internal.h.i(str);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f11549a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        return this.f11549a.contains(uri.toString());
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return this.f11549a.equals(((i) obj).f11549a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f11549a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return this.f11549a;
    }
}
