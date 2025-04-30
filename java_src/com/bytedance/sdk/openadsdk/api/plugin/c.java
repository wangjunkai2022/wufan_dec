package com.bytedance.sdk.openadsdk.api.plugin;
/* compiled from: PluginException.java */
/* loaded from: classes2.dex */
public class c extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final int f10587a;

    public c(int i2, String str) {
        super(str);
        this.f10587a = i2;
    }

    public int a() {
        return this.f10587a;
    }
}
