package com.switfpass.pay.utils;

import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes4.dex */
final class j1 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ PopupWindow f59002a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(PopupWindow popupWindow) {
        this.f59002a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f59002a.dismiss();
    }
}
