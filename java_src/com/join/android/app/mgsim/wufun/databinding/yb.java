package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogHintBinding.java */
/* loaded from: classes3.dex */
public final class yb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26869a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26870b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26871c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26872d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f26873e;

    private yb(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2) {
        this.f26869a = relativeLayout;
        this.f26870b = linearLayout;
        this.f26871c = textView;
        this.f26872d = textView2;
        this.f26873e = relativeLayout2;
    }

    @NonNull
    public static yb a(@NonNull View view) {
        int i2 = R.id.iv_close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (linearLayout != null) {
            i2 = R.id.tv_hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
            if (textView != null) {
                i2 = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    i2 = R.id.tv_top;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.tv_top);
                    if (relativeLayout != null) {
                        return new yb((RelativeLayout) view, linearLayout, textView, textView2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_hint, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26869a;
    }
}
