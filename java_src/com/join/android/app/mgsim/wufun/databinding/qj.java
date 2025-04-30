package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemAuxiliarytoolBinding.java */
/* loaded from: classes3.dex */
public final class qj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23999a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24000b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f24001c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24002d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24003e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f24004f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f24005g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24006h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24007i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f24008j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f24009k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24010l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24011m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f24012n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final SimpleDraweeView f24013o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f24014p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f24015q;

    private qj(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull LinearLayout linearLayout6, @NonNull TextView textView6) {
        this.f23999a = linearLayout;
        this.f24000b = linearLayout2;
        this.f24001c = simpleDraweeView;
        this.f24002d = linearLayout3;
        this.f24003e = textView;
        this.f24004f = imageView;
        this.f24005g = view;
        this.f24006h = linearLayout4;
        this.f24007i = textView2;
        this.f24008j = simpleDraweeView2;
        this.f24009k = linearLayout5;
        this.f24010l = textView3;
        this.f24011m = textView4;
        this.f24012n = textView5;
        this.f24013o = simpleDraweeView3;
        this.f24014p = linearLayout6;
        this.f24015q = textView6;
    }

    @NonNull
    public static qj a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.googleImage;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.googleImage);
            if (simpleDraweeView != null) {
                i2 = R.id.googleLayout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.googleLayout);
                if (linearLayout2 != null) {
                    i2 = R.id.googleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.googleText);
                    if (textView != null) {
                        i2 = R.id.imageView5;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
                        if (imageView != null) {
                            i2 = R.id.layoutTop;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                            if (findChildViewById != null) {
                                i2 = R.id.look_other;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.look_other);
                                if (linearLayout3 != null) {
                                    i2 = R.id.moreText;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.moreText);
                                    if (textView2 != null) {
                                        i2 = R.id.rootImage;
                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.rootImage);
                                        if (simpleDraweeView2 != null) {
                                            i2 = R.id.rootLayout;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rootLayout);
                                            if (linearLayout4 != null) {
                                                i2 = R.id.rootText;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rootText);
                                                if (textView3 != null) {
                                                    i2 = R.id.textView9;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                                    if (textView4 != null) {
                                                        i2 = R.id.titleText;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                                        if (textView5 != null) {
                                                            i2 = R.id.vpnImage;
                                                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.vpnImage);
                                                            if (simpleDraweeView3 != null) {
                                                                i2 = R.id.vpnLayout;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.vpnLayout);
                                                                if (linearLayout5 != null) {
                                                                    i2 = R.id.vpnText;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.vpnText);
                                                                    if (textView6 != null) {
                                                                        return new qj((LinearLayout) view, linearLayout, simpleDraweeView, linearLayout2, textView, imageView, findChildViewById, linearLayout3, textView2, simpleDraweeView2, linearLayout4, textView3, textView4, textView5, simpleDraweeView3, linearLayout5, textView6);
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
    public static qj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_auxiliarytool, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23999a;
    }
}
