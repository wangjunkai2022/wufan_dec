package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopSpecialGameFilterBinding.java */
/* loaded from: classes3.dex */
public final class z80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27157a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f27158b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27159c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27160d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f27161e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27162f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27163g;

    private z80(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f27157a = constraintLayout;
        this.f27158b = view;
        this.f27159c = textView;
        this.f27160d = textView2;
        this.f27161e = linearLayout;
        this.f27162f = textView3;
        this.f27163g = textView4;
    }

    @NonNull
    public static z80 a(@NonNull View view) {
        int i2 = R.id.bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg);
        if (findChildViewById != null) {
            i2 = R.id.fastLayout;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fastLayout);
            if (textView != null) {
                i2 = R.id.fingerLayout;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fingerLayout);
                if (textView2 != null) {
                    i2 = R.id.layoutMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutMain);
                    if (linearLayout != null) {
                        i2 = R.id.modLayout;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.modLayout);
                        if (textView3 != null) {
                            i2 = R.id.onekeyLayout;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.onekeyLayout);
                            if (textView4 != null) {
                                return new z80((ConstraintLayout) view, findChildViewById, textView, textView2, linearLayout, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_special_game_filter, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27157a;
    }
}
