package com.sdk.x;
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes4.dex */
public class b<T> implements com.sdk.e.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f56707a;

    public b(d dVar) {
        this.f56707a = dVar;
    }

    @Override // com.sdk.e.a
    public void a(int i2, int i4, String str) {
        this.f56707a.a(i2, i4, str);
    }

    @Override // com.sdk.e.a
    public void onSuccess(int i2, String str, int i4, T t3, String str2) {
        this.f56707a.a(i2, str, i4, t3, str2);
    }
}
