package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LoginmainActivityBinding.java */
/* loaded from: classes3.dex */
public final class cw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19093a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19094b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19095c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19096d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CheckBox f19097e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19098f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19099g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f19100h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f19101i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19102j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f19103k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f19104l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f19105m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f19106n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final EditText f19107o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19108p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19109q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f19110r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19111s;

    private cw(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull LinearLayout linearLayout5, @NonNull EditText editText, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f19093a = relativeLayout;
        this.f19094b = imageView;
        this.f19095c = linearLayout;
        this.f19096d = textView;
        this.f19097e = checkBox;
        this.f19098f = imageView2;
        this.f19099g = imageView3;
        this.f19100h = linearLayout2;
        this.f19101i = imageView4;
        this.f19102j = linearLayout3;
        this.f19103k = imageView5;
        this.f19104l = linearLayout4;
        this.f19105m = textView2;
        this.f19106n = linearLayout5;
        this.f19107o = editText;
        this.f19108p = textView3;
        this.f19109q = textView4;
        this.f19110r = textView5;
        this.f19111s = textView6;
    }

    @NonNull
    public static cw a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.cancle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cancle);
            if (linearLayout != null) {
                i2 = R.id.cancleLogin;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancleLogin);
                if (textView != null) {
                    i2 = R.id.checkBox;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBox);
                    if (checkBox != null) {
                        i2 = R.id.clear;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
                        if (imageView2 != null) {
                            i2 = R.id.loginQQ;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.loginQQ);
                            if (imageView3 != null) {
                                i2 = R.id.loginQQLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loginQQLayout);
                                if (linearLayout2 != null) {
                                    i2 = R.id.loginWechat;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.loginWechat);
                                    if (imageView4 != null) {
                                        i2 = R.id.loginWechatLayout;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loginWechatLayout);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.loginWeibo;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.loginWeibo);
                                            if (imageView5 != null) {
                                                i2 = R.id.loginWeiboLayout;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loginWeiboLayout);
                                                if (linearLayout4 != null) {
                                                    i2 = R.id.nextStep;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nextStep);
                                                    if (textView2 != null) {
                                                        i2 = R.id.otherLogin;
                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.otherLogin);
                                                        if (linearLayout5 != null) {
                                                            i2 = R.id.phoneNumber;
                                                            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.phoneNumber);
                                                            if (editText != null) {
                                                                i2 = R.id.shengming;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.shengming);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.title;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.toOtherLogin;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.toOtherLogin);
                                                                        if (textView5 != null) {
                                                                            i2 = R.id.xieyi;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.xieyi);
                                                                            if (textView6 != null) {
                                                                                return new cw((RelativeLayout) view, imageView, linearLayout, textView, checkBox, imageView2, imageView3, linearLayout2, imageView4, linearLayout3, imageView5, linearLayout4, textView2, linearLayout5, editText, textView3, textView4, textView5, textView6);
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
    public static cw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.loginmain_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19093a;
    }
}
