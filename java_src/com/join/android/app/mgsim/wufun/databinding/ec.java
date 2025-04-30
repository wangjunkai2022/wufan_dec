package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NoScrollViewPager;
/* compiled from: DialogLocalgameThreeViewBinding.java */
/* loaded from: classes3.dex */
public final class ec implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19689a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19690b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19691c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19692d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19693e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19694f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19695g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final NoScrollViewPager f19696h;

    private ec(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull NoScrollViewPager noScrollViewPager) {
        this.f19689a = relativeLayout;
        this.f19690b = button;
        this.f19691c = textView;
        this.f19692d = textView2;
        this.f19693e = textView3;
        this.f19694f = textView4;
        this.f19695g = textView5;
        this.f19696h = noScrollViewPager;
    }

    @NonNull
    public static ec a(@NonNull View view) {
        int i2 = R.id.localGameThreeBt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.localGameThreeBt);
        if (button != null) {
            i2 = R.id.localGameThreeContentTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.localGameThreeContentTv);
            if (textView != null) {
                i2 = R.id.localGameThreeNotTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameThreeNotTv);
                if (textView2 != null) {
                    i2 = R.id.localGameThreeNumTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameThreeNumTv);
                    if (textView3 != null) {
                        i2 = R.id.localGameThreeStatuTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameThreeStatuTv);
                        if (textView4 != null) {
                            i2 = R.id.localGameThreeTitleTv;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameThreeTitleTv);
                            if (textView5 != null) {
                                i2 = R.id.localGameThreeViewPager;
                                NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.localGameThreeViewPager);
                                if (noScrollViewPager != null) {
                                    return new ec((RelativeLayout) view, button, textView, textView2, textView3, textView4, textView5, noScrollViewPager);
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
    public static ec c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ec d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_localgame_three_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19689a;
    }
}
