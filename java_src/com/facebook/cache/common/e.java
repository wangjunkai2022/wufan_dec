package com.facebook.cache.common;

import android.net.Uri;
import javax.annotation.Nullable;
/* compiled from: DebuggingCacheKey.java */
/* loaded from: classes.dex */
public class e extends i {

    /* renamed from: b  reason: collision with root package name */
    private final Object f11544b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f11545c;

    public e(String str, @Nullable Object obj, Uri uri) {
        super(str);
        this.f11544b = obj;
        this.f11545c = uri;
    }

    @Nullable
    public Object c() {
        return this.f11544b;
    }

    public Uri d() {
        return this.f11545c;
    }
}
