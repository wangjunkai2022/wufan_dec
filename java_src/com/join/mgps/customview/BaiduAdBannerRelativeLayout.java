package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public class BaiduAdBannerRelativeLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    boolean f44935a;

    public BaiduAdBannerRelativeLayout(Context context) {
        super(context);
        this.f44935a = false;
    }

    public boolean a() {
        return this.f44935a;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
    }

    public BaiduAdBannerRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44935a = false;
    }

    public BaiduAdBannerRelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44935a = false;
    }
}
