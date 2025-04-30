package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyAccountGetpassbyphoneBinding.java */
/* loaded from: classes3.dex */
public final class m40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22336a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22337b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f22338c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f22339d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final EditText f22340e;

    private m40(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull Button button, @NonNull EditText editText2) {
        this.f22336a = linearLayout;
        this.f22337b = linearLayout2;
        this.f22338c = editText;
        this.f22339d = button;
        this.f22340e = editText2;
    }

    @NonNull
    public static m40 a(@NonNull View view) {
        int i2 = R.id.linearLayout3;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout3);
        if (linearLayout != null) {
            i2 = R.id.newPass;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.newPass);
            if (editText != null) {
                i2 = R.id.okChange;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.okChange);
                if (button != null) {
                    i2 = R.id.reWhitePass;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.reWhitePass);
                    if (editText2 != null) {
                        return new m40((LinearLayout) view, linearLayout, editText, button, editText2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_getpassbyphone, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22336a;
    }
}
