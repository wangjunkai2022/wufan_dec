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
/* compiled from: InstallButtonBigLayoutBinding.java */
/* loaded from: classes3.dex */
public final class xo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26629a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f26630b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26631c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26632d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f26633e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26634f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26635g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f26636h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f26637i;

    private xo(@NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2) {
        this.f26629a = linearLayout;
        this.f26630b = progressBar;
        this.f26631c = imageView;
        this.f26632d = textView;
        this.f26633e = relativeLayout;
        this.f26634f = textView2;
        this.f26635g = textView3;
        this.f26636h = linearLayout2;
        this.f26637i = relativeLayout2;
    }

    @NonNull
    public static xo a(@NonNull View view) {
        int i2 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
        if (progressBar != null) {
            i2 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
            if (imageView != null) {
                i2 = R.id.instalButtomButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                if (textView != null) {
                    i2 = R.id.instalbutnLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.moneyText;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                        if (textView2 != null) {
                            i2 = R.id.percent;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                            if (textView3 != null) {
                                i2 = R.id.progress_layout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                if (linearLayout != null) {
                                    i2 = R.id.progressbarLayout;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                    if (relativeLayout2 != null) {
                                        return new xo((LinearLayout) view, progressBar, imageView, textView, relativeLayout, textView2, textView3, linearLayout, relativeLayout2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_button_big_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26629a;
    }
}
