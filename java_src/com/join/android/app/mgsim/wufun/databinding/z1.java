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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivitySimulatorExitPlayBinding.java */
/* loaded from: classes3.dex */
public final class z1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27084a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f27085b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27086c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f27087d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27088e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f27089f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f27090g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f27091h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f27092i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f27093j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RecyclerView f27094k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f27095l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f27096m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f27097n;

    private z1(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull ProgressBar progressBar, @NonNull TextView textView4, @NonNull RecyclerView recyclerView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f27084a = constraintLayout;
        this.f27085b = simpleDraweeView;
        this.f27086c = textView;
        this.f27087d = constraintLayout2;
        this.f27088e = textView2;
        this.f27089f = imageView;
        this.f27090g = imageView2;
        this.f27091h = textView3;
        this.f27092i = progressBar;
        this.f27093j = textView4;
        this.f27094k = recyclerView;
        this.f27095l = textView5;
        this.f27096m = textView6;
        this.f27097n = textView7;
    }

    @NonNull
    public static z1 a(@NonNull View view) {
        int i2 = R.id.adIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.adIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.adTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.adTitle);
            if (textView != null) {
                i2 = R.id.constraintLayout7;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout7);
                if (constraintLayout != null) {
                    i2 = R.id.exit;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.exit);
                    if (textView2 != null) {
                        i2 = R.id.info;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.info);
                        if (imageView != null) {
                            i2 = R.id.levelIcon;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.levelIcon);
                            if (imageView2 != null) {
                                i2 = R.id.levelName;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.levelName);
                                if (textView3 != null) {
                                    i2 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                    if (progressBar != null) {
                                        i2 = R.id.progressTv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.progressTv);
                                        if (textView4 != null) {
                                            i2 = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                                            if (recyclerView != null) {
                                                i2 = R.id.resume;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.resume);
                                                if (textView5 != null) {
                                                    i2 = R.id.save;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                                                    if (textView6 != null) {
                                                        i2 = R.id.title;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                        if (textView7 != null) {
                                                            return new z1((ConstraintLayout) view, simpleDraweeView, textView, constraintLayout, textView2, imageView, imageView2, textView3, progressBar, textView4, recyclerView, textView5, textView6, textView7);
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
    public static z1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_simulator_exit_play, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27084a;
    }
}
