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
/* compiled from: SettingPasswordActivityBinding.java */
/* loaded from: classes3.dex */
public final class fb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20082a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20083b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f20084c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f20085d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final EditText f20086e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ScrollView f20087f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f20088g;

    private fb0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull ScrollView scrollView, @NonNull Button button) {
        this.f20082a = linearLayout;
        this.f20083b = linearLayout2;
        this.f20084c = editText;
        this.f20085d = editText2;
        this.f20086e = editText3;
        this.f20087f = scrollView;
        this.f20088g = button;
    }

    @NonNull
    public static fb0 a(@NonNull View view) {
        int i2 = R.id.layoutTop;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutTop);
        if (linearLayout != null) {
            i2 = R.id.password;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.password);
            if (editText != null) {
                i2 = R.id.recentPassword;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.recentPassword);
                if (editText2 != null) {
                    i2 = R.id.repeatPassword;
                    EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.repeatPassword);
                    if (editText3 != null) {
                        i2 = R.id.scrollView;
                        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                        if (scrollView != null) {
                            i2 = R.id.settingButn;
                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.settingButn);
                            if (button != null) {
                                return new fb0((LinearLayout) view, linearLayout, editText, editText2, editText3, scrollView, button);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.setting_password_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20082a;
    }
}
