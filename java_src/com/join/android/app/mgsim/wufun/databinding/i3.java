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
/* compiled from: AppitemAppsizeDowncountLayoutSimilarBinding.java */
/* loaded from: classes3.dex */
public final class i3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21034a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21035b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21036c;

    private i3(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21034a = linearLayout;
        this.f21035b = textView;
        this.f21036c = textView2;
    }

    @NonNull
    public static i3 a(@NonNull View view) {
        int i2 = R.id.appType;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appType);
        if (textView != null) {
            i2 = R.id.appsize;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
            if (textView2 != null) {
                return new i3((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.appitem_appsize_downcount_layout_similar, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21034a;
    }
}
