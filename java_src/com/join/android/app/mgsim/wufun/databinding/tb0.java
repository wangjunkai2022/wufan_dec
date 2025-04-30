package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SimulatorExitItemBinding.java */
/* loaded from: classes3.dex */
public final class tb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25162a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f25163b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25164c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25165d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f25166e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25167f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25168g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f25169h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f25170i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f25171j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25172k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final View f25173l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25174m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f25175n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final View f25176o;

    private tb0(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view2, @NonNull View view3, @NonNull TextView textView3, @NonNull View view4, @NonNull TextView textView4, @NonNull LinearLayout linearLayout, @NonNull View view5) {
        this.f25162a = constraintLayout;
        this.f25163b = constraintLayout2;
        this.f25164c = textView;
        this.f25165d = textView2;
        this.f25166e = view;
        this.f25167f = imageView;
        this.f25168g = imageView2;
        this.f25169h = simpleDraweeView;
        this.f25170i = view2;
        this.f25171j = view3;
        this.f25172k = textView3;
        this.f25173l = view4;
        this.f25174m = textView4;
        this.f25175n = linearLayout;
        this.f25176o = view5;
    }

    @NonNull
    public static tb0 a(@NonNull View view) {
        int i2 = R.id.constraintLayout8;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout8);
        if (constraintLayout != null) {
            i2 = R.id.count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
            if (textView != null) {
                i2 = R.id.desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                if (textView2 != null) {
                    i2 = R.id.divider;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                    if (findChildViewById != null) {
                        i2 = R.id.imageView62;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView62);
                        if (imageView != null) {
                            i2 = R.id.imageView64;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView64);
                            if (imageView2 != null) {
                                i2 = R.id.img;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.ml;
                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.ml);
                                    if (findChildViewById2 != null) {
                                        i2 = R.id.mr;
                                        View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.mr);
                                        if (findChildViewById3 != null) {
                                            i2 = R.id.name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                            if (textView3 != null) {
                                                i2 = R.id.rect;
                                                View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.rect);
                                                if (findChildViewById4 != null) {
                                                    i2 = R.id.score;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.score);
                                                    if (textView4 != null) {
                                                        i2 = R.id.tagLayout;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tagLayout);
                                                        if (linearLayout != null) {
                                                            i2 = R.id.view9;
                                                            View findChildViewById5 = ViewBindings.findChildViewById(view, R.id.view9);
                                                            if (findChildViewById5 != null) {
                                                                return new tb0((ConstraintLayout) view, constraintLayout, textView, textView2, findChildViewById, imageView, imageView2, simpleDraweeView, findChildViewById2, findChildViewById3, textView3, findChildViewById4, textView4, linearLayout, findChildViewById5);
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
    public static tb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simulator_exit_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25162a;
    }
}
