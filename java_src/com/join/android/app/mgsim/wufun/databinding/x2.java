package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AlertFootViewBinding.java */
/* loaded from: classes3.dex */
public final class x2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26381a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26382b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f26383c;

    private x2(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2) {
        this.f26381a = linearLayout;
        this.f26382b = button;
        this.f26383c = button2;
    }

    @NonNull
    public static x2 a(@NonNull View view) {
        int i2 = R.id.btn_dialog_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_dialog_cancel);
        if (button != null) {
            i2 = R.id.btn_dialog_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_dialog_ok);
            if (button2 != null) {
                return new x2((LinearLayout) view, button, button2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static x2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.alert_foot_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26381a;
    }
}
