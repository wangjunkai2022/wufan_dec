package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
/* compiled from: CollectionFightBinding.java */
/* loaded from: classes3.dex */
public final class i7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21075a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f21076b;

    private i7(@NonNull RelativeLayout relativeLayout, @NonNull XListView xListView) {
        this.f21075a = relativeLayout;
        this.f21076b = xListView;
    }

    @NonNull
    public static i7 a(@NonNull View view) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.fightListView);
        if (xListView != null) {
            return new i7((RelativeLayout) view, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fightListView)));
    }

    @NonNull
    public static i7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_fight, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21075a;
    }
}
