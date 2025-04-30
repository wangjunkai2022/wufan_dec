package com.join.mgps.pulltorefresh.library;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
/* compiled from: ILoadingLayout.java */
/* loaded from: classes4.dex */
public interface a {
    void setLastUpdatedLabel(CharSequence charSequence);

    void setLoadingDrawable(Drawable drawable);

    void setPullLabel(CharSequence charSequence);

    void setRefreshingLabel(CharSequence charSequence);

    void setReleaseLabel(CharSequence charSequence);

    void setTextTypeface(Typeface typeface);
}
