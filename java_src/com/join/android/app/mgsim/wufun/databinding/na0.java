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
/* compiled from: SearchFailedHeaderBinding.java */
/* loaded from: classes3.dex */
public final class na0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22826a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22827b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22828c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22829d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22830e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22831f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22832g;

    private na0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22826a = relativeLayout;
        this.f22827b = textView;
        this.f22828c = linearLayout;
        this.f22829d = imageView;
        this.f22830e = linearLayout2;
        this.f22831f = textView2;
        this.f22832g = textView3;
    }

    @NonNull
    public static na0 a(@NonNull View view) {
        int i2 = R.id.messageHeader;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.messageHeader);
        if (textView != null) {
            i2 = R.id.messageLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.messageLayout);
            if (linearLayout != null) {
                i2 = R.id.reloadingHeader;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.reloadingHeader);
                if (imageView != null) {
                    i2 = R.id.searchHeaderLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchHeaderLayout);
                    if (linearLayout2 != null) {
                        i2 = R.id.textView;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                        if (textView2 != null) {
                            i2 = R.id.textView2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                            if (textView3 != null) {
                                return new na0((RelativeLayout) view, textView, linearLayout, imageView, linearLayout2, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static na0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static na0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_failed_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22826a;
    }
}
