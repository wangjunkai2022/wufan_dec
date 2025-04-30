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
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;
/* compiled from: VideoLayoutMultiWufunBinding.java */
/* loaded from: classes3.dex */
public final class ld0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22110a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22111b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22112c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f22113d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22114e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22115f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f22116g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f22117h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ENDownloadView f22118i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f22119j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SeekBar f22120k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f22121l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f22122m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ENPlayView f22123n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final FrameLayout f22124o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f22125p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final SimpleDraweeView f22126q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f22127r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f22128s;

    private ld0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ENDownloadView eNDownloadView, @NonNull ImageView imageView4, @NonNull SeekBar seekBar, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView5, @NonNull ENPlayView eNPlayView, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22110a = relativeLayout;
        this.f22111b = imageView;
        this.f22112c = imageView2;
        this.f22113d = progressBar;
        this.f22114e = textView;
        this.f22115f = imageView3;
        this.f22116g = linearLayout;
        this.f22117h = linearLayout2;
        this.f22118i = eNDownloadView;
        this.f22119j = imageView4;
        this.f22120k = seekBar;
        this.f22121l = simpleDraweeView;
        this.f22122m = imageView5;
        this.f22123n = eNPlayView;
        this.f22124o = frameLayout;
        this.f22125p = relativeLayout2;
        this.f22126q = simpleDraweeView2;
        this.f22127r = textView2;
        this.f22128s = textView3;
    }

    @NonNull
    public static ld0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.back_tiny;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_tiny);
            if (imageView2 != null) {
                i2 = R.id.bottom_progressbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.bottom_progressbar);
                if (progressBar != null) {
                    i2 = R.id.current;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.current);
                    if (textView != null) {
                        i2 = R.id.fullscreen;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.fullscreen);
                        if (imageView3 != null) {
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
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock_screen);
                                        if (imageView4 != null) {
                                            i2 = R.id.progress;
                                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.progress);
                                            if (seekBar != null) {
                                                i2 = R.id.sdv_image_bluer;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image_bluer);
                                                if (simpleDraweeView != null) {
                                                    i2 = R.id.small_close;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_close);
                                                    if (imageView5 != null) {
                                                        i2 = R.id.start;
                                                        ENPlayView eNPlayView = (ENPlayView) ViewBindings.findChildViewById(view, R.id.start);
                                                        if (eNPlayView != null) {
                                                            i2 = R.id.surface_container;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
                                                            if (frameLayout != null) {
                                                                i2 = R.id.thumb;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.thumb);
                                                                if (relativeLayout != null) {
                                                                    i2 = R.id.thumbImageView;
                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.thumbImageView);
                                                                    if (simpleDraweeView2 != null) {
                                                                        i2 = R.id.title;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                        if (textView2 != null) {
                                                                            i2 = R.id.total;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.total);
                                                                            if (textView3 != null) {
                                                                                return new ld0((RelativeLayout) view, imageView, imageView2, progressBar, textView, imageView3, linearLayout, linearLayout2, eNDownloadView, imageView4, seekBar, simpleDraweeView, imageView5, eNPlayView, frameLayout, relativeLayout, simpleDraweeView2, textView2, textView3);
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
    public static ld0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ld0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_layout_multi_wufun, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22110a;
    }
}
