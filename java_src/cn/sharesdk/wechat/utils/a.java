package cn.sharesdk.wechat.utils;

import android.os.Bundle;
/* compiled from: AuthOptions.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f9086a;

    /* renamed from: b  reason: collision with root package name */
    public int f9087b = -1;

    public void a(Bundle bundle) {
        bundle.putString("_wxapi_sendauth_options_callback_classname", this.f9086a);
        bundle.putInt("_wxapi_sendauth_options_callback_flags", this.f9087b);
    }

    public void b(Bundle bundle) {
        this.f9086a = n.a(bundle, "_wxapi_sendauth_options_callback_classname");
        this.f9087b = n.a(bundle, "_wxapi_sendauth_options_callback_flags", -1);
    }
}
