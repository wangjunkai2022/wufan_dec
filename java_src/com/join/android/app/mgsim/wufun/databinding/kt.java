package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutExpandBinding.java */
/* loaded from: classes3.dex */
public final class kt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f21891a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21892b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21893c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21894d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f21895e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f21896f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21897g;

    private kt(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView3) {
        this.f21891a = frameLayout;
        this.f21892b = textView;
        this.f21893c = textView2;
        this.f21894d = imageView;
        this.f21895e = linearLayout;
        this.f21896f = frameLayout2;
        this.f21897g = textView3;
    }

    @NonNull
    public static kt a(@NonNull View view) {
        int i2 = R.id.expand_content_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.expand_content_tv);
        if (textView != null) {
            i2 = R.id.expand_helper_tv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.expand_helper_tv);
            if (textView2 != null) {
                i2 = R.id.expand_iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.expand_iv);
                if (imageView != null) {
                    i2 = R.id.expand_ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.expand_ll);
                    if (linearLayout != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        i2 = R.id.expand_tv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.expand_tv);
                        if (textView3 != null) {
                            return new kt(frameLayout, textView, textView2, imageView, linearLayout, frameLayout, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_expand, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f21891a;
    }
}
