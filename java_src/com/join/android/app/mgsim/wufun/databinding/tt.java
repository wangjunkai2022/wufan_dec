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
/* compiled from: LayoutInviteBattleBinding.java */
/* loaded from: classes3.dex */
public final class tt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25302a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25303b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25304c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25305d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25306e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25307f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f25308g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25309h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25310i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25311j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f25312k;

    private tt(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull View view, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view3) {
        this.f25302a = constraintLayout;
        this.f25303b = imageView;
        this.f25304c = imageView2;
        this.f25305d = imageView3;
        this.f25306e = imageView4;
        this.f25307f = view;
        this.f25308g = view2;
        this.f25309h = textView;
        this.f25310i = textView2;
        this.f25311j = textView3;
        this.f25312k = view3;
    }

    @NonNull
    public static tt a(@NonNull View view) {
        int i2 = R.id.imageView66;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView66);
        if (imageView != null) {
            i2 = R.id.imageView68;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView68);
            if (imageView2 != null) {
                i2 = R.id.imageView69;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView69);
                if (imageView3 != null) {
                    i2 = R.id.imageView70;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView70);
                    if (imageView4 != null) {
                        i2 = R.id.iv_close;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.iv_close);
                        if (findChildViewById != null) {
                            i2 = R.id.qq;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.qq);
                            if (findChildViewById2 != null) {
                                i2 = R.id.textView97;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView97);
                                if (textView != null) {
                                    i2 = R.id.textView98;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView98);
                                    if (textView2 != null) {
                                        i2 = R.id.textView99;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView99);
                                        if (textView3 != null) {
                                            i2 = R.id.wechat;
                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.wechat);
                                            if (findChildViewById3 != null) {
                                                return new tt((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, findChildViewById, findChildViewById2, textView, textView2, textView3, findChildViewById3);
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
    public static tt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_invite_battle, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25302a;
    }
}
