package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemVipFun1Binding.java */
/* loaded from: classes3.dex */
public final class ys implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27037a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f27038b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27039c;

    private ys(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f27037a = constraintLayout;
        this.f27038b = simpleDraweeView;
        this.f27039c = textView;
    }

    @NonNull
    public static ys a(@NonNull View view) {
        int i2 = R.id.ic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ic);
        if (simpleDraweeView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new ys((ConstraintLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ys c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ys d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_vip_fun1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27037a;
    }
}
