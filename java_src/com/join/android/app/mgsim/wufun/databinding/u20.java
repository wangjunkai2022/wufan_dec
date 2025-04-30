package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import in.srain.cube.views.GridViewWithHeaderAndFooter;
/* compiled from: MgpapaMainfragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class u20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25374a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final GridViewWithHeaderAndFooter f25375b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25376c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25377d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25378e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25379f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25380g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25381h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f25382i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25383j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f25384k;

    private u20(@NonNull RelativeLayout relativeLayout, @NonNull GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull ImageView imageView6, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2) {
        this.f25374a = relativeLayout;
        this.f25375b = gridViewWithHeaderAndFooter;
        this.f25376c = imageView;
        this.f25377d = imageView2;
        this.f25378e = imageView3;
        this.f25379f = imageView4;
        this.f25380g = imageView5;
        this.f25381h = textView;
        this.f25382i = imageView6;
        this.f25383j = textView2;
        this.f25384k = relativeLayout2;
    }

    @NonNull
    public static u20 a(@NonNull View view) {
        int i2 = R.id.gridView;
        GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter = (GridViewWithHeaderAndFooter) ViewBindings.findChildViewById(view, R.id.gridView);
        if (gridViewWithHeaderAndFooter != null) {
            i2 = R.id.imageView2;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
            if (imageView != null) {
                i2 = R.id.imageView3;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView3);
                if (imageView2 != null) {
                    i2 = R.id.monkey_icon;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.monkey_icon);
                    if (imageView3 != null) {
                        i2 = R.id.movetoTop;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.movetoTop);
                        if (imageView4 != null) {
                            i2 = R.id.round_point;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.round_point);
                            if (imageView5 != null) {
                                i2 = R.id.searchBack;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.searchBack);
                                if (textView != null) {
                                    i2 = R.id.share;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.share);
                                    if (imageView6 != null) {
                                        i2 = R.id.textView;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                        if (textView2 != null) {
                                            i2 = R.id.title;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                                            if (relativeLayout != null) {
                                                return new u20((RelativeLayout) view, gridViewWithHeaderAndFooter, imageView, imageView2, imageView3, imageView4, imageView5, textView, imageView6, textView2, relativeLayout);
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
    public static u20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_mainfragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25374a;
    }
}
