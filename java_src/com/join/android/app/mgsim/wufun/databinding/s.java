package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityDocumentManageBinding.java */
/* loaded from: classes3.dex */
public final class s implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24590a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24591b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f24592c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24593d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24594e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24595f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24596g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RadioButton f24597h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RadioButton f24598i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RadioButton f24599j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RadioButton f24600k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RadioGroup f24601l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RadioGroup f24602m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f24603n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f24604o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f24605p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final SimpleDraweeView f24606q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24607r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24608s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f24609t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f24610u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f24611v;

    private s(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull RadioGroup radioGroup, @NonNull RadioGroup radioGroup2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f24590a = relativeLayout;
        this.f24591b = linearLayout;
        this.f24592c = frameLayout;
        this.f24593d = imageView;
        this.f24594e = imageView2;
        this.f24595f = linearLayout2;
        this.f24596g = textView;
        this.f24597h = radioButton;
        this.f24598i = radioButton2;
        this.f24599j = radioButton3;
        this.f24600k = radioButton4;
        this.f24601l = radioGroup;
        this.f24602m = radioGroup2;
        this.f24603n = relativeLayout2;
        this.f24604o = relativeLayout3;
        this.f24605p = relativeLayout4;
        this.f24606q = simpleDraweeView;
        this.f24607r = textView2;
        this.f24608s = textView3;
        this.f24609t = textView4;
        this.f24610u = textView5;
        this.f24611v = textView6;
    }

    @NonNull
    public static s a(@NonNull View view) {
        int i2 = R.id.archive_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.archive_back);
        if (linearLayout != null) {
            i2 = R.id.frag;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frag);
            if (frameLayout != null) {
                i2 = R.id.iv_myarchive_open;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_myarchive_open);
                if (imageView != null) {
                    i2 = R.id.iv_shop_open;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_open);
                    if (imageView2 != null) {
                        i2 = R.id.ll_manage;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_manage);
                        if (linearLayout2 != null) {
                            i2 = R.id.myshop;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.myshop);
                            if (textView != null) {
                                i2 = R.id.rb_buy;
                                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_buy);
                                if (radioButton != null) {
                                    i2 = R.id.rb_colud;
                                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_colud);
                                    if (radioButton2 != null) {
                                        i2 = R.id.rb_local;
                                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_local);
                                        if (radioButton3 != null) {
                                            i2 = R.id.rb_remoned;
                                            RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_remoned);
                                            if (radioButton4 != null) {
                                                i2 = R.id.rg_myarchive;
                                                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rg_myarchive);
                                                if (radioGroup != null) {
                                                    i2 = R.id.rg_myshop;
                                                    RadioGroup radioGroup2 = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rg_myshop);
                                                    if (radioGroup2 != null) {
                                                        i2 = R.id.rl_bg;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_bg);
                                                        if (relativeLayout != null) {
                                                            i2 = R.id.rl_myarchive;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_myarchive);
                                                            if (relativeLayout2 != null) {
                                                                i2 = R.id.rl_shop;
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_shop);
                                                                if (relativeLayout3 != null) {
                                                                    i2 = R.id.simdw;
                                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simdw);
                                                                    if (simpleDraweeView != null) {
                                                                        i2 = R.id.tv_manage;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_manage);
                                                                        if (textView2 != null) {
                                                                            i2 = R.id.tv_myarchive;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_myarchive);
                                                                            if (textView3 != null) {
                                                                                i2 = R.id.tv_myarchive_size;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_myarchive_size);
                                                                                if (textView4 != null) {
                                                                                    i2 = R.id.tv_red;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_red);
                                                                                    if (textView5 != null) {
                                                                                        i2 = R.id.tv_shop_size;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_size);
                                                                                        if (textView6 != null) {
                                                                                            return new s((RelativeLayout) view, linearLayout, frameLayout, imageView, imageView2, linearLayout2, textView, radioButton, radioButton2, radioButton3, radioButton4, radioGroup, radioGroup2, relativeLayout, relativeLayout2, relativeLayout3, simpleDraweeView, textView2, textView3, textView4, textView5, textView6);
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
    public static s c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_document_manage, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24590a;
    }
}
