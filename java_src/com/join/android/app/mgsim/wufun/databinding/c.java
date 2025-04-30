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
/* compiled from: AccountTitleIncludeBinding.java */
/* loaded from: classes3.dex */
public final class c implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18673a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18674b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f18675c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18676d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18677e;

    private c(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18673a = linearLayout;
        this.f18674b = imageView;
        this.f18675c = relativeLayout;
        this.f18676d = textView;
        this.f18677e = textView2;
    }

    @NonNull
    public static c a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.relativeLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
            if (relativeLayout != null) {
                i2 = R.id.rightTextButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.rightTextButn);
                if (textView != null) {
                    i2 = R.id.titleText;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                    if (textView2 != null) {
                        return new c((LinearLayout) view, imageView, relativeLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.account_title_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18673a;
    }
}
