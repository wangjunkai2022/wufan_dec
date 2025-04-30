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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleProgressView;
import com.join.mgps.customview.MStarBar;
/* compiled from: GamedetailItemIconlayoutBtBinding.java */
/* loaded from: classes3.dex */
public final class gk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20483a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20484b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20485c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f20486d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20487e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20488f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final MStarBar f20489g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20490h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20491i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f20492j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final CircleProgressView f20493k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f20494l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f20495m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f20496n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f20497o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f20498p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f20499q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f20500r;

    private gk(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull MStarBar mStarBar, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout, @NonNull CircleProgressView circleProgressView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull LinearLayout linearLayout4) {
        this.f20483a = relativeLayout;
        this.f20484b = textView;
        this.f20485c = textView2;
        this.f20486d = simpleDraweeView;
        this.f20487e = textView3;
        this.f20488f = textView4;
        this.f20489g = mStarBar;
        this.f20490h = textView5;
        this.f20491i = textView6;
        this.f20492j = linearLayout;
        this.f20493k = circleProgressView;
        this.f20494l = imageView;
        this.f20495m = linearLayout2;
        this.f20496n = relativeLayout2;
        this.f20497o = linearLayout3;
        this.f20498p = textView7;
        this.f20499q = textView8;
        this.f20500r = linearLayout4;
    }

    @NonNull
    public static gk a(@NonNull View view) {
        int i2 = R.id.appCompany;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appCompany);
        if (textView != null) {
            i2 = R.id.appDownloadCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appDownloadCount);
            if (textView2 != null) {
                i2 = R.id.appIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
                if (simpleDraweeView != null) {
                    i2 = R.id.appName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
                    if (textView3 != null) {
                        i2 = R.id.appSize;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
                        if (textView4 != null) {
                            i2 = R.id.comment_head_mstarBar;
                            MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
                            if (mStarBar != null) {
                                i2 = R.id.comment_head_num_tx;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
                                if (textView5 != null) {
                                    i2 = R.id.comment_head_point_tx;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_point_tx);
                                    if (textView6 != null) {
                                        i2 = R.id.companyLayout;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.companyLayout);
                                        if (linearLayout != null) {
                                            i2 = R.id.gameScore;
                                            CircleProgressView circleProgressView = (CircleProgressView) ViewBindings.findChildViewById(view, R.id.gameScore);
                                            if (circleProgressView != null) {
                                                i2 = R.id.giftImagex;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftImagex);
                                                if (imageView != null) {
                                                    i2 = R.id.layoutGiftx;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutGiftx);
                                                    if (linearLayout2 != null) {
                                                        RelativeLayout relativeLayout = (RelativeLayout) view;
                                                        i2 = R.id.scoreLayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.scoreLayout);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.textView47;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView47);
                                                            if (textView7 != null) {
                                                                i2 = R.id.textView72;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView72);
                                                                if (textView8 != null) {
                                                                    i2 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                    if (linearLayout4 != null) {
                                                                        return new gk(relativeLayout, textView, textView2, simpleDraweeView, textView3, textView4, mStarBar, textView5, textView6, linearLayout, circleProgressView, imageView, linearLayout2, relativeLayout, linearLayout3, textView7, textView8, linearLayout4);
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
    public static gk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_iconlayout_bt, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20483a;
    }
}
