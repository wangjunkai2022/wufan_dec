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
import com.join.mgps.customview.FlowLayout;
/* compiled from: FragmentClassifyBinding.java */
/* loaded from: classes3.dex */
public final class ag implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18172a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FlowLayout f18173b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18174c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18175d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18176e;

    private ag(@NonNull LinearLayout linearLayout, @NonNull FlowLayout flowLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView) {
        this.f18172a = linearLayout;
        this.f18173b = flowLayout;
        this.f18174c = linearLayout2;
        this.f18175d = linearLayout3;
        this.f18176e = textView;
    }

    @NonNull
    public static ag a(@NonNull View view) {
        int i2 = R.id.classify_game;
        FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.classify_game);
        if (flowLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.game_classify;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.game_classify);
            if (linearLayout2 != null) {
                i2 = R.id.textView28;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView28);
                if (textView != null) {
                    return new ag(linearLayout, flowLayout, linearLayout, linearLayout2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ag c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ag d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_classify, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18172a;
    }
}
