package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyAccountReginSendmmscodeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class p40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23469a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23470b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f23471c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23472d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23473e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f23474f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23475g;

    private p40(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull TextView textView3) {
        this.f23469a = linearLayout;
        this.f23470b = linearLayout2;
        this.f23471c = editText;
        this.f23472d = textView;
        this.f23473e = textView2;
        this.f23474f = button;
        this.f23475g = textView3;
    }

    @NonNull
    public static p40 a(@NonNull View view) {
        int i2 = R.id.linearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
        if (linearLayout != null) {
            i2 = R.id.mmsCode;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.mmsCode);
            if (editText != null) {
                i2 = R.id.phoneNumber;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.phoneNumber);
                if (textView != null) {
                    i2 = R.id.resendCode;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.resendCode);
                    if (textView2 != null) {
                        i2 = R.id.sendCode;
                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.sendCode);
                        if (button != null) {
                            i2 = R.id.textView4;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView4);
                            if (textView3 != null) {
                                return new p40((LinearLayout) view, linearLayout, editText, textView, textView2, button, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_regin_sendmmscode_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23469a;
    }
}
