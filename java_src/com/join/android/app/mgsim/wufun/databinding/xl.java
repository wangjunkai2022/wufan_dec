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
/* compiled from: GamedetialFavortiesItemLayoutv2Binding.java */
/* loaded from: classes3.dex */
public final class xl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26611a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26612b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26613c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26614d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26615e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26616f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26617g;

    private xl(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26611a = linearLayout;
        this.f26612b = textView;
        this.f26613c = linearLayout2;
        this.f26614d = relativeLayout;
        this.f26615e = textView2;
        this.f26616f = textView3;
        this.f26617g = textView4;
    }

    @NonNull
    public static xl a(@NonNull View view) {
        int i2 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.follow);
        if (textView != null) {
            i2 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iconLayout);
            if (linearLayout != null) {
                i2 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                if (relativeLayout != null) {
                    i2 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView2 != null) {
                        i2 = R.id.number;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                        if (textView3 != null) {
                            i2 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView4 != null) {
                                return new xl((LinearLayout) view, textView, linearLayout, relativeLayout, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_favorties_item_layoutv2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26611a;
    }
}
