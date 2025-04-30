package cn.sharesdk.framework.authorize;

import android.content.Intent;
/* compiled from: SSOProcessor.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected SSOAuthorizeActivity f8817a;

    /* renamed from: b  reason: collision with root package name */
    protected int f8818b;

    /* renamed from: c  reason: collision with root package name */
    protected SSOListener f8819c;

    public c(SSOAuthorizeActivity sSOAuthorizeActivity) {
        this.f8817a = sSOAuthorizeActivity;
        this.f8819c = sSOAuthorizeActivity.getHelper().getSSOListener();
    }

    public abstract void a();

    public void a(int i2) {
        this.f8818b = i2;
    }

    public void a(int i2, int i4, Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Intent intent) {
    }
}
