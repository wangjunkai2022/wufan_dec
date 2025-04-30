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
/* compiled from: RankingListviewItemV2Binding.java */
/* loaded from: classes3.dex */
public final class n90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22807a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22808b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f22809c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22810d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22811e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f22812f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22813g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f22814h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f22815i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22816j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22817k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22818l;

    private n90(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22807a = constraintLayout;
        this.f22808b = textView;
        this.f22809c = frameLayout;
        this.f22810d = simpleDraweeView;
        this.f22811e = linearLayout;
        this.f22812f = progressBar;
        this.f22813g = textView2;
        this.f22814h = progressBar2;
        this.f22815i = progressBar3;
        this.f22816j = textView3;
        this.f22817k = textView4;
        this.f22818l = textView5;
    }

    @NonNull
    public static n90 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.flBtn;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flBtn);
            if (frameLayout != null) {
                i2 = R.id.ivGamePic;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGamePic);
                if (simpleDraweeView != null) {
                    i2 = R.id.llInfo;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llInfo);
                    if (linearLayout != null) {
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
                                        i2 = R.id.tvBtn;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvBtn);
                                        if (textView3 != null) {
                                            i2 = R.id.tvGameName;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
                                            if (textView4 != null) {
                                                i2 = R.id.tvTags;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTags);
                                                if (textView5 != null) {
                                                    return new n90((ConstraintLayout) view, textView, frameLayout, simpleDraweeView, linearLayout, progressBar, textView2, progressBar2, progressBar3, textView3, textView4, textView5);
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
    public static n90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.ranking_listview_item_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22807a;
    }
}
