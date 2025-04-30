package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutPlayMustHeaderBinding.java */
/* loaded from: classes3.dex */
public final class bu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18654a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18655b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f18656c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f18657d;

    private bu(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f18654a = linearLayout;
        this.f18655b = linearLayout2;
        this.f18656c = simpleDraweeView;
        this.f18657d = simpleDraweeView2;
    }

    @NonNull
    public static bu a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.playLeft;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.playLeft);
        if (simpleDraweeView != null) {
            i2 = R.id.playRight;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.playRight);
            if (simpleDraweeView2 != null) {
                return new bu(linearLayout, linearLayout, simpleDraweeView, simpleDraweeView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_play_must_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18654a;
    }
}
