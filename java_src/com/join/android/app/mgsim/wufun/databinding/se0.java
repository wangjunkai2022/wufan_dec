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
/* compiled from: WufunloginInputpassLayoutBinding.java */
/* loaded from: classes3.dex */
public final class se0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24833a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24834b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24835c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24836d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24837e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24838f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24839g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24840h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f24841i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final EditText f24842j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24843k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f24844l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f24845m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final CheckBox f24846n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f24847o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24848p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f24849q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24850r;

    private se0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView5, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout2, @NonNull CheckBox checkBox, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.f24833a = linearLayout;
        this.f24834b = imageView;
        this.f24835c = textView;
        this.f24836d = textView2;
        this.f24837e = imageView2;
        this.f24838f = relativeLayout;
        this.f24839g = textView3;
        this.f24840h = textView4;
        this.f24841i = editText;
        this.f24842j = editText2;
        this.f24843k = textView5;
        this.f24844l = relativeLayout2;
        this.f24845m = linearLayout2;
        this.f24846n = checkBox;
        this.f24847o = textView6;
        this.f24848p = textView7;
        this.f24849q = textView8;
        this.f24850r = textView9;
    }

    @NonNull
    public static se0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.bindmessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bindmessage);
            if (textView != null) {
                i2 = R.id.checkBox;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.checkBox);
                if (textView2 != null) {
                    i2 = R.id.clear;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
                    if (imageView2 != null) {
                        i2 = R.id.codeLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.codeLayout);
                        if (relativeLayout != null) {
                            i2 = R.id.fergetPass;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.fergetPass);
                            if (textView3 != null) {
                                i2 = R.id.getCode;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.getCode);
                                if (textView4 != null) {
                                    i2 = R.id.inputCode;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.inputCode);
                                    if (editText != null) {
                                        i2 = R.id.inputPass;
                                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.inputPass);
                                        if (editText2 != null) {
                                            i2 = R.id.loginMessage;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.loginMessage);
                                            if (textView5 != null) {
                                                i2 = R.id.passLayout;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.passLayout);
                                                if (relativeLayout2 != null) {
                                                    i2 = R.id.permissLayout;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.permissLayout);
                                                    if (linearLayout != null) {
                                                        i2 = R.id.seePass;
                                                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.seePass);
                                                        if (checkBox != null) {
                                                            i2 = R.id.sendLogin;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.sendLogin);
                                                            if (textView6 != null) {
                                                                i2 = R.id.shengming;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.shengming);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.titleMessage;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.titleMessage);
                                                                    if (textView8 != null) {
                                                                        i2 = R.id.xieyi;
                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.xieyi);
                                                                        if (textView9 != null) {
                                                                            return new se0((LinearLayout) view, imageView, textView, textView2, imageView2, relativeLayout, textView3, textView4, editText, editText2, textView5, relativeLayout2, linearLayout, checkBox, textView6, textView7, textView8, textView9);
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
    public static se0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static se0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufunlogin_inputpass_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24833a;
    }
}
