package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;
/* compiled from: InstallAppNoticeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class wo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26228a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f26229b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CircleIndicator f26230c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26231d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f26232e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26233f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final MultiTouchViewPager f26234g;

    private wo(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull CircleIndicator circleIndicator, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull MultiTouchViewPager multiTouchViewPager) {
        this.f26228a = linearLayout;
        this.f26229b = view;
        this.f26230c = circleIndicator;
        this.f26231d = textView;
        this.f26232e = simpleDraweeView;
        this.f26233f = linearLayout2;
        this.f26234g = multiTouchViewPager;
    }

    @NonNull
    public static wo a(@NonNull View view) {
        int i2 = R.id.holder;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.holder);
        if (findChildViewById != null) {
            i2 = R.id.indicator;
            CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
            if (circleIndicator != null) {
                i2 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                if (textView != null) {
                    i2 = R.id.more;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.more);
                    if (simpleDraweeView != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i2 = R.id.viewPager;
                        MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                        if (multiTouchViewPager != null) {
                            return new wo(linearLayout, findChildViewById, circleIndicator, textView, simpleDraweeView, linearLayout, multiTouchViewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_app_notice_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26228a;
    }
}
