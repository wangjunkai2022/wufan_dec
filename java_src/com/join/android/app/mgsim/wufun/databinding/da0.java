package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort;
/* compiled from: ScreenshortActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class da0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19273a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19274b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayoutScreenShort f19275c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19276d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19277e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ViewPager f19278f;

    private da0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SlidingTabLayoutScreenShort slidingTabLayoutScreenShort, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ViewPager viewPager) {
        this.f19273a = linearLayout;
        this.f19274b = imageView;
        this.f19275c = slidingTabLayoutScreenShort;
        this.f19276d = textView;
        this.f19277e = textView2;
        this.f19278f = viewPager;
    }

    @NonNull
    public static da0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.tableLayout;
            SlidingTabLayoutScreenShort slidingTabLayoutScreenShort = (SlidingTabLayoutScreenShort) ViewBindings.findChildViewById(view, R.id.tableLayout);
            if (slidingTabLayoutScreenShort != null) {
                i2 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    i2 = R.id.upload;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.upload);
                    if (textView2 != null) {
                        i2 = R.id.viewpager;
                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                        if (viewPager != null) {
                            return new da0((LinearLayout) view, imageView, slidingTabLayoutScreenShort, textView, textView2, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static da0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static da0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.screenshort_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19273a;
    }
}
