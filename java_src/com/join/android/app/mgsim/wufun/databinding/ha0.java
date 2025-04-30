package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort;
/* compiled from: ScreenshortUploadActivityBinding.java */
/* loaded from: classes3.dex */
public final class ha0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20717a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20718b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f20719c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20720d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f20721e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SlidingTabLayoutScreenShort f20722f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager f20723g;

    private ha0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SlidingTabLayoutScreenShort slidingTabLayoutScreenShort, @NonNull ViewPager viewPager) {
        this.f20717a = linearLayout;
        this.f20718b = imageView;
        this.f20719c = editText;
        this.f20720d = textView;
        this.f20721e = simpleDraweeView;
        this.f20722f = slidingTabLayoutScreenShort;
        this.f20723g = viewPager;
    }

    @NonNull
    public static ha0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.commitMessage;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.commitMessage);
            if (editText != null) {
                i2 = R.id.finishButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.finishButn);
                if (textView != null) {
                    i2 = R.id.imgUpload;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imgUpload);
                    if (simpleDraweeView != null) {
                        i2 = R.id.selecter;
                        SlidingTabLayoutScreenShort slidingTabLayoutScreenShort = (SlidingTabLayoutScreenShort) ViewBindings.findChildViewById(view, R.id.selecter);
                        if (slidingTabLayoutScreenShort != null) {
                            i2 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                            if (viewPager != null) {
                                return new ha0((LinearLayout) view, imageView, editText, textView, simpleDraweeView, slidingTabLayoutScreenShort, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ha0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ha0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.screenshort_upload_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20717a;
    }
}
