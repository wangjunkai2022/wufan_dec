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
/* compiled from: DialogAcceptInviteFightBinding.java */
/* loaded from: classes3.dex */
public final class ja implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21420a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21421b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21422c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f21423d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f21424e;

    private ja(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull EditText editText, @NonNull Button button3) {
        this.f21420a = linearLayout;
        this.f21421b = button;
        this.f21422c = button2;
        this.f21423d = editText;
        this.f21424e = button3;
    }

    @NonNull
    public static ja a(@NonNull View view) {
        int i2 = R.id.acceptBtn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.acceptBtn);
        if (button != null) {
            i2 = R.id.cancelBtn;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.cancelBtn);
            if (button2 != null) {
                i2 = R.id.inputTxt;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.inputTxt);
                if (editText != null) {
                    i2 = R.id.pasteBtn;
                    Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.pasteBtn);
                    if (button3 != null) {
                        return new ja((LinearLayout) view, button, button2, editText, button3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ja c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ja d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_accept_invite_fight, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21420a;
    }
}
