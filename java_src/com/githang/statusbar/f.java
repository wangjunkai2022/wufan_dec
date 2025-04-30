package com.githang.statusbar;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
/* compiled from: StatusBarKitkatImpl.java */
/* loaded from: classes2.dex */
class f implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f13904a = "ghStatusBarView";

    private static int b(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // com.githang.statusbar.b
    @TargetApi(19)
    public void a(Window window, int i2, boolean z3) {
        window.addFlags(67108864);
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        View findViewWithTag = viewGroup.findViewWithTag(f13904a);
        if (findViewWithTag == null) {
            findViewWithTag = new View(window.getContext());
            findViewWithTag.setTag(f13904a);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, b(window.getContext()));
            layoutParams.gravity = 48;
            findViewWithTag.setLayoutParams(layoutParams);
            viewGroup.addView(findViewWithTag);
        }
        findViewWithTag.setBackgroundColor(i2);
        c.b(window, true);
        d.a(window, z3);
    }
}
