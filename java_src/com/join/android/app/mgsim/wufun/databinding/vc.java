package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogPicChooseBinding.java */
/* loaded from: classes3.dex */
public final class vc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25806a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25807b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25808c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25809d;

    private vc(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25806a = linearLayout;
        this.f25807b = textView;
        this.f25808c = textView2;
        this.f25809d = textView3;
    }

    @NonNull
    public static vc a(@NonNull View view) {
        int i2 = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i2 = R.id.chos_camera;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.chos_camera);
            if (textView2 != null) {
                i2 = R.id.pic_lib;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pic_lib);
                if (textView3 != null) {
                    return new vc((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_pic_choose, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25806a;
    }
}
