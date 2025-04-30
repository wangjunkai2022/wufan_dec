package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;
/* compiled from: StandardVideoViewDetailBinding.java */
/* loaded from: classes3.dex */
public final class ec0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19697a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19698b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19699c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19700d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f19701e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19702f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19703g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f19704h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19705i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ENDownloadView f19706j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f19707k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f19708l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final SeekBar f19709m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f19710n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ENPlayView f19711o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f19712p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f19713q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SimpleDraweeView f19714r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19715s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19716t;

    private ec0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ENDownloadView eNDownloadView, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull SeekBar seekBar, @NonNull ImageView imageView7, @NonNull ENPlayView eNPlayView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19697a = relativeLayout;
        this.f19698b = imageView;
        this.f19699c = imageView2;
        this.f19700d = imageView3;
        this.f19701e = progressBar;
        this.f19702f = textView;
        this.f19703g = imageView4;
        this.f19704h = linearLayout;
        this.f19705i = linearLayout2;
        this.f19706j = eNDownloadView;
        this.f19707k = imageView5;
        this.f19708l = imageView6;
        this.f19709m = seekBar;
        this.f19710n = imageView7;
        this.f19711o = eNPlayView;
        this.f19712p = relativeLayout2;
        this.f19713q = relativeLayout3;
        this.f19714r = simpleDraweeView;
        this.f19715s = textView2;
        this.f19716t = textView3;
    }

    @NonNull
    public static ec0 a(@NonNull View view) {
        int i2 = R.id.autoPlay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.autoPlay);
        if (imageView != null) {
            i2 = R.id.back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView2 != null) {
                i2 = R.id.back_tiny;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_tiny);
                if (imageView3 != null) {
                    i2 = R.id.bottom_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.bottom_progressbar);
                    if (progressBar != null) {
                        i2 = R.id.current;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.current);
                        if (textView != null) {
                            i2 = R.id.fullscreen;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.fullscreen);
                            if (imageView4 != null) {
                                i2 = R.id.layout_bottom;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom);
                                if (linearLayout != null) {
                                    i2 = R.id.layout_top;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_top);
                                    if (linearLayout2 != null) {
                                        i2 = R.id.loading;
                                        ENDownloadView eNDownloadView = (ENDownloadView) ViewBindings.findChildViewById(view, R.id.loading);
                                        if (eNDownloadView != null) {
                                            i2 = R.id.lock_screen;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock_screen);
                                            if (imageView5 != null) {
                                                i2 = R.id.mute;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.mute);
                                                if (imageView6 != null) {
                                                    i2 = R.id.progress;
                                                    SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.progress);
                                                    if (seekBar != null) {
                                                        i2 = R.id.small_close;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_close);
                                                        if (imageView7 != null) {
                                                            i2 = R.id.start;
                                                            ENPlayView eNPlayView = (ENPlayView) ViewBindings.findChildViewById(view, R.id.start);
                                                            if (eNPlayView != null) {
                                                                i2 = R.id.surface_container;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
                                                                if (relativeLayout != null) {
                                                                    i2 = R.id.thumb;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.thumb);
                                                                    if (relativeLayout2 != null) {
                                                                        i2 = R.id.thumbImageView;
                                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.thumbImageView);
                                                                        if (simpleDraweeView != null) {
                                                                            i2 = R.id.title;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                            if (textView2 != null) {
                                                                                i2 = R.id.total;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.total);
                                                                                if (textView3 != null) {
                                                                                    return new ec0((RelativeLayout) view, imageView, imageView2, imageView3, progressBar, textView, imageView4, linearLayout, linearLayout2, eNDownloadView, imageView5, imageView6, seekBar, imageView7, eNPlayView, relativeLayout, relativeLayout2, simpleDraweeView, textView2, textView3);
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
    public static ec0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ec0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.standard_video_view_detail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19697a;
    }
}
