package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.AutoScrollViewPager;
/* compiled from: NewArenaListHeaderBinding.java */
/* loaded from: classes3.dex */
public final class m50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22345a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22346b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final AutoScrollViewPager f22347c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22348d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22349e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22350f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22351g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f22352h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22353i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22354j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22355k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22356l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f22357m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22358n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22359o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f22360p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f22361q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f22362r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f22363s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final LinearLayout f22364t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f22365u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f22366v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f22367w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f22368x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f22369y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f22370z;

    private m50(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull AutoScrollViewPager autoScrollViewPager, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull LinearLayout linearLayout2, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16) {
        this.f22345a = linearLayout;
        this.f22346b = simpleDraweeView;
        this.f22347c = autoScrollViewPager;
        this.f22348d = textView;
        this.f22349e = textView2;
        this.f22350f = textView3;
        this.f22351g = textView4;
        this.f22352h = relativeLayout;
        this.f22353i = textView5;
        this.f22354j = textView6;
        this.f22355k = textView7;
        this.f22356l = textView8;
        this.f22357m = linearLayout2;
        this.f22358n = textView9;
        this.f22359o = textView10;
        this.f22360p = textView11;
        this.f22361q = linearLayout3;
        this.f22362r = linearLayout4;
        this.f22363s = linearLayout5;
        this.f22364t = linearLayout6;
        this.f22365u = linearLayout7;
        this.f22366v = textView12;
        this.f22367w = textView13;
        this.f22368x = textView14;
        this.f22369y = textView15;
        this.f22370z = textView16;
    }

    @NonNull
    public static m50 a(@NonNull View view) {
        int i2 = R.id.ad_iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ad_iv_icon);
        if (simpleDraweeView != null) {
            i2 = R.id.ad_viewpager;
            AutoScrollViewPager autoScrollViewPager = (AutoScrollViewPager) ViewBindings.findChildViewById(view, R.id.ad_viewpager);
            if (autoScrollViewPager != null) {
                i2 = R.id.event_gamename_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.event_gamename_tv);
                if (textView != null) {
                    i2 = R.id.event_nike_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.event_nike_tv);
                    if (textView2 != null) {
                        i2 = R.id.event_num_after_tv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.event_num_after_tv);
                        if (textView3 != null) {
                            i2 = R.id.event_num_tv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.event_num_tv);
                            if (textView4 != null) {
                                i2 = R.id.event_root_rl;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.event_root_rl);
                                if (relativeLayout != null) {
                                    i2 = R.id.fcLine;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.fcLine);
                                    if (textView5 != null) {
                                        i2 = R.id.fc_num_tv;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.fc_num_tv);
                                        if (textView6 != null) {
                                            i2 = R.id.gbaLine;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.gbaLine);
                                            if (textView7 != null) {
                                                i2 = R.id.jieji_num_tv;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.jieji_num_tv);
                                                if (textView8 != null) {
                                                    i2 = R.id.jingxuan;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.jingxuan);
                                                    if (linearLayout != null) {
                                                        i2 = R.id.jingxuanLine;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.jingxuanLine);
                                                        if (textView9 != null) {
                                                            i2 = R.id.jingxuantext;
                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.jingxuantext);
                                                            if (textView10 != null) {
                                                                i2 = R.id.latest_num_tv;
                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.latest_num_tv);
                                                                if (textView11 != null) {
                                                                    i2 = R.id.ll_fast_entrance;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_fast_entrance);
                                                                    if (linearLayout2 != null) {
                                                                        i2 = R.id.ll_fc;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_fc);
                                                                        if (linearLayout3 != null) {
                                                                            i2 = R.id.ll_jieji;
                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_jieji);
                                                                            if (linearLayout4 != null) {
                                                                                i2 = R.id.ll_latest;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_latest);
                                                                                if (linearLayout5 != null) {
                                                                                    i2 = R.id.ll_others;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_others);
                                                                                    if (linearLayout6 != null) {
                                                                                        i2 = R.id.newLine;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.newLine);
                                                                                        if (textView12 != null) {
                                                                                            i2 = R.id.tvFC;
                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tvFC);
                                                                                            if (textView13 != null) {
                                                                                                i2 = R.id.tvGBA;
                                                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGBA);
                                                                                                if (textView14 != null) {
                                                                                                    i2 = R.id.tvJingxuan;
                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tvJingxuan);
                                                                                                    if (textView15 != null) {
                                                                                                        i2 = R.id.tvNew;
                                                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNew);
                                                                                                        if (textView16 != null) {
                                                                                                            return new m50((LinearLayout) view, simpleDraweeView, autoScrollViewPager, textView, textView2, textView3, textView4, relativeLayout, textView5, textView6, textView7, textView8, linearLayout, textView9, textView10, textView11, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView12, textView13, textView14, textView15, textView16);
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
    public static m50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.new_arena_list_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22345a;
    }
}
