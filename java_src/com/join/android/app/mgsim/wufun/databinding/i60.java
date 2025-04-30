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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NowWufunDateItemBinding.java */
/* loaded from: classes3.dex */
public final class i60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21072a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21073b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21074c;

    private i60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21072a = linearLayout;
        this.f21073b = textView;
        this.f21074c = textView2;
    }

    @NonNull
    public static i60 a(@NonNull View view) {
        int i2 = R.id.date;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
        if (textView != null) {
            i2 = R.id.week;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.week);
            if (textView2 != null) {
                return new i60((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_date_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21072a;
    }
}
