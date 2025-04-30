package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainGuessyoulikeItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20048a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20049b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20050c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20051d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20052e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20053f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20054g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20055h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20056i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f20057j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f20058k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20059l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20060m;

    private f70(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f20048a = linearLayout;
        this.f20049b = simpleDraweeView;
        this.f20050c = simpleDraweeView2;
        this.f20051d = textView;
        this.f20052e = textView2;
        this.f20053f = textView3;
        this.f20054g = textView4;
        this.f20055h = textView5;
        this.f20056i = textView6;
        this.f20057j = linearLayout2;
        this.f20058k = linearLayout3;
        this.f20059l = textView7;
        this.f20060m = textView8;
    }

    @NonNull
    public static f70 a(@NonNull View view) {
        int i2 = R.id.appimage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appimage);
        if (simpleDraweeView != null) {
            i2 = R.id.appimage2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appimage2);
            if (simpleDraweeView2 != null) {
                i2 = R.id.appname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
                if (textView != null) {
                    i2 = R.id.appname2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname2);
                    if (textView2 != null) {
                        i2 = R.id.appsize;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
                        if (textView3 != null) {
                            i2 = R.id.appsize2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize2);
                            if (textView4 != null) {
                                i2 = R.id.downloadapp;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadapp);
                                if (textView5 != null) {
                                    i2 = R.id.downloadapp2;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadapp2);
                                    if (textView6 != null) {
                                        i2 = R.id.itemLeft;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemLeft);
                                        if (linearLayout != null) {
                                            i2 = R.id.itemRight;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemRight);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.moneyText;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                if (textView7 != null) {
                                                    i2 = R.id.moneyText2;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText2);
                                                    if (textView8 != null) {
                                                        return new f70((LinearLayout) view, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3, textView4, textView5, textView6, linearLayout, linearLayout2, textView7, textView8);
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
    public static f70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_guessyoulike_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20048a;
    }
}
