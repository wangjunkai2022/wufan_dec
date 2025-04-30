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
/* compiled from: ActivityTest2Binding.java */
/* loaded from: classes3.dex */
public final class e2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19561a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19562b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f19563c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f19564d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f19565e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f19566f;

    private e2(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5) {
        this.f19561a = linearLayout;
        this.f19562b = button;
        this.f19563c = button2;
        this.f19564d = button3;
        this.f19565e = button4;
        this.f19566f = button5;
    }

    @NonNull
    public static e2 a(@NonNull View view) {
        int i2 = R.id.butn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.butn);
        if (button != null) {
            i2 = R.id.butn2;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.butn2);
            if (button2 != null) {
                i2 = R.id.butn3;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.butn3);
                if (button3 != null) {
                    i2 = R.id.butn4;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.butn4);
                    if (button4 != null) {
                        i2 = R.id.butn5;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.butn5);
                        if (button5 != null) {
                            return new e2((LinearLayout) view, button, button2, button3, button4, button5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_test2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19561a;
    }
}
