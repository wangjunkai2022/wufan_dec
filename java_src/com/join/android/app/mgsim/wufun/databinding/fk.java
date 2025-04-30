package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleProgressView;
import com.join.mgps.customview.MStarBar;
/* compiled from: GamedetailItemIconlayoutBinding.java */
/* loaded from: classes3.dex */
public final class fk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20162a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20163b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20164c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f20165d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20166e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20167f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f20168g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final MStarBar f20169h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20170i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20171j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f20172k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final CircleProgressView f20173l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f20174m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f20175n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f20176o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f20177p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f20178q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f20179r;

    private fk(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull MStarBar mStarBar, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout3, @NonNull CircleProgressView circleProgressView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull LinearLayout linearLayout6) {
        this.f20162a = linearLayout;
        this.f20163b = textView;
        this.f20164c = textView2;
        this.f20165d = simpleDraweeView;
        this.f20166e = textView3;
        this.f20167f = textView4;
        this.f20168g = linearLayout2;
        this.f20169h = mStarBar;
        this.f20170i = textView5;
        this.f20171j = textView6;
        this.f20172k = linearLayout3;
        this.f20173l = circleProgressView;
        this.f20174m = imageView;
        this.f20175n = linearLayout4;
        this.f20176o = linearLayout5;
        this.f20177p = textView7;
        this.f20178q = textView8;
        this.f20179r = linearLayout6;
    }

    @NonNull
    public static fk a(@NonNull View view) {
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
                            i2 = R.id.btTaglayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btTaglayout);
                            if (linearLayout != null) {
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
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.companyLayout);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.gameScore;
                                                CircleProgressView circleProgressView = (CircleProgressView) ViewBindings.findChildViewById(view, R.id.gameScore);
                                                if (circleProgressView != null) {
                                                    i2 = R.id.giftImagex;
                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftImagex);
                                                    if (imageView != null) {
                                                        i2 = R.id.layoutGiftx;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutGiftx);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.scoreLayout;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.scoreLayout);
                                                            if (linearLayout4 != null) {
                                                                i2 = R.id.textView47;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView47);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.textView72;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView72);
                                                                    if (textView8 != null) {
                                                                        i2 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                        if (linearLayout5 != null) {
                                                                            return new fk((LinearLayout) view, textView, textView2, simpleDraweeView, textView3, textView4, linearLayout, mStarBar, textView5, textView6, linearLayout2, circleProgressView, imageView, linearLayout3, linearLayout4, textView7, textView8, linearLayout5);
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
    public static fk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_iconlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20162a;
    }
}
