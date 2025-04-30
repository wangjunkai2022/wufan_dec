package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameinformationCardlayoutBinding.java */
/* loaded from: classes3.dex */
public final class lm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22165a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22166b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22167c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f22168d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22169e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22170f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f22171g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22172h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f22173i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22174j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22175k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22176l;

    private lm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f22165a = linearLayout;
        this.f22166b = textView;
        this.f22167c = textView2;
        this.f22168d = button;
        this.f22169e = linearLayout2;
        this.f22170f = textView3;
        this.f22171g = simpleDraweeView;
        this.f22172h = textView4;
        this.f22173i = relativeLayout;
        this.f22174j = textView5;
        this.f22175k = textView6;
        this.f22176l = textView7;
    }

    @NonNull
    public static lm a(@NonNull View view) {
        int i2 = R.id.cardAppSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cardAppSize);
        if (textView != null) {
            i2 = R.id.cardAppname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cardAppname);
            if (textView2 != null) {
                i2 = R.id.cardDownButn;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.cardDownButn);
                if (button != null) {
                    i2 = R.id.cardDownNumber;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cardDownNumber);
                    if (linearLayout != null) {
                        i2 = R.id.cardDownNumberText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.cardDownNumberText);
                        if (textView3 != null) {
                            i2 = R.id.cardIcon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cardIcon);
                            if (simpleDraweeView != null) {
                                i2 = R.id.cardInfo;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.cardInfo);
                                if (textView4 != null) {
                                    i2 = R.id.gameCardLayout;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.gameCardLayout);
                                    if (relativeLayout != null) {
                                        i2 = R.id.moneyText;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                        if (textView5 != null) {
                                            i2 = R.id.textView69;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView69);
                                            if (textView6 != null) {
                                                i2 = R.id.textView70;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView70);
                                                if (textView7 != null) {
                                                    return new lm((LinearLayout) view, textView, textView2, button, linearLayout, textView3, simpleDraweeView, textView4, relativeLayout, textView5, textView6, textView7);
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
    public static lm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameinformation_cardlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22165a;
    }
}
