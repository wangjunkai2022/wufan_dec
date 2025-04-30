package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
/* compiled from: NewGameFragment.java */
@EFragment(R.layout.newgame_fragment_layout)
/* loaded from: classes4.dex */
public class q3 extends d {

    /* renamed from: d  reason: collision with root package name */
    private TextView f49935d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f49937f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f49938g;

    /* renamed from: h  reason: collision with root package name */
    private View f49939h;

    /* renamed from: a  reason: collision with root package name */
    private final int f49932a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f49933b = 1;

    /* renamed from: c  reason: collision with root package name */
    private final int f49934c = 2;

    /* renamed from: e  reason: collision with root package name */
    private int f49936e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f49939h == null) {
            this.f49939h = layoutInflater.inflate(R.layout.newgame_fragment_layout, (ViewGroup) null);
            this.f49937f = true;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f49939h.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.f49939h);
        }
        return this.f49939h;
    }
}
