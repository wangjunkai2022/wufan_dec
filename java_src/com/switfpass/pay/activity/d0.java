package com.switfpass.pay.activity;

import android.app.ProgressDialog;
import android.content.Context;
/* loaded from: classes4.dex */
final class d0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PayPlugin f58666a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Context f58667b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f58668c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(PayPlugin payPlugin, Context context, String str) {
        this.f58666a = payPlugin;
        this.f58667b = context;
        this.f58668c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PayPlugin payPlugin = this.f58666a;
        if (payPlugin.f58628d == null) {
            payPlugin.f58628d = new ProgressDialog(this.f58667b);
        }
        this.f58666a.f58628d.setMessage(this.f58668c);
        this.f58666a.f58628d.show();
    }
}
