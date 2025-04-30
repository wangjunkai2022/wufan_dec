package com.sdk.x;

import android.content.Context;
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes4.dex */
public class c<T> implements com.sdk.e.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f56708a;

    public c(d dVar) {
        this.f56708a = dVar;
    }

    @Override // com.sdk.e.a
    public void a(int i2, int i4, String str) {
        this.f56708a.a(i2, i4, str);
    }

    @Override // com.sdk.e.a
    public void onSuccess(int i2, String str, int i4, T t3, String str2) {
        Object obj;
        Context unused;
        if (i2 == 0) {
            unused = this.f56708a.f56712d;
            Object a4 = com.sdk.u.a.a(String.valueOf(t3));
            if (a4 == null) {
                this.f56708a.a(1, "SDK解密异常", 302001, a4, str2);
                return;
            }
            obj = a4;
        } else {
            obj = t3;
        }
        this.f56708a.a(i2, str, i4, obj, str2);
    }
}
