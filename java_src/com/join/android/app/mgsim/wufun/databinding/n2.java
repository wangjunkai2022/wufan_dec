package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
/* compiled from: ActivityWebViewSearchBinding.java */
/* loaded from: classes3.dex */
public final class n2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22689a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f22690b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BottomSheetLayout f22691c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22692d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final de f22693e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22694f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22695g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f22696h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f22697i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ConstraintLayout f22698j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f22699k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f22700l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f22701m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f22702n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f22703o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final Button f22704p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f22705q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f22706r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f22707s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ConstraintLayout f22708t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LJWebView f22709u;

    private n2(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull BottomSheetLayout bottomSheetLayout, @NonNull LinearLayout linearLayout, @NonNull de deVar, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout4, @NonNull ConstraintLayout constraintLayout5, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout4, @NonNull Button button, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ConstraintLayout constraintLayout6, @NonNull LJWebView lJWebView) {
        this.f22689a = constraintLayout;
        this.f22690b = constraintLayout2;
        this.f22691c = bottomSheetLayout;
        this.f22692d = linearLayout;
        this.f22693e = deVar;
        this.f22694f = imageView;
        this.f22695g = textView;
        this.f22696h = constraintLayout3;
        this.f22697i = constraintLayout4;
        this.f22698j = constraintLayout5;
        this.f22699k = linearLayout2;
        this.f22700l = imageView2;
        this.f22701m = linearLayout3;
        this.f22702n = imageView3;
        this.f22703o = linearLayout4;
        this.f22704p = button;
        this.f22705q = textView2;
        this.f22706r = textView3;
        this.f22707s = textView4;
        this.f22708t = constraintLayout6;
        this.f22709u = lJWebView;
    }

    @NonNull
    public static n2 a(@NonNull View view) {
        int i2 = R.id.actionBar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.actionBar);
        if (constraintLayout != null) {
            i2 = R.id.bottomSheetLayout;
            BottomSheetLayout bottomSheetLayout = (BottomSheetLayout) ViewBindings.findChildViewById(view, R.id.bottomSheetLayout);
            if (bottomSheetLayout != null) {
                i2 = R.id.close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.close);
                if (linearLayout != null) {
                    i2 = R.id.downloadCenter;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.downloadCenter);
                    if (findChildViewById != null) {
                        de a4 = de.a(findChildViewById);
                        i2 = R.id.imageView11;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView11);
                        if (imageView != null) {
                            i2 = R.id.inputUrl;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.inputUrl);
                            if (textView != null) {
                                i2 = R.id.layoutFail;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layoutFail);
                                if (constraintLayout2 != null) {
                                    i2 = R.id.layoutLoading;
                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layoutLoading);
                                    if (constraintLayout3 != null) {
                                        i2 = R.id.main;
                                        ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.main);
                                        if (constraintLayout4 != null) {
                                            i2 = R.id.next;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.next);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.nextImg;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.nextImg);
                                                if (imageView2 != null) {
                                                    i2 = R.id.prev;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.prev);
                                                    if (linearLayout3 != null) {
                                                        i2 = R.id.prevImg;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.prevImg);
                                                        if (imageView3 != null) {
                                                            i2 = R.id.refresh;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.refresh);
                                                            if (linearLayout4 != null) {
                                                                i2 = R.id.sniffer;
                                                                Button button = (Button) ViewBindings.findChildViewById(view, R.id.sniffer);
                                                                if (button != null) {
                                                                    i2 = R.id.textView32;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView32);
                                                                    if (textView2 != null) {
                                                                        i2 = R.id.textView33;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView33);
                                                                        if (textView3 != null) {
                                                                            i2 = R.id.tipSniffing;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tipSniffing);
                                                                            if (textView4 != null) {
                                                                                i2 = R.id.toolbar;
                                                                                ConstraintLayout constraintLayout5 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                                if (constraintLayout5 != null) {
                                                                                    i2 = R.id.web;
                                                                                    LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(view, R.id.web);
                                                                                    if (lJWebView != null) {
                                                                                        return new n2((ConstraintLayout) view, constraintLayout, bottomSheetLayout, linearLayout, a4, imageView, textView, constraintLayout2, constraintLayout3, constraintLayout4, linearLayout2, imageView2, linearLayout3, imageView3, linearLayout4, button, textView2, textView3, textView4, constraintLayout5, lJWebView);
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
    public static n2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_web_view_search, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22689a;
    }
}
