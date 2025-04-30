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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PlugdownFinishDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class j80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21401a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21402b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21403c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f21404d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21405e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21406f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21407g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21408h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21409i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f21410j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ProgressBar f21411k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f21412l;

    private j80(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull TextView textView5) {
        this.f21401a = relativeLayout;
        this.f21402b = textView;
        this.f21403c = imageView;
        this.f21404d = simpleDraweeView;
        this.f21405e = textView2;
        this.f21406f = linearLayout;
        this.f21407g = textView3;
        this.f21408h = linearLayout2;
        this.f21409i = textView4;
        this.f21410j = progressBar;
        this.f21411k = progressBar2;
        this.f21412l = textView5;
    }

    @NonNull
    public static j80 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancle);
            if (imageView != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.info;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                    if (textView2 != null) {
                        i2 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i2 = R.id.lodingInfo;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.lodingInfo);
                            if (textView3 != null) {
                                i2 = R.id.main;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                if (linearLayout2 != null) {
                                    i2 = R.id.ok;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                                    if (textView4 != null) {
                                        i2 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                        if (progressBar != null) {
                                            i2 = R.id.progressBarZip;
                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                            if (progressBar2 != null) {
                                                i2 = R.id.title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                if (textView5 != null) {
                                                    return new j80((RelativeLayout) view, textView, imageView, simpleDraweeView, textView2, linearLayout, textView3, linearLayout2, textView4, progressBar, progressBar2, textView5);
                                                }
                                            }
                                        }
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
    public static j80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.plugdown_finish_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21401a;
    }
}
