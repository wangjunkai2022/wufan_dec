package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: UpdateLodingLayoutBinding.java */
/* loaded from: classes3.dex */
public final class bd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18498a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18499b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18500c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f18501d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18502e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f18503f;

    private bd0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull ProgressBar progressBar2) {
        this.f18498a = relativeLayout;
        this.f18499b = imageView;
        this.f18500c = linearLayout;
        this.f18501d = progressBar;
        this.f18502e = textView;
        this.f18503f = progressBar2;
    }

    @NonNull
    public static bd0 a(@NonNull View view) {
        int i2 = R.id.lodingBackImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
        if (imageView != null) {
            i2 = R.id.message;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.message);
            if (linearLayout != null) {
                i2 = R.id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                if (progressBar != null) {
                    i2 = R.id.progressmessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.progressmessage);
                    if (textView != null) {
                        i2 = R.id.uZIPLoading;
                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.uZIPLoading);
                        if (progressBar2 != null) {
                            return new bd0((RelativeLayout) view, imageView, linearLayout, progressBar, textView, progressBar2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.update_loding_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18498a;
    }
}
