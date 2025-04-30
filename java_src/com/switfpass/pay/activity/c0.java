package com.switfpass.pay.activity;

import android.view.View;
/* loaded from: classes4.dex */
final class c0 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PayPlugin f58664a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(PayPlugin payPlugin) {
        this.f58664a = payPlugin;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        new e0(this.f58664a).execute(new Void[0]);
    }
}
