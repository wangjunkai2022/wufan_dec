package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
/* compiled from: IntroductionActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ep implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19863a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f19864b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f19865c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19866d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19867e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19868f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f19869g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f19870h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19871i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19872j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f19873k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f19874l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f19875m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19876n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f19877o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19878p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final FrameLayout f19879q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f19880r;

    private ep(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull ProgressBar progressBar, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout3, @NonNull RelativeLayout relativeLayout3) {
        this.f19863a = relativeLayout;
        this.f19864b = frameLayout;
        this.f19865c = frameLayout2;
        this.f19866d = imageView;
        this.f19867e = linearLayout;
        this.f19868f = linearLayout2;
        this.f19869g = linearLayout3;
        this.f19870h = linearLayout4;
        this.f19871i = linearLayout5;
        this.f19872j = linearLayout6;
        this.f19873k = linearLayout7;
        this.f19874l = progressBar;
        this.f19875m = relativeLayout2;
        this.f19876n = textView;
        this.f19877o = textView2;
        this.f19878p = textView3;
        this.f19879q = frameLayout3;
        this.f19880r = relativeLayout3;
    }

    @NonNull
    public static ep a(@NonNull View view) {
        int i2 = R.id.fl_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_content);
        if (frameLayout != null) {
            i2 = R.id.fl_front_view;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_front_view);
            if (frameLayout2 != null) {
                i2 = R.id.iv_praise;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_praise);
                if (imageView != null) {
                    i2 = R.id.ll_close_drawer;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_close_drawer);
                    if (linearLayout != null) {
                        i2 = R.id.ll_comment;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_comment);
                        if (linearLayout2 != null) {
                            i2 = R.id.ll_more;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_more);
                            if (linearLayout3 != null) {
                                i2 = R.id.ll_praise;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_praise);
                                if (linearLayout4 != null) {
                                    i2 = R.id.ll_progress;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_progress);
                                    if (linearLayout5 != null) {
                                        i2 = R.id.ll_recommend;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_recommend);
                                        if (linearLayout6 != null) {
                                            i2 = R.id.loding_layout;
                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_layout);
                                            if (linearLayout7 != null) {
                                                i2 = R.id.pb_progress;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_progress);
                                                if (progressBar != null) {
                                                    i2 = R.id.rl_menu_layer;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_menu_layer);
                                                    if (relativeLayout != null) {
                                                        i2 = R.id.tv_comment_num;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_comment_num);
                                                        if (textView != null) {
                                                            i2 = R.id.tv_praise_num;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_praise_num);
                                                            if (textView2 != null) {
                                                                i2 = R.id.tv_type;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_type);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.video_view;
                                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_view);
                                                                    if (frameLayout3 != null) {
                                                                        i2 = R.id.weblayout;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.weblayout);
                                                                        if (relativeLayout2 != null) {
                                                                            return new ep((RelativeLayout) view, frameLayout, frameLayout2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, progressBar, relativeLayout, textView, textView2, textView3, frameLayout3, relativeLayout2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ep c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ep d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.introduction_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19863a;
    }
}
