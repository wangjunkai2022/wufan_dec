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
/* compiled from: TitleMygameIndicatorBinding.java */
/* loaded from: classes3.dex */
public final class lc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22101a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22102b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22103c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22104d;

    private lc0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22101a = linearLayout;
        this.f22102b = linearLayout2;
        this.f22103c = textView;
        this.f22104d = textView2;
    }

    @NonNull
    public static lc0 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = 16908308;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908308);
        if (textView != null) {
            i2 = 16908309;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908309);
            if (textView2 != null) {
                return new lc0(linearLayout, linearLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.title_mygame_indicator, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22101a;
    }
}
