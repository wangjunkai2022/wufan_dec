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
/* compiled from: MyAccountForgetpassLayoutBinding.java */
/* loaded from: classes3.dex */
public final class l40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22018a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f22019b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f22020c;

    private l40(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull EditText editText) {
        this.f22018a = linearLayout;
        this.f22019b = button;
        this.f22020c = editText;
    }

    @NonNull
    public static l40 a(@NonNull View view) {
        int i2 = R.id.getpassByPhoneNumber;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.getpassByPhoneNumber);
        if (button != null) {
            i2 = R.id.phoneText;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.phoneText);
            if (editText != null) {
                return new l40((LinearLayout) view, button, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_forgetpass_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22018a;
    }
}
