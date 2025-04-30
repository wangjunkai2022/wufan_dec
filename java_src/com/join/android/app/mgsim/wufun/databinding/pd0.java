package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VideoSettingActivityBinding.java */
/* loaded from: classes3.dex */
public final class pd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23599a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f23600b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23601c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23602d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f23603e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f23604f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23605g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final qc0 f23606h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f23607i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f23608j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f23609k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f23610l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f23611m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f23612n;

    private pd0(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView3, @NonNull qc0 qc0Var, @NonNull RelativeLayout relativeLayout4, @NonNull ImageView imageView4, @NonNull RelativeLayout relativeLayout5, @NonNull ImageView imageView5, @NonNull RelativeLayout relativeLayout6, @NonNull ImageView imageView6) {
        this.f23599a = linearLayout;
        this.f23600b = relativeLayout;
        this.f23601c = imageView;
        this.f23602d = relativeLayout2;
        this.f23603e = imageView2;
        this.f23604f = relativeLayout3;
        this.f23605g = imageView3;
        this.f23606h = qc0Var;
        this.f23607i = relativeLayout4;
        this.f23608j = imageView4;
        this.f23609k = relativeLayout5;
        this.f23610l = imageView5;
        this.f23611m = relativeLayout6;
        this.f23612n = imageView6;
    }

    @NonNull
    public static pd0 a(@NonNull View view) {
        int i2 = R.id.homevideoAllNet;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.homevideoAllNet);
        if (relativeLayout != null) {
            i2 = R.id.homevideoAllNetSwitch;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.homevideoAllNetSwitch);
            if (imageView != null) {
                i2 = R.id.homevideoNotPlay;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.homevideoNotPlay);
                if (relativeLayout2 != null) {
                    i2 = R.id.homevideoNotPlaySwitch;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.homevideoNotPlaySwitch);
                    if (imageView2 != null) {
                        i2 = R.id.homevideoOnlyWifi;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.homevideoOnlyWifi);
                        if (relativeLayout3 != null) {
                            i2 = R.id.homevideoOnlyWifiSwitch;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.homevideoOnlyWifiSwitch);
                            if (imageView3 != null) {
                                i2 = R.id.title_bar_layout;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                                if (findChildViewById != null) {
                                    qc0 a4 = qc0.a(findChildViewById);
                                    i2 = R.id.videoAllNet;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.videoAllNet);
                                    if (relativeLayout4 != null) {
                                        i2 = R.id.videoAllNetSwitch;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.videoAllNetSwitch);
                                        if (imageView4 != null) {
                                            i2 = R.id.videoNotPlay;
                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.videoNotPlay);
                                            if (relativeLayout5 != null) {
                                                i2 = R.id.videoNotPlaySwitch;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.videoNotPlaySwitch);
                                                if (imageView5 != null) {
                                                    i2 = R.id.videoOnlyWifi;
                                                    RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.videoOnlyWifi);
                                                    if (relativeLayout6 != null) {
                                                        i2 = R.id.videoOnlyWifiSwitch;
                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.videoOnlyWifiSwitch);
                                                        if (imageView6 != null) {
                                                            return new pd0((LinearLayout) view, relativeLayout, imageView, relativeLayout2, imageView2, relativeLayout3, imageView3, a4, relativeLayout4, imageView4, relativeLayout5, imageView5, relativeLayout6, imageView6);
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
    public static pd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_setting_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23599a;
    }
}
