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
/* compiled from: DialogModRewardBinding.java */
/* loaded from: classes3.dex */
public final class qc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23938a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23939b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23940c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23941d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23942e;

    private qc(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23938a = constraintLayout;
        this.f23939b = imageView;
        this.f23940c = textView;
        this.f23941d = textView2;
        this.f23942e = textView3;
    }

    @NonNull
    public static qc a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.launch;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.launch);
            if (textView != null) {
                i2 = R.id.tv_content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                if (textView2 != null) {
                    i2 = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new qc((ConstraintLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_reward, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23938a;
    }
}
