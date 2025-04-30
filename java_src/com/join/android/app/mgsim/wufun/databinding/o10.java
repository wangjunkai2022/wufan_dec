package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailMessageBinding.java */
/* loaded from: classes3.dex */
public final class o10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23089a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23090b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23091c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f23092d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23093e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23094f;

    private o10(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView) {
        this.f23089a = linearLayout;
        this.f23090b = linearLayout2;
        this.f23091c = linearLayout3;
        this.f23092d = view;
        this.f23093e = linearLayout4;
        this.f23094f = imageView;
    }

    @NonNull
    public static o10 a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.itemLayout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.itemLayout);
            if (linearLayout2 != null) {
                i2 = R.id.itemLine;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.itemLine);
                if (findChildViewById != null) {
                    i2 = R.id.messageLayoutMain;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.messageLayoutMain);
                    if (linearLayout3 != null) {
                        i2 = R.id.moreImage;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.moreImage);
                        if (imageView != null) {
                            return new o10((LinearLayout) view, linearLayout, linearLayout2, findChildViewById, linearLayout3, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_message, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23089a;
    }
}
