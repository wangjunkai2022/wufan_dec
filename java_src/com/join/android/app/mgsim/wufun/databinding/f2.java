package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
/* compiled from: ActivityTestBinding.java */
/* loaded from: classes3.dex */
public final class f2 implements ViewBinding {
    @NonNull
    public final RelativeLayout A;
    @NonNull
    public final LinearLayout B;
    @NonNull
    public final TextView C;
    @NonNull
    public final FrameLayout D;
    @NonNull
    public final ImageView E;
    @NonNull
    public final LinearLayout F;
    @NonNull
    public final TextView G;
    @NonNull
    public final TextView H;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f19976a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f19977b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19978c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19979d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f19980e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19981f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19982g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f19983h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f19984i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19985j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19986k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f19987l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f19988m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f19989n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f19990o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f19991p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f19992q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f19993r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final RelativeLayout f19994s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f19995t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f19996u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f19997v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final ImageView f19998w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final RelativeLayout f19999x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f20000y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final ImageView f20001z;

    private f2(@NonNull FrameLayout frameLayout, @NonNull j00 j00Var, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView9, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull ImageView imageView10, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView4, @NonNull ImageView imageView11, @NonNull RelativeLayout relativeLayout5, @NonNull LinearLayout linearLayout5, @NonNull TextView textView5, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView12, @NonNull LinearLayout linearLayout6, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f19976a = frameLayout;
        this.f19977b = j00Var;
        this.f19978c = textView;
        this.f19979d = linearLayout;
        this.f19980e = relativeLayout;
        this.f19981f = imageView;
        this.f19982g = imageView2;
        this.f19983h = simpleDraweeView;
        this.f19984i = imageView3;
        this.f19985j = linearLayout2;
        this.f19986k = textView2;
        this.f19987l = linearLayout3;
        this.f19988m = imageView4;
        this.f19989n = imageView5;
        this.f19990o = relativeLayout2;
        this.f19991p = imageView6;
        this.f19992q = imageView7;
        this.f19993r = imageView8;
        this.f19994s = relativeLayout3;
        this.f19995t = imageView9;
        this.f19996u = linearLayout4;
        this.f19997v = textView3;
        this.f19998w = imageView10;
        this.f19999x = relativeLayout4;
        this.f20000y = textView4;
        this.f20001z = imageView11;
        this.A = relativeLayout5;
        this.B = linearLayout5;
        this.C = textView5;
        this.D = frameLayout2;
        this.E = imageView12;
        this.F = linearLayout6;
        this.G = textView6;
        this.H = textView7;
    }

    @NonNull
    public static f2 a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bigCenterRound;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bigCenterRound);
            if (textView != null) {
                i2 = R.id.bottom;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom);
                if (linearLayout != null) {
                    i2 = R.id.classify_tips;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.classify_tips);
                    if (relativeLayout != null) {
                        i2 = R.id.classify_tips_circle;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.classify_tips_circle);
                        if (imageView != null) {
                            i2 = R.id.classify_tips_ok;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.classify_tips_ok);
                            if (imageView2 != null) {
                                i2 = R.id.coinFloatad;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.coinFloatad);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.fightImage;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.fightImage);
                                    if (imageView3 != null) {
                                        i2 = R.id.fightSelect;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.fightSelect);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.fightText;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fightText);
                                            if (textView2 != null) {
                                                i2 = R.id.home_tab_default_layout;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.home_tab_default_layout);
                                                if (linearLayout3 != null) {
                                                    i2 = R.id.home_tab_huojian_image;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.home_tab_huojian_image);
                                                    if (imageView4 != null) {
                                                        i2 = R.id.home_tab_monkey_image;
                                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.home_tab_monkey_image);
                                                        if (imageView5 != null) {
                                                            i2 = R.id.home_tab_monkey_layout;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.home_tab_monkey_layout);
                                                            if (relativeLayout2 != null) {
                                                                i2 = R.id.imageView36;
                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView36);
                                                                if (imageView6 != null) {
                                                                    i2 = R.id.imageView38;
                                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView38);
                                                                    if (imageView7 != null) {
                                                                        i2 = R.id.imageView39;
                                                                        ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView39);
                                                                        if (imageView8 != null) {
                                                                            i2 = R.id.mainTop;
                                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.mainTop);
                                                                            if (relativeLayout3 != null) {
                                                                                i2 = R.id.mg_category_image;
                                                                                ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_category_image);
                                                                                if (imageView9 != null) {
                                                                                    i2 = R.id.mg_category_tabselect;
                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.mg_category_tabselect);
                                                                                    if (linearLayout4 != null) {
                                                                                        i2 = R.id.mg_category_text;
                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mg_category_text);
                                                                                        if (textView3 != null) {
                                                                                            i2 = R.id.mg_chart_image;
                                                                                            ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_chart_image);
                                                                                            if (imageView10 != null) {
                                                                                                i2 = R.id.mg_chart_tabselect;
                                                                                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.mg_chart_tabselect);
                                                                                                if (relativeLayout4 != null) {
                                                                                                    i2 = R.id.mg_chart_text;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mg_chart_text);
                                                                                                    if (textView4 != null) {
                                                                                                        i2 = R.id.mg_emulator_image;
                                                                                                        ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_emulator_image);
                                                                                                        if (imageView11 != null) {
                                                                                                            i2 = R.id.mg_emulator_tabselect;
                                                                                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.mg_emulator_tabselect);
                                                                                                            if (relativeLayout5 != null) {
                                                                                                                i2 = R.id.mg_emulator_tabselect_layout;
                                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.mg_emulator_tabselect_layout);
                                                                                                                if (linearLayout5 != null) {
                                                                                                                    i2 = R.id.mg_emulator_text;
                                                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mg_emulator_text);
                                                                                                                    if (textView5 != null) {
                                                                                                                        i2 = R.id.mg_mian_fragmentlayout;
                                                                                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mg_mian_fragmentlayout);
                                                                                                                        if (frameLayout != null) {
                                                                                                                            i2 = R.id.mg_recom_image;
                                                                                                                            ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(view, R.id.mg_recom_image);
                                                                                                                            if (imageView12 != null) {
                                                                                                                                i2 = R.id.mg_recom_tabselect;
                                                                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.mg_recom_tabselect);
                                                                                                                                if (linearLayout6 != null) {
                                                                                                                                    i2 = R.id.mg_recom_text;
                                                                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.mg_recom_text);
                                                                                                                                    if (textView6 != null) {
                                                                                                                                        i2 = R.id.unreadMessageBadge;
                                                                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.unreadMessageBadge);
                                                                                                                                        if (textView7 != null) {
                                                                                                                                            return new f2((FrameLayout) view, a4, textView, linearLayout, relativeLayout, imageView, imageView2, simpleDraweeView, imageView3, linearLayout2, textView2, linearLayout3, imageView4, imageView5, relativeLayout2, imageView6, imageView7, imageView8, relativeLayout3, imageView9, linearLayout4, textView3, imageView10, relativeLayout4, textView4, imageView11, relativeLayout5, linearLayout5, textView5, frameLayout, imageView12, linearLayout6, textView6, textView7);
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
    public static f2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_test, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f19976a;
    }
}
