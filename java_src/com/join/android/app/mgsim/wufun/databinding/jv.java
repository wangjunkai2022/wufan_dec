package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ListviewpullheaderBinding.java */
/* loaded from: classes3.dex */
public final class jv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21552a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21553b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21554c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f21555d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21556e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21557f;

    private jv(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21552a = linearLayout;
        this.f21553b = imageView;
        this.f21554c = textView;
        this.f21555d = progressBar;
        this.f21556e = textView2;
        this.f21557f = textView3;
    }

    @NonNull
    public static jv a(@NonNull View view) {
        int i2 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i2 = R.id.noMore;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noMore);
            if (textView != null) {
                i2 = R.id.progerssbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progerssbar);
                if (progressBar != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        i2 = R.id.updated;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.updated);
                        if (textView3 != null) {
                            return new jv((LinearLayout) view, imageView, textView, progressBar, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listviewpullheader, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21552a;
    }
}
