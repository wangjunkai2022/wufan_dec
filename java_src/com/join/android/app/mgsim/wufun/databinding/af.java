package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightGameItemBinding.java */
/* loaded from: classes3.dex */
public final class af implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final ImageView C;
    @NonNull
    public final ImageView D;
    @NonNull
    public final ImageView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final ImageView G;
    @NonNull
    public final ImageView H;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18146a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18147b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18148c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18149d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18150e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18151f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18152g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f18153h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f18154i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f18155j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f18156k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f18157l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f18158m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18159n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18160o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f18161p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ProgressBar f18162q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ProgressBar f18163r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ProgressBar f18164s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ProgressBar f18165t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ProgressBar f18166u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final ProgressBar f18167v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f18168w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f18169x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f18170y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f18171z;

    private af(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull ProgressBar progressBar3, @NonNull ProgressBar progressBar4, @NonNull ProgressBar progressBar5, @NonNull ProgressBar progressBar6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6) {
        this.f18146a = linearLayout;
        this.f18147b = textView;
        this.f18148c = textView2;
        this.f18149d = textView3;
        this.f18150e = linearLayout2;
        this.f18151f = linearLayout3;
        this.f18152g = linearLayout4;
        this.f18153h = simpleDraweeView;
        this.f18154i = simpleDraweeView2;
        this.f18155j = simpleDraweeView3;
        this.f18156k = linearLayout5;
        this.f18157l = linearLayout6;
        this.f18158m = linearLayout7;
        this.f18159n = textView4;
        this.f18160o = textView5;
        this.f18161p = textView6;
        this.f18162q = progressBar;
        this.f18163r = progressBar2;
        this.f18164s = progressBar3;
        this.f18165t = progressBar4;
        this.f18166u = progressBar5;
        this.f18167v = progressBar6;
        this.f18168w = textView7;
        this.f18169x = textView8;
        this.f18170y = textView9;
        this.f18171z = textView10;
        this.A = textView11;
        this.B = textView12;
        this.C = imageView;
        this.D = imageView2;
        this.E = imageView3;
        this.F = imageView4;
        this.G = imageView5;
        this.H = imageView6;
    }

    @NonNull
    public static af a(@NonNull View view) {
        int i2 = R.id.appSizeTvLeft;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSizeTvLeft);
        if (textView != null) {
            i2 = R.id.appSizeTvMid;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appSizeTvMid);
            if (textView2 != null) {
                i2 = R.id.appSizeTvRight;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appSizeTvRight);
                if (textView3 != null) {
                    i2 = R.id.downloadStatusLeft;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadStatusLeft);
                    if (linearLayout != null) {
                        i2 = R.id.downloadStatusMid;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadStatusMid);
                        if (linearLayout2 != null) {
                            i2 = R.id.downloadStatusRight;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadStatusRight);
                            if (linearLayout3 != null) {
                                i2 = R.id.fightImgLeft;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightImgLeft);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.fightImgMid;
                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightImgMid);
                                    if (simpleDraweeView2 != null) {
                                        i2 = R.id.fightImgRight;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightImgRight);
                                        if (simpleDraweeView3 != null) {
                                            i2 = R.id.fightLayoutLeft;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fightLayoutLeft);
                                            if (linearLayout4 != null) {
                                                i2 = R.id.fightLayoutMid;
                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fightLayoutMid);
                                                if (linearLayout5 != null) {
                                                    i2 = R.id.fightLayoutRight;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fightLayoutRight);
                                                    if (linearLayout6 != null) {
                                                        i2 = R.id.fightNameIvRight;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.fightNameIvRight);
                                                        if (textView4 != null) {
                                                            i2 = R.id.fightNameTvLeft;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.fightNameTvLeft);
                                                            if (textView5 != null) {
                                                                i2 = R.id.fightNameTvMid;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.fightNameTvMid);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.progressBarLeft;
                                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarLeft);
                                                                    if (progressBar != null) {
                                                                        i2 = R.id.progressBarMid;
                                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarMid);
                                                                        if (progressBar2 != null) {
                                                                            i2 = R.id.progressBarRight;
                                                                            ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarRight);
                                                                            if (progressBar3 != null) {
                                                                                i2 = R.id.progressBarZipLeft;
                                                                                ProgressBar progressBar4 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZipLeft);
                                                                                if (progressBar4 != null) {
                                                                                    i2 = R.id.progressBarZipMid;
                                                                                    ProgressBar progressBar5 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZipMid);
                                                                                    if (progressBar5 != null) {
                                                                                        i2 = R.id.progressBarZipRight;
                                                                                        ProgressBar progressBar6 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZipRight);
                                                                                        if (progressBar6 != null) {
                                                                                            i2 = R.id.speedTvLeft;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.speedTvLeft);
                                                                                            if (textView7 != null) {
                                                                                                i2 = R.id.speedTvMid;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.speedTvMid);
                                                                                                if (textView8 != null) {
                                                                                                    i2 = R.id.speedTvRight;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.speedTvRight);
                                                                                                    if (textView9 != null) {
                                                                                                        i2 = R.id.statusBtnLeft;
                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.statusBtnLeft);
                                                                                                        if (textView10 != null) {
                                                                                                            i2 = R.id.statusBtnMid;
                                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.statusBtnMid);
                                                                                                            if (textView11 != null) {
                                                                                                                i2 = R.id.statusBtnRight;
                                                                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.statusBtnRight);
                                                                                                                if (textView12 != null) {
                                                                                                                    i2 = R.id.statusImgLeft;
                                                                                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.statusImgLeft);
                                                                                                                    if (imageView != null) {
                                                                                                                        i2 = R.id.statusImgMid;
                                                                                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.statusImgMid);
                                                                                                                        if (imageView2 != null) {
                                                                                                                            i2 = R.id.statusImgRight;
                                                                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.statusImgRight);
                                                                                                                            if (imageView3 != null) {
                                                                                                                                i2 = R.id.tagImgLeft;
                                                                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.tagImgLeft);
                                                                                                                                if (imageView4 != null) {
                                                                                                                                    i2 = R.id.tagImgMid;
                                                                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.tagImgMid);
                                                                                                                                    if (imageView5 != null) {
                                                                                                                                        i2 = R.id.tagImgRight;
                                                                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.tagImgRight);
                                                                                                                                        if (imageView6 != null) {
                                                                                                                                            return new af((LinearLayout) view, textView, textView2, textView3, linearLayout, linearLayout2, linearLayout3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, linearLayout4, linearLayout5, linearLayout6, textView4, textView5, textView6, progressBar, progressBar2, progressBar3, progressBar4, progressBar5, progressBar6, textView7, textView8, textView9, textView10, textView11, textView12, imageView, imageView2, imageView3, imageView4, imageView5, imageView6);
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
    public static af c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static af d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fight_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18146a;
    }
}
