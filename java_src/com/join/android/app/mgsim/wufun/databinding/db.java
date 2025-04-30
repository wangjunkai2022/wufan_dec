package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogDownloadHighSpeedingBinding.java */
/* loaded from: classes3.dex */
public final class db implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f19279a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19280b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f19281c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f19282d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f19283e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19284f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f19285g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f19286h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19287i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19288j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19289k;

    private db(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull View view, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout4, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f19279a = constraintLayout;
        this.f19280b = textView;
        this.f19281c = constraintLayout2;
        this.f19282d = constraintLayout3;
        this.f19283e = view;
        this.f19284f = imageView;
        this.f19285g = constraintLayout4;
        this.f19286h = progressBar;
        this.f19287i = textView2;
        this.f19288j = textView3;
        this.f19289k = textView4;
    }

    @NonNull
    public static db a(@NonNull View view) {
        int i2 = R.id.close;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.close);
        if (textView != null) {
            i2 = R.id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout);
            if (constraintLayout != null) {
                ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                i2 = R.id.divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (findChildViewById != null) {
                    i2 = R.id.imageView56;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView56);
                    if (imageView != null) {
                        i2 = R.id.outside;
                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.outside);
                        if (constraintLayout3 != null) {
                            i2 = R.id.progressBar;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                            if (progressBar != null) {
                                i2 = R.id.speed;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.speed);
                                if (textView2 != null) {
                                    i2 = R.id.textView80;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView80);
                                    if (textView3 != null) {
                                        i2 = R.id.textView83;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView83);
                                        if (textView4 != null) {
                                            return new db(constraintLayout2, textView, constraintLayout, constraintLayout2, findChildViewById, imageView, constraintLayout3, progressBar, textView2, textView3, textView4);
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
    public static db c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static db d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_download_high_speeding, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f19279a;
    }
}
