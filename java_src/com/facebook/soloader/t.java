package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;
/* compiled from: SoSource.java */
/* loaded from: classes.dex */
public abstract class t {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13639a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13640b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13641c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13642d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13643e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13644f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13645g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13646h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f13647i = 2;

    public void a(Collection<String> collection) {
    }

    public String[] b() {
        return SysUtil.h();
    }

    public abstract int c(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i2) throws IOException {
    }

    @Nullable
    public abstract File e(String str) throws IOException;

    public String toString() {
        return getClass().getName();
    }
}
