package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SettingActivityBinding.java */
/* loaded from: classes3.dex */
public final class eb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19676a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19677b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19678c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19679d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f19680e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19681f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19682g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f19683h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19684i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f19685j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f19686k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19687l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final qc0 f19688m;

    private eb0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView3, @NonNull qc0 qc0Var) {
        this.f19676a = linearLayout;
        this.f19677b = textView;
        this.f19678c = imageView;
        this.f19679d = imageView2;
        this.f19680e = relativeLayout;
        this.f19681f = imageView3;
        this.f19682g = imageView4;
        this.f19683h = relativeLayout2;
        this.f19684i = textView2;
        this.f19685j = relativeLayout3;
        this.f19686k = relativeLayout4;
        this.f19687l = textView3;
        this.f19688m = qc0Var;
    }

    @NonNull
    public static eb0 a(@NonNull View view) {
        int i2 = R.id.about;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.about);
        if (textView != null) {
            i2 = R.id.arrowImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
            if (imageView != null) {
                i2 = R.id.arrowImageAbout;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImageAbout);
                if (imageView2 != null) {
                    i2 = R.id.checkVerLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.checkVerLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.imageView3;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView3);
                        if (imageView3 != null) {
                            i2 = R.id.imageView5;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
                            if (imageView4 != null) {
                                i2 = R.id.papaAboutLayout;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.papaAboutLayout);
                                if (relativeLayout2 != null) {
                                    i2 = R.id.papaVer;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.papaVer);
                                    if (textView2 != null) {
                                        i2 = R.id.responsibility;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.responsibility);
                                        if (relativeLayout3 != null) {
                                            i2 = R.id.shareToFrendsLayout;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.shareToFrendsLayout);
                                            if (relativeLayout4 != null) {
                                                i2 = R.id.textView;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                                if (textView3 != null) {
                                                    i2 = R.id.title_bar_layout;
                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                                                    if (findChildViewById != null) {
                                                        return new eb0((LinearLayout) view, textView, imageView, imageView2, relativeLayout, imageView3, imageView4, relativeLayout2, textView2, relativeLayout3, relativeLayout4, textView3, qc0.a(findChildViewById));
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
    public static eb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.setting_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19676a;
    }
}
