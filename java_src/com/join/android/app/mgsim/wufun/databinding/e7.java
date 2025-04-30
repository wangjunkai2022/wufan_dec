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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudbackupsCanListBinding.java */
/* loaded from: classes3.dex */
public final class e7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19606a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19607b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19608c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19609d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19610e;

    private e7(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19606a = linearLayout;
        this.f19607b = textView;
        this.f19608c = imageView;
        this.f19609d = textView2;
        this.f19610e = textView3;
    }

    @NonNull
    public static e7 a(@NonNull View view) {
        int i2 = R.id.handOrAuto;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.handOrAuto);
        if (textView != null) {
            i2 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
            if (imageView != null) {
                i2 = R.id.phoneType;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneType);
                if (textView2 != null) {
                    i2 = R.id.upTime;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.upTime);
                    if (textView3 != null) {
                        return new e7((LinearLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloudbackups_can_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19606a;
    }
}
