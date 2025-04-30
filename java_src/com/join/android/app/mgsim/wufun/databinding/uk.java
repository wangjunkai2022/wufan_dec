package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemSubscribeBinding.java */
/* loaded from: classes3.dex */
public final class uk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25539a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25540b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HorizontalScrollView f25541c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25542d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25543e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25544f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25545g;

    private uk(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull HorizontalScrollView horizontalScrollView, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3) {
        this.f25539a = linearLayout;
        this.f25540b = imageView;
        this.f25541c = horizontalScrollView;
        this.f25542d = button;
        this.f25543e = linearLayout2;
        this.f25544f = textView;
        this.f25545g = linearLayout3;
    }

    @NonNull
    public static uk a(@NonNull View view) {
        int i2 = R.id.imageView18;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView18);
        if (imageView != null) {
            i2 = R.id.scrollView;
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
            if (horizontalScrollView != null) {
                i2 = R.id.titleMoreBookButn;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.titleMoreBookButn);
                if (button != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i2 = R.id.titleMoreMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleMoreMessage);
                    if (textView != null) {
                        i2 = R.id.titleMoreTip;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titleMoreTip);
                        if (linearLayout2 != null) {
                            return new uk(linearLayout, imageView, horizontalScrollView, button, linearLayout, textView, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_subscribe, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25539a;
    }
}
