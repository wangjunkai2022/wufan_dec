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
/* compiled from: UpdateBinding.java */
/* loaded from: classes3.dex */
public final class zc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27204a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27205b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27206c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f27207d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27208e;

    private zc0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView2) {
        this.f27204a = linearLayout;
        this.f27205b = textView;
        this.f27206c = imageView;
        this.f27207d = progressBar;
        this.f27208e = textView2;
    }

    @NonNull
    public static zc0 a(@NonNull View view) {
        int i2 = R.id.appInfo;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appInfo);
        if (textView != null) {
            i2 = R.id.ivLogo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivLogo);
            if (imageView != null) {
                i2 = R.id.pbDownload;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pbDownload);
                if (progressBar != null) {
                    i2 = R.id.tvProcess;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvProcess);
                    if (textView2 != null) {
                        return new zc0((LinearLayout) view, textView, imageView, progressBar, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.update, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27204a;
    }
}
