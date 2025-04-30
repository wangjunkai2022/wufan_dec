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
/* compiled from: TitleIndicatorBinding.java */
/* loaded from: classes3.dex */
public final class kc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21805a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f21806b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21807c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21808d;

    private kc0(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21805a = relativeLayout;
        this.f21806b = relativeLayout2;
        this.f21807c = textView;
        this.f21808d = textView2;
    }

    @NonNull
    public static kc0 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = 16908308;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908308);
        if (textView != null) {
            i2 = 16908309;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908309);
            if (textView2 != null) {
                return new kc0(relativeLayout, relativeLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.title_indicator, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21805a;
    }
}
