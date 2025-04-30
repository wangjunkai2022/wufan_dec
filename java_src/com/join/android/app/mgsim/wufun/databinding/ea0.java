package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ScreenshortBigimagLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ea0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19648a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19649b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19650c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19651d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19652e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19653f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager f19654g;

    private ea0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ViewPager viewPager) {
        this.f19648a = relativeLayout;
        this.f19649b = imageView;
        this.f19650c = linearLayout;
        this.f19651d = textView;
        this.f19652e = textView2;
        this.f19653f = textView3;
        this.f19654g = viewPager;
    }

    @NonNull
    public static ea0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.bottomLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottomLayout);
            if (linearLayout != null) {
                i2 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                if (textView != null) {
                    i2 = R.id.nameAndDate;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nameAndDate);
                    if (textView2 != null) {
                        i2 = R.id.positionShow;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.positionShow);
                        if (textView3 != null) {
                            i2 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                            if (viewPager != null) {
                                return new ea0((RelativeLayout) view, imageView, linearLayout, textView, textView2, textView3, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ea0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ea0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.screenshort_bigimag_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19648a;
    }
}
