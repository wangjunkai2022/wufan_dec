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
/* compiled from: ActivityModLoadingBinding.java */
/* loaded from: classes3.dex */
public final class d1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19146a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19147b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19148c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f19149d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19150e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19151f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19152g;

    private d1(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19146a = relativeLayout;
        this.f19147b = imageView;
        this.f19148c = linearLayout;
        this.f19149d = progressBar;
        this.f19150e = textView;
        this.f19151f = textView2;
        this.f19152g = textView3;
    }

    @NonNull
    public static d1 a(@NonNull View view) {
        int i2 = R.id.iv_loading;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_loading);
        if (imageView != null) {
            i2 = R.id.ll_download_status;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_download_status);
            if (linearLayout != null) {
                i2 = R.id.pb_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_progress);
                if (progressBar != null) {
                    i2 = R.id.tv_launch_status;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_launch_status);
                    if (textView != null) {
                        i2 = R.id.tv_progress_status_1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_progress_status_1);
                        if (textView2 != null) {
                            i2 = R.id.tv_progress_status_2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_progress_status_2);
                            if (textView3 != null) {
                                return new d1((RelativeLayout) view, imageView, linearLayout, progressBar, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_mod_loading, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19146a;
    }
}
