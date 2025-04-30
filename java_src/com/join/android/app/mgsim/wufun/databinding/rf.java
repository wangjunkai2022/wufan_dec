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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
/* compiled from: ForumSearchHintActivityBinding.java */
/* loaded from: classes3.dex */
public final class rf implements ViewBinding {
    @NonNull
    public final WrapContentGridView A;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24383a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24384b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f24385c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24386d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f24387e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24388f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f24389g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f24390h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f24391i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f24392j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f24393k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final la0 f24394l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final MarqueeTextView f24395m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final MarqueeTextView f24396n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final MarqueeTextView f24397o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final MarqueeTextView f24398p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final MarqueeTextView f24399q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final MarqueeTextView f24400r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24401s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f24402t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f24403u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f24404v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f24405w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f24406x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f24407y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f24408z;

    private rf(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6, @NonNull LinearLayout linearLayout3, @NonNull la0 la0Var, @NonNull MarqueeTextView marqueeTextView, @NonNull MarqueeTextView marqueeTextView2, @NonNull MarqueeTextView marqueeTextView3, @NonNull MarqueeTextView marqueeTextView4, @NonNull MarqueeTextView marqueeTextView5, @NonNull MarqueeTextView marqueeTextView6, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull WrapContentGridView wrapContentGridView) {
        this.f24383a = linearLayout;
        this.f24384b = linearLayout2;
        this.f24385c = xListView2;
        this.f24386d = textView;
        this.f24387e = relativeLayout;
        this.f24388f = relativeLayout2;
        this.f24389g = relativeLayout3;
        this.f24390h = relativeLayout4;
        this.f24391i = relativeLayout5;
        this.f24392j = relativeLayout6;
        this.f24393k = linearLayout3;
        this.f24394l = la0Var;
        this.f24395m = marqueeTextView;
        this.f24396n = marqueeTextView2;
        this.f24397o = marqueeTextView3;
        this.f24398p = marqueeTextView4;
        this.f24399q = marqueeTextView5;
        this.f24400r = marqueeTextView6;
        this.f24401s = textView2;
        this.f24402t = textView3;
        this.f24403u = textView4;
        this.f24404v = textView5;
        this.f24405w = textView6;
        this.f24406x = textView7;
        this.f24407y = textView8;
        this.f24408z = textView9;
        this.A = wrapContentGridView;
    }

    @NonNull
    public static rf a(@NonNull View view) {
        int i2 = R.id.allSearch;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.allSearch);
        if (linearLayout != null) {
            i2 = R.id.autoListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.autoListView);
            if (xListView2 != null) {
                i2 = R.id.change_data;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.change_data);
                if (textView != null) {
                    i2 = R.id.layout1;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout1);
                    if (relativeLayout != null) {
                        i2 = R.id.layout2;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout2);
                        if (relativeLayout2 != null) {
                            i2 = R.id.layout3;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout3);
                            if (relativeLayout3 != null) {
                                i2 = R.id.layout4;
                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout4);
                                if (relativeLayout4 != null) {
                                    i2 = R.id.layout5;
                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout5);
                                    if (relativeLayout5 != null) {
                                        i2 = R.id.layout6;
                                        RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout6);
                                        if (relativeLayout6 != null) {
                                            i2 = R.id.llHotSearch;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHotSearch);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.search_bar_layout;
                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.search_bar_layout);
                                                if (findChildViewById != null) {
                                                    la0 a4 = la0.a(findChildViewById);
                                                    i2 = R.id.text1;
                                                    MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text1);
                                                    if (marqueeTextView != null) {
                                                        i2 = R.id.text2;
                                                        MarqueeTextView marqueeTextView2 = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text2);
                                                        if (marqueeTextView2 != null) {
                                                            i2 = R.id.text3;
                                                            MarqueeTextView marqueeTextView3 = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text3);
                                                            if (marqueeTextView3 != null) {
                                                                i2 = R.id.text4;
                                                                MarqueeTextView marqueeTextView4 = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text4);
                                                                if (marqueeTextView4 != null) {
                                                                    i2 = R.id.text5;
                                                                    MarqueeTextView marqueeTextView5 = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text5);
                                                                    if (marqueeTextView5 != null) {
                                                                        i2 = R.id.text6;
                                                                        MarqueeTextView marqueeTextView6 = (MarqueeTextView) ViewBindings.findChildViewById(view, R.id.text6);
                                                                        if (marqueeTextView6 != null) {
                                                                            i2 = R.id.textView;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                                                            if (textView2 != null) {
                                                                                i2 = R.id.textView2;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                                                                if (textView3 != null) {
                                                                                    i2 = R.id.tv1;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                                                                                    if (textView4 != null) {
                                                                                        i2 = R.id.tv2;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                                                                                        if (textView5 != null) {
                                                                                            i2 = R.id.tv3;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv3);
                                                                                            if (textView6 != null) {
                                                                                                i2 = R.id.tv4;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv4);
                                                                                                if (textView7 != null) {
                                                                                                    i2 = R.id.tv5;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv5);
                                                                                                    if (textView8 != null) {
                                                                                                        i2 = R.id.tv6;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv6);
                                                                                                        if (textView9 != null) {
                                                                                                            i2 = R.id.wrapGridView;
                                                                                                            WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.wrapGridView);
                                                                                                            if (wrapContentGridView != null) {
                                                                                                                return new rf((LinearLayout) view, linearLayout, xListView2, textView, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, linearLayout2, a4, marqueeTextView, marqueeTextView2, marqueeTextView3, marqueeTextView4, marqueeTextView5, marqueeTextView6, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, wrapContentGridView);
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
    public static rf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_search_hint_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24383a;
    }
}
