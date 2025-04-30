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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VideoListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class nd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22864a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22865b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22866c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22867d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f22868e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22869f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f22870g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f22871h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f22872i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22873j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22874k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22875l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final SimpleDraweeView f22876m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22877n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22878o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ProgressBar f22879p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ProgressBar f22880q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f22881r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f22882s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final LinearLayout f22883t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final FrameLayout f22884u;

    private nd0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull FrameLayout frameLayout) {
        this.f22864a = linearLayout;
        this.f22865b = textView;
        this.f22866c = simpleDraweeView;
        this.f22867d = imageView;
        this.f22868e = view;
        this.f22869f = view2;
        this.f22870g = linearLayout2;
        this.f22871h = linearLayout3;
        this.f22872i = simpleDraweeView2;
        this.f22873j = textView2;
        this.f22874k = textView3;
        this.f22875l = textView4;
        this.f22876m = simpleDraweeView3;
        this.f22877n = textView5;
        this.f22878o = textView6;
        this.f22879p = progressBar;
        this.f22880q = progressBar2;
        this.f22881r = relativeLayout;
        this.f22882s = linearLayout4;
        this.f22883t = linearLayout5;
        this.f22884u = frameLayout;
    }

    @NonNull
    public static nd0 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.bannerView;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bannerView);
            if (simpleDraweeView != null) {
                i2 = R.id.giftPackageSwich;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
                if (imageView != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.line_top;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line_top);
                        if (findChildViewById2 != null) {
                            i2 = R.id.linearLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                            if (linearLayout != null) {
                                i2 = R.id.linearLayout2;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                                if (linearLayout2 != null) {
                                    i2 = R.id.loading;
                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
                                    if (simpleDraweeView2 != null) {
                                        i2 = R.id.loding_info;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                                        if (textView2 != null) {
                                            i2 = R.id.mgListviewItemAppname;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                            if (textView3 != null) {
                                                i2 = R.id.mgListviewItemDescribe;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                                if (textView4 != null) {
                                                    i2 = R.id.mgListviewItemIcon;
                                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                                    if (simpleDraweeView3 != null) {
                                                        i2 = R.id.mgListviewItemInstall;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                                        if (textView5 != null) {
                                                            i2 = R.id.moneyText;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                            if (textView6 != null) {
                                                                i2 = R.id.progressBar;
                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                                if (progressBar != null) {
                                                                    i2 = R.id.progressBarZip;
                                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                                    if (progressBar2 != null) {
                                                                        i2 = R.id.rLayoutRight;
                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                                        if (relativeLayout != null) {
                                                                            i2 = R.id.relateLayoutApp;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutApp);
                                                                            if (linearLayout3 != null) {
                                                                                i2 = R.id.tipsLayout;
                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                                if (linearLayout4 != null) {
                                                                                    i2 = R.id.videoContner;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContner);
                                                                                    if (frameLayout != null) {
                                                                                        return new nd0((LinearLayout) view, textView, simpleDraweeView, imageView, findChildViewById, findChildViewById2, linearLayout, linearLayout2, simpleDraweeView2, textView2, textView3, textView4, simpleDraweeView3, textView5, textView6, progressBar, progressBar2, relativeLayout, linearLayout3, linearLayout4, frameLayout);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22864a;
    }
}
