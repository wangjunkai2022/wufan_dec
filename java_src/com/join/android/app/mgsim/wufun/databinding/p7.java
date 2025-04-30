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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
/* compiled from: CollectionThreeFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class p7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23490a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23491b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23492c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MViewpagerV4 f23493d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23494e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23495f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23496g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23497h;

    private p7(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull MViewpagerV4 mViewpagerV4, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23490a = relativeLayout;
        this.f23491b = imageView;
        this.f23492c = linearLayout;
        this.f23493d = mViewpagerV4;
        this.f23494e = relativeLayout2;
        this.f23495f = textView;
        this.f23496g = textView2;
        this.f23497h = textView3;
    }

    @NonNull
    public static p7 a(@NonNull View view) {
        int i2 = R.id.img_iconback;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_iconback);
        if (imageView != null) {
            i2 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lLayout);
            if (linearLayout != null) {
                i2 = R.id.mBottomVIewPager;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.mBottomVIewPager);
                if (mViewpagerV4 != null) {
                    i2 = R.id.relateLayoutRight;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutRight);
                    if (relativeLayout != null) {
                        i2 = R.id.textViewPosition;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewPosition);
                        if (textView != null) {
                            i2 = R.id.textViewTime;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textViewTime);
                            if (textView2 != null) {
                                i2 = R.id.textViewTitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textViewTitle);
                                if (textView3 != null) {
                                    return new p7((RelativeLayout) view, imageView, linearLayout, mViewpagerV4, relativeLayout, textView, textView2, textView3);
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
    public static p7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_three_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23490a;
    }
}
