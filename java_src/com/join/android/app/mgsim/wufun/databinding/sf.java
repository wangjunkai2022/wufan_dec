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
/* compiled from: ForumSendLoadingLayoutBinding.java */
/* loaded from: classes3.dex */
public final class sf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24851a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24852b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24853c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24854d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24855e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24856f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ProgressBar f24857g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f24858h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f24859i;

    private sf(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f24851a = linearLayout;
        this.f24852b = linearLayout2;
        this.f24853c = textView;
        this.f24854d = linearLayout3;
        this.f24855e = linearLayout4;
        this.f24856f = textView2;
        this.f24857g = progressBar;
        this.f24858h = imageView;
        this.f24859i = imageView2;
    }

    @NonNull
    public static sf a(@NonNull View view) {
        int i2 = R.id.forum_send_failed_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_send_failed_container);
        if (linearLayout != null) {
            i2 = R.id.forum_send_failed_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_send_failed_tv);
            if (textView != null) {
                i2 = R.id.forum_send_loading_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_send_loading_container);
                if (linearLayout2 != null) {
                    i2 = R.id.forum_send_success_container;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_send_success_container);
                    if (linearLayout3 != null) {
                        i2 = R.id.forum_send_success_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_send_success_tv);
                        if (textView2 != null) {
                            i2 = R.id.mg_loading;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.mg_loading);
                            if (progressBar != null) {
                                i2 = R.id.mg_loading_failed;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_loading_failed);
                                if (imageView != null) {
                                    i2 = R.id.mg_loading_success;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_loading_success);
                                    if (imageView2 != null) {
                                        return new sf((LinearLayout) view, linearLayout, textView, linearLayout2, linearLayout3, textView2, progressBar, imageView, imageView2);
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
    public static sf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_send_loading_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24851a;
    }
}
