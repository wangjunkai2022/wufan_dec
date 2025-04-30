package com.facebook.cache.common;

import android.net.Uri;
import java.util.List;
/* compiled from: MultiCacheKey.java */
/* loaded from: classes2.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    final List<c> f11546a;

    public f(List<c> list) {
        this.f11546a = (List) com.facebook.common.internal.h.i(list);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f11546a.get(0).a();
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        for (int i2 = 0; i2 < this.f11546a.size(); i2++) {
            if (this.f11546a.get(i2).b(uri)) {
                return true;
            }
        }
        return false;
    }

    public List<c> c() {
        return this.f11546a;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return this.f11546a.equals(((f) obj).f11546a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f11546a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return "MultiCacheKey:" + this.f11546a.toString();
    }
}
