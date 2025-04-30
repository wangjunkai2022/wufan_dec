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
/* compiled from: PapamainBespeakBottomLayoutBinding.java */
/* loaded from: classes3.dex */
public final class w60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26072a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26073b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26074c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26075d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26076e;

    private w60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26072a = linearLayout;
        this.f26073b = textView;
        this.f26074c = textView2;
        this.f26075d = textView3;
        this.f26076e = textView4;
    }

    @NonNull
    public static w60 a(@NonNull View view) {
        int i2 = R.id.butn;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.butn);
        if (textView != null) {
            i2 = R.id.subtitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
            if (textView2 != null) {
                i2 = R.id.textView71;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView71);
                if (textView3 != null) {
                    i2 = R.id.title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView4 != null) {
                        return new w60((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_bespeak_bottom_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26072a;
    }
}
