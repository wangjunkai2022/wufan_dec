package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityPayNowBinding.java */
/* loaded from: classes3.dex */
public final class o1 implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final ImageView C;
    @NonNull
    public final ImageView D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23063a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23064b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23065c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23066d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f23067e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f23068f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23069g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23070h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f23071i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f23072j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f23073k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f23074l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f23075m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f23076n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f23077o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final HorizontalScrollView f23078p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f23079q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f23080r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f23081s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f23082t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f23083u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f23084v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f23085w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f23086x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final TextView f23087y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final TextView f23088z;

    private o1(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull ProgressBar progressBar, @NonNull Button button, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout7, @NonNull HorizontalScrollView horizontalScrollView, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull ImageView imageView5, @NonNull ImageView imageView6) {
        this.f23063a = relativeLayout;
        this.f23064b = imageView;
        this.f23065c = textView;
        this.f23066d = imageView2;
        this.f23067e = imageView3;
        this.f23068f = linearLayout;
        this.f23069g = linearLayout2;
        this.f23070h = linearLayout3;
        this.f23071i = linearLayout4;
        this.f23072j = linearLayout5;
        this.f23073k = linearLayout6;
        this.f23074l = progressBar;
        this.f23075m = button;
        this.f23076n = imageView4;
        this.f23077o = linearLayout7;
        this.f23078p = horizontalScrollView;
        this.f23079q = linearLayout8;
        this.f23080r = linearLayout9;
        this.f23081s = textView2;
        this.f23082t = textView3;
        this.f23083u = textView4;
        this.f23084v = textView5;
        this.f23085w = textView6;
        this.f23086x = textView7;
        this.f23087y = textView8;
        this.f23088z = textView9;
        this.A = textView10;
        this.B = textView11;
        this.C = imageView5;
        this.D = imageView6;
    }

    @NonNull
    public static o1 a(@NonNull View view) {
        int i2 = R.id.aliPay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.aliPay);
        if (imageView != null) {
            i2 = R.id.anotherPayType;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.anotherPayType);
            if (textView != null) {
                i2 = R.id.creditCardPay;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.creditCardPay);
                if (imageView2 != null) {
                    i2 = R.id.hongbaoPay;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.hongbaoPay);
                    if (imageView3 != null) {
                        i2 = R.id.layoutAlipay;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutAlipay);
                        if (linearLayout != null) {
                            i2 = R.id.layoutCreditCardPay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutCreditCardPay);
                            if (linearLayout2 != null) {
                                i2 = R.id.layoutPabiPay;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutPabiPay);
                                if (linearLayout3 != null) {
                                    i2 = R.id.layoutUnionpay;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutUnionpay);
                                    if (linearLayout4 != null) {
                                        i2 = R.id.layoutWeixin;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutWeixin);
                                        if (linearLayout5 != null) {
                                            i2 = R.id.layouthongbaoPay;
                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layouthongbaoPay);
                                            if (linearLayout6 != null) {
                                                i2 = R.id.mg_loading;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.mg_loading);
                                                if (progressBar != null) {
                                                    i2 = R.id.ok;
                                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok);
                                                    if (button != null) {
                                                        i2 = R.id.pabiPay;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.pabiPay);
                                                        if (imageView4 != null) {
                                                            i2 = R.id.papa_pay;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.papa_pay);
                                                            if (linearLayout7 != null) {
                                                                i2 = R.id.payChoisePayType;
                                                                HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.payChoisePayType);
                                                                if (horizontalScrollView != null) {
                                                                    i2 = R.id.payDefault;
                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.payDefault);
                                                                    if (linearLayout8 != null) {
                                                                        i2 = R.id.payLoding;
                                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.payLoding);
                                                                        if (linearLayout9 != null) {
                                                                            i2 = R.id.payMoney;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.payMoney);
                                                                            if (textView2 != null) {
                                                                                i2 = R.id.payProduct;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.payProduct);
                                                                                if (textView3 != null) {
                                                                                    i2 = R.id.payTitle;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.payTitle);
                                                                                    if (textView4 != null) {
                                                                                        i2 = R.id.textView;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                                                                        if (textView5 != null) {
                                                                                            i2 = R.id.textView16;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView16);
                                                                                            if (textView6 != null) {
                                                                                                i2 = R.id.textView17;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView17);
                                                                                                if (textView7 != null) {
                                                                                                    i2 = R.id.textView18;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView18);
                                                                                                    if (textView8 != null) {
                                                                                                        i2 = R.id.textView21;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.textView21);
                                                                                                        if (textView9 != null) {
                                                                                                            i2 = R.id.textView29;
                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.textView29);
                                                                                                            if (textView10 != null) {
                                                                                                                i2 = R.id.textView30;
                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.textView30);
                                                                                                                if (textView11 != null) {
                                                                                                                    i2 = R.id.unionpay;
                                                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.unionpay);
                                                                                                                    if (imageView5 != null) {
                                                                                                                        i2 = R.id.weichatPay;
                                                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.weichatPay);
                                                                                                                        if (imageView6 != null) {
                                                                                                                            return new o1((RelativeLayout) view, imageView, textView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, progressBar, button, imageView4, linearLayout7, horizontalScrollView, linearLayout8, linearLayout9, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, imageView5, imageView6);
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
    public static o1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_pay_now, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23063a;
    }
}
