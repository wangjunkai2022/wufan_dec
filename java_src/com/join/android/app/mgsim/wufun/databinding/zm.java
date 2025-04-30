package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamemainFliperItemBinding.java */
/* loaded from: classes3.dex */
public final class zm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27295a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27296b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27297c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f27298d;

    private zm(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f27295a = linearLayout;
        this.f27296b = linearLayout2;
        this.f27297c = textView;
        this.f27298d = simpleDraweeView;
    }

    @NonNull
    public static zm a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.fliperText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fliperText);
        if (textView != null) {
            i2 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
            if (simpleDraweeView != null) {
                return new zm(linearLayout, linearLayout, textView, simpleDraweeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamemain_fliper_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27295a;
    }
}
