package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
import com.join.mgps.customview.EqualizerView;
/* compiled from: StandardVideoViewBinding.java */
/* loaded from: classes3.dex */
public final class dc0 implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19299a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19300b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19301c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19302d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f19303e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19304f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ProgressBar f19305g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SeekBar f19306h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19307i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final EqualizerView f19308j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f19309k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f19310l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f19311m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f19312n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f19313o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final SimpleDraweeView f19314p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f19315q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f19316r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19317s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19318t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ImageView f19319u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final LinearLayout f19320v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final FrameLayout f19321w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final SimpleDraweeView f19322x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f19323y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f19324z;

    private dc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull SeekBar seekBar, @NonNull TextView textView, @NonNull EqualizerView equalizerView, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull ProgressBar progressBar2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView6, @NonNull LinearLayout linearLayout5, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView7, @NonNull LinearLayout linearLayout6, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f19299a = relativeLayout;
        this.f19300b = imageView;
        this.f19301c = imageView2;
        this.f19302d = imageView3;
        this.f19303e = imageView4;
        this.f19304f = linearLayout;
        this.f19305g = progressBar;
        this.f19306h = seekBar;
        this.f19307i = textView;
        this.f19308j = equalizerView;
        this.f19309k = imageView5;
        this.f19310l = linearLayout2;
        this.f19311m = linearLayout3;
        this.f19312n = linearLayout4;
        this.f19313o = progressBar2;
        this.f19314p = simpleDraweeView;
        this.f19315q = imageView6;
        this.f19316r = linearLayout5;
        this.f19317s = textView2;
        this.f19318t = textView3;
        this.f19319u = imageView7;
        this.f19320v = linearLayout6;
        this.f19321w = frameLayout;
        this.f19322x = simpleDraweeView2;
        this.f19323y = textView4;
        this.f19324z = textView5;
        this.A = textView6;
    }

    @NonNull
    public static dc0 a(@NonNull View view) {
        int i2 = R.id.autoPlay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.autoPlay);
        if (imageView != null) {
            i2 = R.id.back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView2 != null) {
                i2 = R.id.back_tiny;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_tiny);
                if (imageView3 != null) {
                    i2 = R.id.battery_level;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.battery_level);
                    if (imageView4 != null) {
                        i2 = R.id.battery_time_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.battery_time_layout);
                        if (linearLayout != null) {
                            i2 = R.id.bottom_progress;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.bottom_progress);
                            if (progressBar != null) {
                                i2 = R.id.bottom_seek_progress;
                                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.bottom_seek_progress);
                                if (seekBar != null) {
                                    i2 = R.id.current;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.current);
                                    if (textView != null) {
                                        i2 = R.id.equalizer_view;
                                        EqualizerView equalizerView = (EqualizerView) ViewBindings.findChildViewById(view, R.id.equalizer_view);
                                        if (equalizerView != null) {
                                            i2 = R.id.fullscreen;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.fullscreen);
                                            if (imageView5 != null) {
                                                i2 = R.id.layout_bottom;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom);
                                                if (linearLayout2 != null) {
                                                    i2 = R.id.layout_bottom2;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom2);
                                                    if (linearLayout3 != null) {
                                                        i2 = R.id.layout_top;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_top);
                                                        if (linearLayout4 != null) {
                                                            i2 = R.id.loading;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading);
                                                            if (progressBar2 != null) {
                                                                i2 = R.id.loadingM;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loadingM);
                                                                if (simpleDraweeView != null) {
                                                                    i2 = R.id.mute;
                                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.mute);
                                                                    if (imageView6 != null) {
                                                                        i2 = R.id.playFinishCover;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.playFinishCover);
                                                                        if (linearLayout5 != null) {
                                                                            i2 = R.id.progressTextShow;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.progressTextShow);
                                                                            if (textView2 != null) {
                                                                                i2 = R.id.retry_text;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.retry_text);
                                                                                if (textView3 != null) {
                                                                                    i2 = R.id.start;
                                                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.start);
                                                                                    if (imageView7 != null) {
                                                                                        i2 = R.id.start_layout;
                                                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.start_layout);
                                                                                        if (linearLayout6 != null) {
                                                                                            i2 = R.id.surface_container;
                                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
                                                                                            if (frameLayout != null) {
                                                                                                i2 = R.id.thumb;
                                                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.thumb);
                                                                                                if (simpleDraweeView2 != null) {
                                                                                                    i2 = R.id.title;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                                                    if (textView4 != null) {
                                                                                                        i2 = R.id.total;
                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.total);
                                                                                                        if (textView5 != null) {
                                                                                                            i2 = R.id.video_current_time;
                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.video_current_time);
                                                                                                            if (textView6 != null) {
                                                                                                                return new dc0((RelativeLayout) view, imageView, imageView2, imageView3, imageView4, linearLayout, progressBar, seekBar, textView, equalizerView, imageView5, linearLayout2, linearLayout3, linearLayout4, progressBar2, simpleDraweeView, imageView6, linearLayout5, textView2, textView3, imageView7, linearLayout6, frameLayout, simpleDraweeView2, textView4, textView5, textView6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.standard_video_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19299a;
    }
}
