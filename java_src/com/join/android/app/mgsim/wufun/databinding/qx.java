package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
/* compiled from: MgForumForumGiftDetailActivityBinding.java */
/* loaded from: classes3.dex */
public final class qx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24082a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f24083b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24084c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24085d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24086e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f24087f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24088g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24089h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f24090i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24091j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24092k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24093l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24094m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f24095n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final Button f24096o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f24097p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ForumLoadingView f24098q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f24099r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24100s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final Button f24101t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f24102u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final LinearLayout f24103v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final LinearLayout f24104w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final Button f24105x;

    private qx(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout2, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull Button button, @NonNull ImageView imageView, @NonNull ForumLoadingView forumLoadingView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView11, @NonNull Button button2, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull Button button3) {
        this.f24082a = linearLayout;
        this.f24083b = j00Var;
        this.f24084c = textView;
        this.f24085d = textView2;
        this.f24086e = textView3;
        this.f24087f = simpleDraweeView;
        this.f24088g = textView4;
        this.f24089h = textView5;
        this.f24090i = linearLayout2;
        this.f24091j = textView6;
        this.f24092k = textView7;
        this.f24093l = textView8;
        this.f24094m = textView9;
        this.f24095n = textView10;
        this.f24096o = button;
        this.f24097p = imageView;
        this.f24098q = forumLoadingView;
        this.f24099r = linearLayout3;
        this.f24100s = textView11;
        this.f24101t = button2;
        this.f24102u = linearLayout4;
        this.f24103v = linearLayout5;
        this.f24104w = linearLayout6;
        this.f24105x = button3;
    }

    @NonNull
    public static qx a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.cdkNum;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cdkNum);
            if (textView != null) {
                i2 = R.id.giftContent;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftContent);
                if (textView2 != null) {
                    i2 = R.id.giftExpireDate;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.giftExpireDate);
                    if (textView3 != null) {
                        i2 = R.id.giftIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.giftIcon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.giftName;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.giftName);
                            if (textView4 != null) {
                                i2 = R.id.giftRetain;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.giftRetain);
                                if (textView5 != null) {
                                    i2 = R.id.giftRetainLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.giftRetainLayout);
                                    if (linearLayout != null) {
                                        i2 = R.id.giftRetainTop;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.giftRetainTop);
                                        if (textView6 != null) {
                                            i2 = R.id.giftTip;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.giftTip);
                                            if (textView7 != null) {
                                                i2 = R.id.giftTitle;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.giftTitle);
                                                if (textView8 != null) {
                                                    i2 = R.id.giftUseContent;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.giftUseContent);
                                                    if (textView9 != null) {
                                                        i2 = R.id.giftUseTitle;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.giftUseTitle);
                                                        if (textView10 != null) {
                                                            i2 = R.id.goToOem;
                                                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.goToOem);
                                                            if (button != null) {
                                                                i2 = R.id.imageView2;
                                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
                                                                if (imageView != null) {
                                                                    i2 = R.id.loadingView;
                                                                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                                                                    if (forumLoadingView != null) {
                                                                        i2 = R.id.myGiftPackage;
                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.myGiftPackage);
                                                                        if (linearLayout2 != null) {
                                                                            i2 = R.id.myGiftPackageCount;
                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.myGiftPackageCount);
                                                                            if (textView11 != null) {
                                                                                i2 = R.id.oemType3Tip;
                                                                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.oemType3Tip);
                                                                                if (button2 != null) {
                                                                                    i2 = R.id.oemTypeLayout1;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.oemTypeLayout1);
                                                                                    if (linearLayout3 != null) {
                                                                                        i2 = R.id.oemTypeLayout2;
                                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.oemTypeLayout2);
                                                                                        if (linearLayout4 != null) {
                                                                                            i2 = R.id.oemTypeLayout3;
                                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.oemTypeLayout3);
                                                                                            if (linearLayout5 != null) {
                                                                                                i2 = R.id.receiveButton;
                                                                                                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.receiveButton);
                                                                                                if (button3 != null) {
                                                                                                    return new qx((LinearLayout) view, a4, textView, textView2, textView3, simpleDraweeView, textView4, textView5, linearLayout, textView6, textView7, textView8, textView9, textView10, button, imageView, forumLoadingView, linearLayout2, textView11, button2, linearLayout3, linearLayout4, linearLayout5, button3);
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
    public static qx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_gift_detail_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24082a;
    }
}
