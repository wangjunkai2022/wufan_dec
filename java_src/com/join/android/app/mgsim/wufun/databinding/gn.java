package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameworldFightRecoderLayoutBinding.java */
/* loaded from: classes3.dex */
public final class gn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f20510a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20511b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20512c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20513d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20514e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ListView f20515f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20516g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f20517h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20518i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f20519j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20520k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f20521l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20522m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20523n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f20524o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f20525p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f20526q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final Button f20527r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f20528s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final SimpleDraweeView f20529t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final FrameLayout f20530u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f20531v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final FrameLayout f20532w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final Button f20533x;

    private gn(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull ProgressBar progressBar, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull Button button, @NonNull TextView textView11, @NonNull SimpleDraweeView simpleDraweeView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView12, @NonNull FrameLayout frameLayout3, @NonNull Button button2) {
        this.f20510a = frameLayout;
        this.f20511b = textView;
        this.f20512c = textView2;
        this.f20513d = textView3;
        this.f20514e = linearLayout;
        this.f20515f = listView;
        this.f20516g = imageView;
        this.f20517h = linearLayout2;
        this.f20518i = textView4;
        this.f20519j = progressBar;
        this.f20520k = textView5;
        this.f20521l = imageView2;
        this.f20522m = textView6;
        this.f20523n = textView7;
        this.f20524o = textView8;
        this.f20525p = textView9;
        this.f20526q = textView10;
        this.f20527r = button;
        this.f20528s = textView11;
        this.f20529t = simpleDraweeView;
        this.f20530u = frameLayout2;
        this.f20531v = textView12;
        this.f20532w = frameLayout3;
        this.f20533x = button2;
    }

    @NonNull
    public static gn a(@NonNull View view) {
        int i2 = R.id.changci;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.changci);
        if (textView != null) {
            i2 = R.id.failedMessage;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
            if (textView2 != null) {
                i2 = R.id.jibie;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.jibie);
                if (textView3 != null) {
                    i2 = R.id.layoutMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutMain);
                    if (linearLayout != null) {
                        i2 = R.id.listview;
                        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
                        if (listView != null) {
                            i2 = R.id.lodingBackImage;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                            if (imageView != null) {
                                i2 = R.id.loding_faile;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_faile);
                                if (linearLayout2 != null) {
                                    i2 = R.id.pabi;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pabi);
                                    if (textView4 != null) {
                                        i2 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                        if (progressBar != null) {
                                            i2 = R.id.progressBarTxt;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.progressBarTxt);
                                            if (textView5 != null) {
                                                i2 = R.id.relodingimag;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                                                if (imageView2 != null) {
                                                    i2 = R.id.saishiAllChangci;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.saishiAllChangci);
                                                    if (textView6 != null) {
                                                        i2 = R.id.saishiFailed;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.saishiFailed);
                                                        if (textView7 != null) {
                                                            i2 = R.id.saishiSenglv;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.saishiSenglv);
                                                            if (textView8 != null) {
                                                                i2 = R.id.saishiType;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.saishiType);
                                                                if (textView9 != null) {
                                                                    i2 = R.id.saishiWinnumber;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.saishiWinnumber);
                                                                    if (textView10 != null) {
                                                                        i2 = R.id.setNetwork;
                                                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                                                        if (button != null) {
                                                                            i2 = R.id.shenglv;
                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.shenglv);
                                                                            if (textView11 != null) {
                                                                                i2 = R.id.userIconImage;
                                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIconImage);
                                                                                if (simpleDraweeView != null) {
                                                                                    i2 = R.id.userIconImage_lay;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.userIconImage_lay);
                                                                                    if (frameLayout != null) {
                                                                                        i2 = R.id.userName;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                                                                        if (textView12 != null) {
                                                                                            i2 = R.id.userNameLay;
                                                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.userNameLay);
                                                                                            if (frameLayout2 != null) {
                                                                                                i2 = R.id.world_back;
                                                                                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.world_back);
                                                                                                if (button2 != null) {
                                                                                                    return new gn((FrameLayout) view, textView, textView2, textView3, linearLayout, listView, imageView, linearLayout2, textView4, progressBar, textView5, imageView2, textView6, textView7, textView8, textView9, textView10, button, textView11, simpleDraweeView, frameLayout, textView12, frameLayout2, button2);
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
    public static gn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameworld_fight_recoder_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f20510a;
    }
}
