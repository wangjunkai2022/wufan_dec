package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameRecommendView1Binding.java */
/* loaded from: classes3.dex */
public final class kq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21878a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21879b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21880c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f21881d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21882e;

    private kq(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2) {
        this.f21878a = constraintLayout;
        this.f21879b = simpleDraweeView;
        this.f21880c = textView;
        this.f21881d = view;
        this.f21882e = textView2;
    }

    @NonNull
    public static kq a(@NonNull View view) {
        int i2 = R.id.bg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.bg);
        if (simpleDraweeView != null) {
            i2 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView != null) {
                i2 = R.id.tbg;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.tbg);
                if (findChildViewById != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new kq((ConstraintLayout) view, simpleDraweeView, textView, findChildViewById, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_recommend_view1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21878a;
    }
}
