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
/* compiled from: ActivityStandAloneAdBinding.java */
/* loaded from: classes3.dex */
public final class b2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18358a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f18359b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18360c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18361d;

    private b2(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f18358a = linearLayout;
        this.f18359b = relativeLayout;
        this.f18360c = imageView;
        this.f18361d = textView;
    }

    @NonNull
    public static b2 a(@NonNull View view) {
        int i2 = R.id.adRl;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.adRl);
        if (relativeLayout != null) {
            i2 = R.id.localIv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.localIv);
            if (imageView != null) {
                i2 = R.id.timeTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.timeTv);
                if (textView != null) {
                    return new b2((LinearLayout) view, relativeLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_stand_alone_ad, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18358a;
    }
}
