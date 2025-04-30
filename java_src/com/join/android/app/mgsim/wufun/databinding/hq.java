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
import com.join.mgps.customview.ActivityTabView;
/* compiled from: ItemGameDetialActivitiesBinding.java */
/* loaded from: classes3.dex */
public final class hq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20878a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ActivityTabView f20879b;

    private hq(@NonNull LinearLayout linearLayout, @NonNull ActivityTabView activityTabView) {
        this.f20878a = linearLayout;
        this.f20879b = activityTabView;
    }

    @NonNull
    public static hq a(@NonNull View view) {
        ActivityTabView activityTabView = (ActivityTabView) ViewBindings.findChildViewById(view, R.id.atv_activities);
        if (activityTabView != null) {
            return new hq((LinearLayout) view, activityTabView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.atv_activities)));
    }

    @NonNull
    public static hq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detial_activities, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20878a;
    }
}
