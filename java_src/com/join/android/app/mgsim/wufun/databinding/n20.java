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
/* compiled from: MgpapaHomeGameNewsLayoutBinding.java */
/* loaded from: classes3.dex */
public final class n20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22710a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22711b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f22712c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22713d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22714e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22715f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f22716g;

    private n20(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view) {
        this.f22710a = constraintLayout;
        this.f22711b = simpleDraweeView;
        this.f22712c = constraintLayout2;
        this.f22713d = textView;
        this.f22714e = textView2;
        this.f22715f = textView3;
        this.f22716g = view;
    }

    @NonNull
    public static n20 a(@NonNull View view) {
        int i2 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i2 = R.id.tvDate;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvDate);
            if (textView != null) {
                i2 = R.id.tvDesc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDesc);
                if (textView2 != null) {
                    i2 = R.id.tvGameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
                    if (textView3 != null) {
                        i2 = R.id.viewTag;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.viewTag);
                        if (findChildViewById != null) {
                            return new n20(constraintLayout, simpleDraweeView, constraintLayout, textView, textView2, textView3, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_home_game_news_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22710a;
    }
}
