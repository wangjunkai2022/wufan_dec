package com.facebook.soloader;

import java.util.List;
import javax.annotation.Nullable;
/* compiled from: NativeLibrary.java */
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: f  reason: collision with root package name */
    private static final String f13633f = "com.facebook.soloader.p";
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private List<String> f13635b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f13634a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Boolean f13636c = Boolean.TRUE;

    /* renamed from: d  reason: collision with root package name */
    private boolean f13637d = false;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private volatile UnsatisfiedLinkError f13638e = null;

    protected p(List<String> list) {
        this.f13635b = list;
    }

    public void a() throws UnsatisfiedLinkError {
        if (!d()) {
            throw this.f13638e;
        }
    }

    @Nullable
    public UnsatisfiedLinkError b() {
        return this.f13638e;
    }

    protected void c() throws UnsatisfiedLinkError {
    }

    @Nullable
    public boolean d() {
        synchronized (this.f13634a) {
            if (!this.f13636c.booleanValue()) {
                return this.f13637d;
            }
            try {
                List<String> list = this.f13635b;
                if (list != null) {
                    for (String str : list) {
                        SoLoader.k(str);
                    }
                }
                c();
                this.f13637d = true;
                this.f13635b = null;
            } catch (UnsatisfiedLinkError e4) {
                this.f13638e = e4;
                this.f13637d = false;
            }
            this.f13636c = Boolean.FALSE;
            return this.f13637d;
        }
    }
}
