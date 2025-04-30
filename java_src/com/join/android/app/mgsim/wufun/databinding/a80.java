package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapmainItemTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class a80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18062a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18063b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18064c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18065d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18066e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18067f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18068g;

    private a80(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f18062a = linearLayout;
        this.f18063b = imageView;
        this.f18064c = linearLayout2;
        this.f18065d = relativeLayout;
        this.f18066e = textView;
        this.f18067f = textView2;
        this.f18068g = textView3;
    }

    @NonNull
    public static a80 a(@NonNull View view) {
        int i2 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
        if (imageView != null) {
            i2 = R.id.look_other;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
            if (linearLayout != null) {
                i2 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                if (relativeLayout != null) {
                    i2 = R.id.subtitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                    if (textView != null) {
                        i2 = R.id.textView11;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView11);
                        if (textView2 != null) {
                            i2 = R.id.titleText;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                            if (textView3 != null) {
                                return new a80((LinearLayout) view, imageView, linearLayout, relativeLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papmain_item_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18062a;
    }
}
