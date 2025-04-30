package com.join.mgps.dialog;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
/* compiled from: ClassifyGamePopupowindow.java */
/* loaded from: classes3.dex */
public class u extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private a f47994a;

    /* compiled from: ClassifyGamePopupowindow.java */
    /* loaded from: classes3.dex */
    public interface a {
        void l0();
    }

    public u(View view, int i2, int i4, boolean z3, a aVar) {
        super(view, i2, i4, z3);
        this.f47994a = aVar;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        a aVar = this.f47994a;
        if (aVar != null) {
            aVar.l0();
        }
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            setHeight(view.getResources().getDisplayMetrics().heightPixels - rect.bottom);
        }
        super.showAsDropDown(view);
    }
}
