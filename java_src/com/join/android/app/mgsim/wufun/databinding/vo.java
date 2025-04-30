package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: InstallAppListBinding.java */
/* loaded from: classes3.dex */
public final class vo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25888a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25889b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25890c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25891d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25892e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25893f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25894g;

    private vo(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull Button button, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.f25888a = linearLayout;
        this.f25889b = simpleDraweeView;
        this.f25890c = textView;
        this.f25891d = button;
        this.f25892e = imageView;
        this.f25893f = linearLayout2;
        this.f25894g = textView2;
    }

    @NonNull
    public static vo a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView != null) {
                i2 = R.id.btn_install;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_install);
                if (button != null) {
                    i2 = R.id.iv_star;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_star);
                    if (imageView != null) {
                        i2 = R.id.tipsLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                        if (linearLayout != null) {
                            i2 = R.id.tv_score;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                            if (textView2 != null) {
                                return new vo((LinearLayout) view, simpleDraweeView, textView, button, imageView, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_app_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25888a;
    }
}
