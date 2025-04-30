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
/* compiled from: DeleteDialogBinding.java */
/* loaded from: classes3.dex */
public final class k9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21755a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21756b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21757c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21758d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21759e;

    private k9(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21755a = linearLayout;
        this.f21756b = button;
        this.f21757c = button2;
        this.f21758d = textView;
        this.f21759e = textView2;
    }

    @NonNull
    public static k9 a(@NonNull View view) {
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
                        return new k9((LinearLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.delete_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21755a;
    }
}
