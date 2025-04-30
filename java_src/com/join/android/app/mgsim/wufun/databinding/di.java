package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentUsercenterNewBackBinding.java */
/* loaded from: classes3.dex */
public final class di implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final RelativeLayout C;
    @NonNull
    public final ImageView D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19370a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19371b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19372c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f19373d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f19374e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19375f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f19376g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19377h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19378i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19379j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f19380k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final GridView f19381l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final GridView f19382m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final GridView f19383n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f19384o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19385p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19386q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final NestedScrollView f19387r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19388s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19389t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f19390u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final RelativeLayout f19391v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f19392w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f19393x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f19394y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f19395z;

    private di(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull GridView gridView, @NonNull GridView gridView2, @NonNull GridView gridView3, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull NestedScrollView nestedScrollView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView3) {
        this.f19370a = relativeLayout;
        this.f19371b = textView;
        this.f19372c = imageView;
        this.f19373d = simpleDraweeView;
        this.f19374e = simpleDraweeView2;
        this.f19375f = imageView2;
        this.f19376g = linearLayout;
        this.f19377h = textView2;
        this.f19378i = linearLayout2;
        this.f19379j = linearLayout3;
        this.f19380k = linearLayout4;
        this.f19381l = gridView;
        this.f19382m = gridView2;
        this.f19383n = gridView3;
        this.f19384o = linearLayout5;
        this.f19385p = textView3;
        this.f19386q = textView4;
        this.f19387r = nestedScrollView;
        this.f19388s = textView5;
        this.f19389t = textView6;
        this.f19390u = textView7;
        this.f19391v = relativeLayout2;
        this.f19392w = textView8;
        this.f19393x = textView9;
        this.f19394y = textView10;
        this.f19395z = textView11;
        this.A = textView12;
        this.B = textView13;
        this.C = relativeLayout3;
        this.D = imageView3;
    }

    @NonNull
    public static di a(@NonNull View view) {
        int i2 = R.id.firstCardTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.firstCardTitle);
        if (textView != null) {
            i2 = R.id.iv_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
            if (imageView != null) {
                i2 = R.id.iv_user_avatar;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar);
                if (simpleDraweeView != null) {
                    i2 = R.id.iv_user_avatar2;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar2);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.iv_user_vip;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_vip);
                        if (imageView2 != null) {
                            i2 = R.id.ll_copper;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_copper);
                            if (linearLayout != null) {
                                i2 = R.id.ll_copperTitle;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ll_copperTitle);
                                if (textView2 != null) {
                                    i2 = R.id.ll_members;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_members);
                                    if (linearLayout2 != null) {
                                        i2 = R.id.ll_svip;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_svip);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.ll_userinfo;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_userinfo);
                                            if (linearLayout4 != null) {
                                                i2 = R.id.mGridView;
                                                GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.mGridView);
                                                if (gridView != null) {
                                                    i2 = R.id.mGridView2;
                                                    GridView gridView2 = (GridView) ViewBindings.findChildViewById(view, R.id.mGridView2);
                                                    if (gridView2 != null) {
                                                        i2 = R.id.mGridView3;
                                                        GridView gridView3 = (GridView) ViewBindings.findChildViewById(view, R.id.mGridView3);
                                                        if (gridView3 != null) {
                                                            i2 = R.id.onekey;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.onekey);
                                                            if (linearLayout5 != null) {
                                                                i2 = R.id.onekeyMessage;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.onekeyMessage);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.onekeyTitle;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.onekeyTitle);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.scroolView;
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.scroolView);
                                                                        if (nestedScrollView != null) {
                                                                            i2 = R.id.seconedCardTitle;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.seconedCardTitle);
                                                                            if (textView5 != null) {
                                                                                i2 = R.id.svipTitle;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.svipTitle);
                                                                                if (textView6 != null) {
                                                                                    i2 = R.id.thirdCardTitle;
                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.thirdCardTitle);
                                                                                    if (textView7 != null) {
                                                                                        i2 = R.id.titleLayout;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.titleLayout);
                                                                                        if (relativeLayout != null) {
                                                                                            i2 = R.id.tv_user_account;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_account);
                                                                                            if (textView8 != null) {
                                                                                                i2 = R.id.tv_user_coppers;
                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_coppers);
                                                                                                if (textView9 != null) {
                                                                                                    i2 = R.id.tv_user_member;
                                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_member);
                                                                                                    if (textView10 != null) {
                                                                                                        i2 = R.id.tv_user_nickname;
                                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_nickname);
                                                                                                        if (textView11 != null) {
                                                                                                            i2 = R.id.tv_user_rank;
                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_rank);
                                                                                                            if (textView12 != null) {
                                                                                                                i2 = R.id.tv_user_svip;
                                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_svip);
                                                                                                                if (textView13 != null) {
                                                                                                                    i2 = R.id.userLayout;
                                                                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.userLayout);
                                                                                                                    if (relativeLayout2 != null) {
                                                                                                                        i2 = R.id.vipCard;
                                                                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.vipCard);
                                                                                                                        if (imageView3 != null) {
                                                                                                                            return new di((RelativeLayout) view, textView, imageView, simpleDraweeView, simpleDraweeView2, imageView2, linearLayout, textView2, linearLayout2, linearLayout3, linearLayout4, gridView, gridView2, gridView3, linearLayout5, textView3, textView4, nestedScrollView, textView5, textView6, textView7, relativeLayout, textView8, textView9, textView10, textView11, textView12, textView13, relativeLayout2, imageView3);
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
    public static di c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static di d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_usercenter_new_back, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19370a;
    }
}
