package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AppointmentPayPopwindowPageBinding.java */
/* loaded from: classes3.dex */
public final class j3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ScrollView f21366a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21367b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f21368c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21369d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f21370e;

    private j3(@NonNull ScrollView scrollView, @NonNull Button button, @NonNull EditText editText, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f21366a = scrollView;
        this.f21367b = button;
        this.f21368c = editText;
        this.f21369d = linearLayout;
        this.f21370e = linearLayout2;
    }

    @NonNull
    public static j3 a(@NonNull View view) {
        int i2 = R.id.btn_confirm;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (button != null) {
            i2 = R.id.edit;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edit);
            if (editText != null) {
                i2 = R.id.ll_dismiss;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_dismiss);
                if (linearLayout != null) {
                    i2 = R.id.toot;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.toot);
                    if (linearLayout2 != null) {
                        return new j3((ScrollView) view, button, editText, linearLayout, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static j3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.appointment_pay_popwindow_page, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ScrollView getRoot() {
        return this.f21366a;
    }
}
