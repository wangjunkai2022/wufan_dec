package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogModFeedBackBinding.java */
/* loaded from: classes3.dex */
public final class mc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22460a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22461b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22462c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22463d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22464e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22465f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22466g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22467h;

    private mc(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22460a = linearLayout;
        this.f22461b = imageView;
        this.f22462c = simpleDraweeView;
        this.f22463d = textView;
        this.f22464e = textView2;
        this.f22465f = textView3;
        this.f22466g = textView4;
        this.f22467h = textView5;
    }

    @NonNull
    public static mc a(@NonNull View view) {
        int i2 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i2 = R.id.sdv_image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
            if (simpleDraweeView != null) {
                i2 = R.id.tv_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                if (textView != null) {
                    i2 = R.id.tv_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                    if (textView2 != null) {
                        i2 = R.id.tv_opt_1;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_1);
                        if (textView3 != null) {
                            i2 = R.id.tv_opt_2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_opt_2);
                            if (textView4 != null) {
                                i2 = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView5 != null) {
                                    return new mc((LinearLayout) view, imageView, simpleDraweeView, textView, textView2, textView3, textView4, textView5);
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
    public static mc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_feed_back, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22460a;
    }
}
