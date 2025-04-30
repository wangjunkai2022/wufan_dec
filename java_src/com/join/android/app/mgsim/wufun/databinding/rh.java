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
import com.join.mgps.customview.XListView2;
/* compiled from: FragmentPapaGameLocalBinding.java */
/* loaded from: classes3.dex */
public final class rh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24428a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f24429b;

    private rh(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2) {
        this.f24428a = relativeLayout;
        this.f24429b = xListView2;
    }

    @NonNull
    public static rh a(@NonNull View view) {
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mListView);
        if (xListView2 != null) {
            return new rh((RelativeLayout) view, xListView2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mListView)));
    }

    @NonNull
    public static rh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_papa_game_local, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24428a;
    }
}
