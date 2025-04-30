package com.join.mgps.pulltorefresh.library;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import com.join.mgps.pulltorefresh.library.internal.LoadingLayout;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: LoadingLayoutProxy.java */
/* loaded from: classes4.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<LoadingLayout> f51413a = new HashSet<>();

    public void a(LoadingLayout loadingLayout) {
        if (loadingLayout != null) {
            this.f51413a.add(loadingLayout);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLastUpdatedLabel(CharSequence charSequence) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setLastUpdatedLabel(charSequence);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLoadingDrawable(Drawable drawable) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setLoadingDrawable(drawable);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setPullLabel(CharSequence charSequence) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setPullLabel(charSequence);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setRefreshingLabel(CharSequence charSequence) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setRefreshingLabel(charSequence);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setReleaseLabel(CharSequence charSequence) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setReleaseLabel(charSequence);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setTextTypeface(Typeface typeface) {
        Iterator<LoadingLayout> it2 = this.f51413a.iterator();
        while (it2.hasNext()) {
            it2.next().setTextTypeface(typeface);
        }
    }
}
