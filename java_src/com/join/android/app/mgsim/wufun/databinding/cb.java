package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogDownloadHighSpeedOptBinding.java */
/* loaded from: classes3.dex */
public final class cb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18835a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f18836b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f18837c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18838d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f18839e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18840f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18841g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f18842h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18843i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18844j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18845k;

    private cb(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout4, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout5, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f18835a = constraintLayout;
        this.f18836b = constraintLayout2;
        this.f18837c = constraintLayout3;
        this.f18838d = textView;
        this.f18839e = constraintLayout4;
        this.f18840f = imageView;
        this.f18841g = textView2;
        this.f18842h = constraintLayout5;
        this.f18843i = textView3;
        this.f18844j = textView4;
        this.f18845k = textView5;
    }

    @NonNull
    public static cb a(@NonNull View view) {
        int i2 = R.id.constraintLayout;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout);
        if (constraintLayout != null) {
            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
            i2 = R.id.download;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.download);
            if (textView != null) {
                i2 = R.id.downloadAcc;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.downloadAcc);
                if (constraintLayout3 != null) {
                    i2 = R.id.imageView56;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView56);
                    if (imageView != null) {
                        i2 = R.id.imageView58;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.imageView58);
                        if (textView2 != null) {
                            i2 = R.id.outside;
                            ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.outside);
                            if (constraintLayout4 != null) {
                                i2 = R.id.textView80;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView80);
                                if (textView3 != null) {
                                    i2 = R.id.textView81;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView81);
                                    if (textView4 != null) {
                                        i2 = R.id.tip;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tip);
                                        if (textView5 != null) {
                                            return new cb(constraintLayout2, constraintLayout, constraintLayout2, textView, constraintLayout3, imageView, textView2, constraintLayout4, textView3, textView4, textView5);
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
    public static cb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_download_high_speed_opt, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18835a;
    }
}
