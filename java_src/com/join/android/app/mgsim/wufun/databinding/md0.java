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
import com.join.mgps.customview.EqualizerView;
/* compiled from: VideoLayoutStandardWufunBinding.java */
/* loaded from: classes3.dex */
public final class md0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22481a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22482b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22483c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22484d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f22485e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22486f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22487g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EqualizerView f22488h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22489i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f22490j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f22491k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f22492l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final SimpleDraweeView f22493m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f22494n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f22495o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f22496p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f22497q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SeekBar f22498r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f22499s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f22500t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ImageView f22501u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final RelativeLayout f22502v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final RelativeLayout f22503w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final SimpleDraweeView f22504x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f22505y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f22506z;

    private md0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ProgressBar progressBar, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull EqualizerView equalizerView, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull TextView textView2, @NonNull LinearLayout linearLayout4, @NonNull SeekBar seekBar, @NonNull TextView textView3, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22481a = relativeLayout;
        this.f22482b = imageView;
        this.f22483c = imageView2;
        this.f22484d = imageView3;
        this.f22485e = progressBar;
        this.f22486f = imageView4;
        this.f22487g = textView;
        this.f22488h = equalizerView;
        this.f22489i = imageView5;
        this.f22490j = linearLayout;
        this.f22491k = linearLayout2;
        this.f22492l = linearLayout3;
        this.f22493m = simpleDraweeView;
        this.f22494n = imageView6;
        this.f22495o = imageView7;
        this.f22496p = textView2;
        this.f22497q = linearLayout4;
        this.f22498r = seekBar;
        this.f22499s = textView3;
        this.f22500t = imageView8;
        this.f22501u = imageView9;
        this.f22502v = relativeLayout2;
        this.f22503w = relativeLayout3;
        this.f22504x = simpleDraweeView2;
        this.f22505y = textView4;
        this.f22506z = textView5;
    }

    @NonNull
    public static md0 a(@NonNull View view) {
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
                        i2 = R.id.coverDetailBack;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.coverDetailBack);
                        if (imageView4 != null) {
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
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom);
                                        if (linearLayout != null) {
                                            i2 = R.id.layout_bottom2;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom2);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.layout_top;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_top);
                                                if (linearLayout3 != null) {
                                                    i2 = R.id.loading;
                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.loading);
                                                    if (simpleDraweeView != null) {
                                                        i2 = R.id.lock_screen;
                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock_screen);
                                                        if (imageView6 != null) {
                                                            i2 = R.id.mute;
                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.mute);
                                                            if (imageView7 != null) {
                                                                i2 = R.id.netWorkType;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.netWorkType);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.playFinishCover;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.playFinishCover);
                                                                    if (linearLayout4 != null) {
                                                                        i2 = R.id.progress;
                                                                        SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.progress);
                                                                        if (seekBar != null) {
                                                                            i2 = R.id.progressTextShow;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.progressTextShow);
                                                                            if (textView3 != null) {
                                                                                i2 = R.id.small_close;
                                                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_close);
                                                                                if (imageView8 != null) {
                                                                                    i2 = R.id.start;
                                                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.start);
                                                                                    if (imageView9 != null) {
                                                                                        i2 = R.id.surface_container;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
                                                                                        if (relativeLayout != null) {
                                                                                            i2 = R.id.thumb;
                                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.thumb);
                                                                                            if (relativeLayout2 != null) {
                                                                                                i2 = R.id.thumbImageView;
                                                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.thumbImageView);
                                                                                                if (simpleDraweeView2 != null) {
                                                                                                    i2 = R.id.title;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                                                    if (textView4 != null) {
                                                                                                        i2 = R.id.total;
                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.total);
                                                                                                        if (textView5 != null) {
                                                                                                            return new md0((RelativeLayout) view, imageView, imageView2, imageView3, progressBar, imageView4, textView, equalizerView, imageView5, linearLayout, linearLayout2, linearLayout3, simpleDraweeView, imageView6, imageView7, textView2, linearLayout4, seekBar, textView3, imageView8, imageView9, relativeLayout, relativeLayout2, simpleDraweeView2, textView4, textView5);
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
    public static md0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static md0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_layout_standard_wufun, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22481a;
    }
}
