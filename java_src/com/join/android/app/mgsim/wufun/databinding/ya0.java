package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SearchTabItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ya0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26866a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f26867b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26868c;

    private ya0(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull TextView textView) {
        this.f26866a = relativeLayout;
        this.f26867b = view;
        this.f26868c = textView;
    }

    @NonNull
    public static ya0 a(@NonNull View view) {
        int i2 = R.id.iv;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.iv);
        if (findChildViewById != null) {
            i2 = R.id.f17875tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.f17875tv);
            if (textView != null) {
                return new ya0((RelativeLayout) view, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ya0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ya0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_tab_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26866a;
    }
}
