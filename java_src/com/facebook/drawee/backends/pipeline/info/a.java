package com.facebook.drawee.backends.pipeline.info;

import javax.annotation.Nullable;
/* compiled from: ImageOriginRequestListener.java */
/* loaded from: classes.dex */
public class a extends r0.a {

    /* renamed from: a  reason: collision with root package name */
    private String f11859a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final h0.b f11860b;

    public a(String str, @Nullable h0.b bVar) {
        this.f11860b = bVar;
        l(str);
    }

    @Override // r0.a, com.facebook.imagepipeline.producers.m0
    public void h(String str, String str2, boolean z3) {
        h0.b bVar = this.f11860b;
        if (bVar != null) {
            bVar.a(this.f11859a, h0.c.a(str2), z3);
        }
    }

    public void l(String str) {
        this.f11859a = str;
    }
}
