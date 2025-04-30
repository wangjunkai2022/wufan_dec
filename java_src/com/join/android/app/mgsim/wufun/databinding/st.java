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
/* compiled from: LayoutInviteBattle1Binding.java */
/* loaded from: classes3.dex */
public final class st implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24973a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24974b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24975c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24976d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24977e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f24978f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24979g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24980h;

    private st(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24973a = constraintLayout;
        this.f24974b = imageView;
        this.f24975c = imageView2;
        this.f24976d = imageView3;
        this.f24977e = imageView4;
        this.f24978f = view;
        this.f24979g = textView;
        this.f24980h = textView2;
    }

    @NonNull
    public static st a(@NonNull View view) {
        int i2 = R.id.button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.button);
        if (imageView != null) {
            i2 = R.id.button1;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.button1);
            if (imageView2 != null) {
                i2 = R.id.imageView66;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView66);
                if (imageView3 != null) {
                    i2 = R.id.imageView68;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView68);
                    if (imageView4 != null) {
                        i2 = R.id.iv_close;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.iv_close);
                        if (findChildViewById != null) {
                            i2 = R.id.textView97;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView97);
                            if (textView != null) {
                                i2 = R.id.txt;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt);
                                if (textView2 != null) {
                                    return new st((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, findChildViewById, textView, textView2);
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
    public static st c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static st d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_invite_battle1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24973a;
    }
}
