package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainVideoGameBinding.java */
/* loaded from: classes3.dex */
public final class u70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25432a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25433b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f25434c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f25435d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25436e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25437f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f25438g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f25439h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25440i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f25441j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ProgressBar f25442k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ConstraintLayout f25443l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25444m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f25445n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f25446o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final FrameLayout f25447p;

    private u70(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull FrameLayout frameLayout2) {
        this.f25432a = constraintLayout;
        this.f25433b = textView;
        this.f25434c = simpleDraweeView;
        this.f25435d = frameLayout;
        this.f25436e = simpleDraweeView2;
        this.f25437f = linearLayout;
        this.f25438g = simpleDraweeView3;
        this.f25439h = progressBar;
        this.f25440i = textView2;
        this.f25441j = progressBar2;
        this.f25442k = progressBar3;
        this.f25443l = constraintLayout2;
        this.f25444m = textView3;
        this.f25445n = textView4;
        this.f25446o = textView5;
        this.f25447p = frameLayout2;
    }

    @NonNull
    public static u70 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.bannerView;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
            if (simpleDraweeView != null) {
                i2 = R.id.flBtn;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flBtn);
                if (frameLayout != null) {
                    i2 = R.id.ivGameIcon;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.llInfo;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llInfo);
                        if (linearLayout != null) {
                            i2 = R.id.loading;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
                            if (simpleDraweeView3 != null) {
                                i2 = R.id.loading_progress;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading_progress);
                                if (progressBar != null) {
                                    i2 = R.id.loding_info;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                    if (textView2 != null) {
                                        i2 = R.id.progressBar;
                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                        if (progressBar2 != null) {
                                            i2 = R.id.progressBarZip;
                                            ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                            if (progressBar3 != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                i2 = R.id.tvBtn;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvBtn);
                                                if (textView3 != null) {
                                                    i2 = R.id.tvGameName;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
                                                    if (textView4 != null) {
                                                        i2 = R.id.tvGameTags;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameTags);
                                                        if (textView5 != null) {
                                                            i2 = R.id.videoContner;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                                                            if (frameLayout2 != null) {
                                                                return new u70(constraintLayout, textView, simpleDraweeView, frameLayout, simpleDraweeView2, linearLayout, simpleDraweeView3, progressBar, textView2, progressBar2, progressBar3, constraintLayout, textView3, textView4, textView5, frameLayout2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_video_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25432a;
    }
}
