package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgFItemPostMessageBinding.java */
/* loaded from: classes3.dex */
public final class zw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27336a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f27337b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final StaticLayoutView f27338c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f27339d;

    private zw(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull StaticLayoutView staticLayoutView, @NonNull View view2) {
        this.f27336a = linearLayout;
        this.f27337b = view;
        this.f27338c = staticLayoutView;
        this.f27339d = view2;
    }

    @NonNull
    public static zw a(@NonNull View view) {
        int i2 = R.id.divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (findChildViewById != null) {
            i2 = R.id.msg;
            StaticLayoutView staticLayoutView = (StaticLayoutView) ViewBindings.findChildViewById(view, R.id.msg);
            if (staticLayoutView != null) {
                i2 = R.id.spaceT;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.spaceT);
                if (findChildViewById2 != null) {
                    return new zw((LinearLayout) view, findChildViewById, staticLayoutView, findChildViewById2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_f_item_post_message, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27336a;
    }
}
