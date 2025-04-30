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
/* compiled from: DialogDownloadHighSpeedBinding.java */
/* loaded from: classes3.dex */
public final class bb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18464a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f18465b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f18466c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f18467d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f18468e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f18469f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f18470g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18471h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18472i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18473j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18474k;

    private bb(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout4, @NonNull ConstraintLayout constraintLayout5, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18464a = constraintLayout;
        this.f18465b = view;
        this.f18466c = constraintLayout2;
        this.f18467d = constraintLayout3;
        this.f18468e = constraintLayout4;
        this.f18469f = constraintLayout5;
        this.f18470g = imageView;
        this.f18471h = textView;
        this.f18472i = textView2;
        this.f18473j = textView3;
        this.f18474k = textView4;
    }

    @NonNull
    public static bb a(@NonNull View view) {
        int i2 = R.id.close;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.close);
        if (findChildViewById != null) {
            i2 = R.id.confirm;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.confirm);
            if (constraintLayout != null) {
                i2 = R.id.constraintLayout17;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout17);
                if (constraintLayout2 != null) {
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                    i2 = R.id.content;
                    ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.content);
                    if (constraintLayout4 != null) {
                        i2 = R.id.iv1;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
                        if (imageView != null) {
                            i2 = R.id.textView74;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView74);
                            if (textView != null) {
                                i2 = R.id.textView78;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView78);
                                if (textView2 != null) {
                                    i2 = R.id.textView79;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView79);
                                    if (textView3 != null) {
                                        i2 = R.id.tip;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tip);
                                        if (textView4 != null) {
                                            return new bb(constraintLayout3, findChildViewById, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, imageView, textView, textView2, textView3, textView4);
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
    public static bb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_download_high_speed, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18464a;
    }
}
