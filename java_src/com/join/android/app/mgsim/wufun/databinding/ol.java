package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.join.mgps.activity.gamedetail.FulllScreenVideoView;
/* compiled from: GamedetailVideoFragmentBinding.java */
/* loaded from: classes3.dex */
public final class ol implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23290a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f23291b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23292c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23293d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f23294e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23295f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f23296g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23297h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23298i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f23299j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23300k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f23301l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f23302m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f23303n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23304o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23305p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f23306q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f23307r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final RelativeLayout f23308s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f23309t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final View f23310u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f23311v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final RelativeLayout f23312w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final FulllScreenVideoView f23313x;

    private ol(@NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView4, @NonNull View view, @NonNull TextView textView7, @NonNull RelativeLayout relativeLayout4, @NonNull FulllScreenVideoView fulllScreenVideoView) {
        this.f23290a = relativeLayout;
        this.f23291b = progressBar;
        this.f23292c = imageView;
        this.f23293d = textView;
        this.f23294e = simpleDraweeView;
        this.f23295f = textView2;
        this.f23296g = simpleDraweeView2;
        this.f23297h = linearLayout;
        this.f23298i = textView3;
        this.f23299j = simpleDraweeView3;
        this.f23300k = textView4;
        this.f23301l = relativeLayout2;
        this.f23302m = imageView2;
        this.f23303n = linearLayout2;
        this.f23304o = textView5;
        this.f23305p = textView6;
        this.f23306q = imageView3;
        this.f23307r = linearLayout3;
        this.f23308s = relativeLayout3;
        this.f23309t = imageView4;
        this.f23310u = view;
        this.f23311v = textView7;
        this.f23312w = relativeLayout4;
        this.f23313x = fulllScreenVideoView;
    }

    @NonNull
    public static ol a(@NonNull View view) {
        int i2 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
        if (progressBar != null) {
            i2 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
            if (imageView != null) {
                i2 = R.id.content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView != null) {
                    i2 = R.id.cover;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
                    if (simpleDraweeView != null) {
                        i2 = R.id.coverText;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.coverText);
                        if (textView2 != null) {
                            i2 = R.id.coverback;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.coverback);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.gameInfoLayout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameInfoLayout);
                                if (linearLayout != null) {
                                    i2 = R.id.gameName;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                                    if (textView3 != null) {
                                        i2 = R.id.icon;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                                        if (simpleDraweeView3 != null) {
                                            i2 = R.id.instalButtomButn;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                                            if (textView4 != null) {
                                                i2 = R.id.instalbutnLayout;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                                                if (relativeLayout != null) {
                                                    i2 = R.id.iv_back;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
                                                    if (imageView2 != null) {
                                                        i2 = R.id.layout;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout);
                                                        if (linearLayout2 != null) {
                                                            i2 = R.id.moneyText;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                            if (textView5 != null) {
                                                                i2 = R.id.percent;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.playIcon;
                                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.playIcon);
                                                                    if (imageView3 != null) {
                                                                        i2 = R.id.progress_layout;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                                                        if (linearLayout3 != null) {
                                                                            i2 = R.id.progressbarLayout;
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                                            if (relativeLayout2 != null) {
                                                                                i2 = R.id.sound;
                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.sound);
                                                                                if (imageView4 != null) {
                                                                                    i2 = R.id.statuHVIew;
                                                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.statuHVIew);
                                                                                    if (findChildViewById != null) {
                                                                                        i2 = R.id.tag;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tag);
                                                                                        if (textView7 != null) {
                                                                                            i2 = R.id.titleTransfer;
                                                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.titleTransfer);
                                                                                            if (relativeLayout3 != null) {
                                                                                                i2 = R.id.videoView;
                                                                                                FulllScreenVideoView fulllScreenVideoView = (FulllScreenVideoView) ViewBindings.findChildViewById(view, R.id.videoView);
                                                                                                if (fulllScreenVideoView != null) {
                                                                                                    return new ol((RelativeLayout) view, progressBar, imageView, textView, simpleDraweeView, textView2, simpleDraweeView2, linearLayout, textView3, simpleDraweeView3, textView4, relativeLayout, imageView2, linearLayout2, textView5, textView6, imageView3, linearLayout3, relativeLayout2, imageView4, findChildViewById, textView7, relativeLayout3, fulllScreenVideoView);
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
    public static ol c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ol d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_video_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23290a;
    }
}
