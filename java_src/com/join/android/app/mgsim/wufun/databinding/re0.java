package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: WufungameUnzipfailedDialogBinding.java */
/* loaded from: classes3.dex */
public final class re0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24371a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24372b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24373c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24374d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f24375e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24376f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24377g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24378h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f24379i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24380j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24381k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24382l;

    private re0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f24371a = relativeLayout;
        this.f24372b = imageView;
        this.f24373c = textView;
        this.f24374d = textView2;
        this.f24375e = simpleDraweeView;
        this.f24376f = linearLayout;
        this.f24377g = linearLayout2;
        this.f24378h = textView3;
        this.f24379i = linearLayout3;
        this.f24380j = textView4;
        this.f24381k = textView5;
        this.f24382l = textView6;
    }

    @NonNull
    public static re0 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
            if (textView != null) {
                i2 = R.id.goH5;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.goH5);
                if (textView2 != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.llReUnzip;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llReUnzip);
                        if (linearLayout != null) {
                            i2 = R.id.main;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                            if (linearLayout2 != null) {
                                i2 = R.id.message;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                                if (textView3 != null) {
                                    i2 = R.id.moreSelecter;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.moreSelecter);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.startButn;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.startButn);
                                        if (textView4 != null) {
                                            i2 = R.id.tvReDownload;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvReDownload);
                                            if (textView5 != null) {
                                                i2 = R.id.tvReUnzip;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvReUnzip);
                                                if (textView6 != null) {
                                                    return new re0((RelativeLayout) view, imageView, textView, textView2, simpleDraweeView, linearLayout, linearLayout2, textView3, linearLayout3, textView4, textView5, textView6);
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
    public static re0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static re0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufungame_unzipfailed_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24371a;
    }
}
