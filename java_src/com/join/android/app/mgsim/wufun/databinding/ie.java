package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: EmulatorListviewDownloadingCenterHistorySpeedBinding.java */
/* loaded from: classes3.dex */
public final class ie implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21141a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21142b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21143c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21144d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21145e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21146f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f21147g;

    private ie(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ConstraintLayout constraintLayout2) {
        this.f21141a = constraintLayout;
        this.f21142b = imageView;
        this.f21143c = imageView2;
        this.f21144d = textView;
        this.f21145e = textView2;
        this.f21146f = textView3;
        this.f21147g = constraintLayout2;
    }

    @NonNull
    public static ie a(@NonNull View view) {
        int i2 = R.id.imageView56;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView56);
        if (imageView != null) {
            i2 = R.id.imageView57;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView57);
            if (imageView2 != null) {
                i2 = R.id.textView76;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView76);
                if (textView != null) {
                    i2 = R.id.textView81;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView81);
                    if (textView2 != null) {
                        i2 = R.id.textView82;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView82);
                        if (textView3 != null) {
                            i2 = R.id.trial;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.trial);
                            if (constraintLayout != null) {
                                return new ie((ConstraintLayout) view, imageView, imageView2, textView, textView2, textView3, constraintLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ie c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ie d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.emulator_listview_downloading_center_history_speed, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21141a;
    }
}
