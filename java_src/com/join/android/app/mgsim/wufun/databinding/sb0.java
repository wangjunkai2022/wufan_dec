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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SimulatorExitFriendItemBinding.java */
/* loaded from: classes3.dex */
public final class sb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24778a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24779b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24780c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f24781d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24782e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f24783f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f24784g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24785h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f24786i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f24787j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f24788k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24789l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final View f24790m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f24791n;

    private sb0(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull View view2, @NonNull View view3, @NonNull TextView textView3, @NonNull View view4, @NonNull ImageView imageView4) {
        this.f24778a = constraintLayout;
        this.f24779b = simpleDraweeView;
        this.f24780c = textView;
        this.f24781d = view;
        this.f24782e = imageView;
        this.f24783f = imageView2;
        this.f24784g = simpleDraweeView2;
        this.f24785h = textView2;
        this.f24786i = imageView3;
        this.f24787j = view2;
        this.f24788k = view3;
        this.f24789l = textView3;
        this.f24790m = view4;
        this.f24791n = imageView4;
    }

    @NonNull
    public static sb0 a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.btn;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn);
            if (textView != null) {
                i2 = R.id.divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (findChildViewById != null) {
                    i2 = R.id.icLevel1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icLevel1);
                    if (imageView != null) {
                        i2 = R.id.icLevel1Bg;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icLevel1Bg);
                        if (imageView2 != null) {
                            i2 = R.id.img;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.label;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.label);
                                if (textView2 != null) {
                                    i2 = R.id.like;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.like);
                                    if (imageView3 != null) {
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
                                                        i2 = R.id.vip;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.vip);
                                                        if (imageView4 != null) {
                                                            return new sb0((ConstraintLayout) view, simpleDraweeView, textView, findChildViewById, imageView, imageView2, simpleDraweeView2, textView2, imageView3, findChildViewById2, findChildViewById3, textView3, findChildViewById4, imageView4);
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
    public static sb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simulator_exit_friend_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24778a;
    }
}
