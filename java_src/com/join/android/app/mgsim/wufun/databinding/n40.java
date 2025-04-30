package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyAccountLoginLayoutBinding.java */
/* loaded from: classes3.dex */
public final class n40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22730a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f22731b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22732c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22733d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f22734e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22735f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f22736g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22737h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f22738i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22739j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ScrollView f22740k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22741l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22742m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22743n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22744o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final EditText f22745p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f22746q;

    private n40(@NonNull RelativeLayout relativeLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull EditText editText, @NonNull TextView textView3, @NonNull ScrollView scrollView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull EditText editText2, @NonNull TextView textView8) {
        this.f22730a = relativeLayout;
        this.f22731b = checkBox;
        this.f22732c = textView;
        this.f22733d = linearLayout;
        this.f22734e = imageView;
        this.f22735f = imageView2;
        this.f22736g = imageView3;
        this.f22737h = textView2;
        this.f22738i = editText;
        this.f22739j = textView3;
        this.f22740k = scrollView;
        this.f22741l = textView4;
        this.f22742m = textView5;
        this.f22743n = textView6;
        this.f22744o = textView7;
        this.f22745p = editText2;
        this.f22746q = textView8;
    }

    @NonNull
    public static n40 a(@NonNull View view) {
        int i2 = R.id.checkBox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBox);
        if (checkBox != null) {
            i2 = R.id.fergetbutn;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fergetbutn);
            if (textView != null) {
                i2 = R.id.linearLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                if (linearLayout != null) {
                    i2 = R.id.loginQQ;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.loginQQ);
                    if (imageView != null) {
                        i2 = R.id.loginWechat;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.loginWechat);
                        if (imageView2 != null) {
                            i2 = R.id.loginWeibo;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.loginWeibo);
                            if (imageView3 != null) {
                                i2 = R.id.loginbutn;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loginbutn);
                                if (textView2 != null) {
                                    i2 = R.id.password;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.password);
                                    if (editText != null) {
                                        i2 = R.id.passwordTitle;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.passwordTitle);
                                        if (textView3 != null) {
                                            i2 = R.id.scrollView;
                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                            if (scrollView != null) {
                                                i2 = R.id.shengming;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.shengming);
                                                if (textView4 != null) {
                                                    i2 = R.id.signUp;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.signUp);
                                                    if (textView5 != null) {
                                                        i2 = R.id.textView20;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView20);
                                                        if (textView6 != null) {
                                                            i2 = R.id.userNameTitle;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.userNameTitle);
                                                            if (textView7 != null) {
                                                                i2 = R.id.username;
                                                                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.username);
                                                                if (editText2 != null) {
                                                                    i2 = R.id.xieyi;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.xieyi);
                                                                    if (textView8 != null) {
                                                                        return new n40((RelativeLayout) view, checkBox, textView, linearLayout, imageView, imageView2, imageView3, textView2, editText, textView3, scrollView, textView4, textView5, textView6, textView7, editText2, textView8);
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
    public static n40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_login_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22730a;
    }
}
