package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HandshankCheckKeyBinding.java */
/* loaded from: classes3.dex */
public final class nn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22935a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22936b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22937c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22938d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f22939e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22940f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f22941g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f22942h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22943i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f22944j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f22945k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f22946l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f22947m;

    private nn(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull ImageView imageView10, @NonNull ImageView imageView11) {
        this.f22935a = linearLayout;
        this.f22936b = imageView;
        this.f22937c = imageView2;
        this.f22938d = imageView3;
        this.f22939e = frameLayout;
        this.f22940f = imageView4;
        this.f22941g = imageView5;
        this.f22942h = imageView6;
        this.f22943i = imageView7;
        this.f22944j = imageView8;
        this.f22945k = imageView9;
        this.f22946l = imageView10;
        this.f22947m = imageView11;
    }

    @NonNull
    public static nn a(@NonNull View view) {
        int i2 = R.id.f17848a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.f17848a);
        if (imageView != null) {
            i2 = R.id.f17850b;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.f17850b);
            if (imageView2 != null) {
                i2 = R.id.handshank_check_cross;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_cross);
                if (imageView3 != null) {
                    i2 = R.id.handshank_check_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.handshank_check_layout);
                    if (frameLayout != null) {
                        i2 = R.id.handshank_check_lb;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_lb);
                        if (imageView4 != null) {
                            i2 = R.id.handshank_check_ls;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_ls);
                            if (imageView5 != null) {
                                i2 = R.id.handshank_check_rb;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_rb);
                                if (imageView6 != null) {
                                    i2 = R.id.handshank_check_rs;
                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_rs);
                                    if (imageView7 != null) {
                                        i2 = R.id.handshank_check_stick_l;
                                        ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_stick_l);
                                        if (imageView8 != null) {
                                            i2 = R.id.handshank_check_stick_r;
                                            ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_check_stick_r);
                                            if (imageView9 != null) {
                                                i2 = R.id.f17877x;
                                                ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, R.id.f17877x);
                                                if (imageView10 != null) {
                                                    i2 = R.id.f17878y;
                                                    ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, R.id.f17878y);
                                                    if (imageView11 != null) {
                                                        return new nn((LinearLayout) view, imageView, imageView2, imageView3, frameLayout, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11);
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
    public static nn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_check_key, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22935a;
    }
}
