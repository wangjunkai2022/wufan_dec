package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: GamedetailItemViewpage1Binding.java */
/* loaded from: classes3.dex */
public final class il implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21191a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21192b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HListView f21193c;

    private il(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull HListView hListView) {
        this.f21191a = linearLayout;
        this.f21192b = linearLayout2;
        this.f21193c = hListView;
    }

    @NonNull
    public static il a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.screenListView;
            HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.screenListView);
            if (hListView != null) {
                return new il((LinearLayout) view, linearLayout, hListView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static il c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static il d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_viewpage1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21191a;
    }
}
