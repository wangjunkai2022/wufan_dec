package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogCustomerAlertBinding.java */
/* loaded from: classes3.dex */
public final class za implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27172a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f27173b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f27174c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27175d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27176e;

    private za(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27172a = linearLayout;
        this.f27173b = button;
        this.f27174c = button2;
        this.f27175d = textView;
        this.f27176e = textView2;
    }

    @NonNull
    public static za a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView2 != null) {
                        return new za((LinearLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static za c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static za d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_customer_alert, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27172a;
    }
}
