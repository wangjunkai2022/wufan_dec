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
/* compiled from: DialogVaExtSupportBinding.java */
/* loaded from: classes3.dex */
public final class jd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21442a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21443b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21444c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f21445d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f21446e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f21447f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21448g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21449h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21450i;

    private jd(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull Button button, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21442a = linearLayout;
        this.f21443b = simpleDraweeView;
        this.f21444c = textView;
        this.f21445d = button;
        this.f21446e = imageView;
        this.f21447f = imageView2;
        this.f21448g = linearLayout2;
        this.f21449h = textView2;
        this.f21450i = textView3;
    }

    @NonNull
    public static jd a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView != null) {
                i2 = R.id.btn_install;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_install);
                if (button != null) {
                    i2 = R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (imageView != null) {
                        i2 = R.id.iv_star;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_star);
                        if (imageView2 != null) {
                            i2 = R.id.tipsLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                            if (linearLayout != null) {
                                i2 = R.id.tv_content;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                                if (textView2 != null) {
                                    i2 = R.id.tv_score;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_score);
                                    if (textView3 != null) {
                                        return new jd((LinearLayout) view, simpleDraweeView, textView, button, imageView, imageView2, linearLayout, textView2, textView3);
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
    public static jd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_va_ext_support, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21442a;
    }
}
