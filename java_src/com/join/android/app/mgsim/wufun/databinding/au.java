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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.LoadingLayout;
/* compiled from: LayoutPapaLoadingBinding.java */
/* loaded from: classes3.dex */
public final class au implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LoadingLayout f18288a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final pc0 f18289b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18290c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18291d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LoadingImageView f18292e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18293f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18294g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18295h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f18296i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18297j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f18298k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f18299l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18300m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Button f18301n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18302o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f18303p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f18304q;

    private au(@NonNull LoadingLayout loadingLayout, @NonNull pc0 pc0Var, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull LoadingImageView loadingImageView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull Button button, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f18288a = loadingLayout;
        this.f18289b = pc0Var;
        this.f18290c = textView;
        this.f18291d = linearLayout;
        this.f18292e = loadingImageView;
        this.f18293f = imageView;
        this.f18294g = linearLayout2;
        this.f18295h = linearLayout3;
        this.f18296i = linearLayout4;
        this.f18297j = textView2;
        this.f18298k = imageView2;
        this.f18299l = imageView3;
        this.f18300m = textView3;
        this.f18301n = button;
        this.f18302o = textView4;
        this.f18303p = textView5;
        this.f18304q = textView6;
    }

    @NonNull
    public static au a(@NonNull View view) {
        int i2 = R.id.build_qr_code_title;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.build_qr_code_title);
        if (findChildViewById != null) {
            pc0 a4 = pc0.a(findChildViewById);
            i2 = R.id.failedMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
            if (textView != null) {
                i2 = R.id.loading_none;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loading_none);
                if (linearLayout != null) {
                    i2 = R.id.loading_view;
                    LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(view, R.id.loading_view);
                    if (loadingImageView != null) {
                        i2 = R.id.lodingBackImage;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                        if (imageView != null) {
                            i2 = R.id.loding_faile;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_faile);
                            if (linearLayout2 != null) {
                                i2 = R.id.loding_layout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_layout);
                                if (linearLayout3 != null) {
                                    i2 = R.id.nodata_layout;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nodata_layout);
                                    if (linearLayout4 != null) {
                                        i2 = R.id.noneMessage;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.noneMessage);
                                        if (textView2 != null) {
                                            i2 = R.id.noneReloadImage;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.noneReloadImage);
                                            if (imageView2 != null) {
                                                i2 = R.id.relodingimag;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                                                if (imageView3 != null) {
                                                    i2 = R.id.setAll;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.setAll);
                                                    if (textView3 != null) {
                                                        i2 = R.id.setNetwork;
                                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                                        if (button != null) {
                                                            i2 = R.id.setting;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.setting);
                                                            if (textView4 != null) {
                                                                i2 = R.id.textView2;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                                                if (textView5 != null) {
                                                                    i2 = R.id.textView_nodata;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView_nodata);
                                                                    if (textView6 != null) {
                                                                        return new au((LoadingLayout) view, a4, textView, linearLayout, loadingImageView, imageView, linearLayout2, linearLayout3, linearLayout4, textView2, imageView2, imageView3, textView3, button, textView4, textView5, textView6);
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
    public static au c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static au d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_papa_loading, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LoadingLayout getRoot() {
        return this.f18288a;
    }
}
