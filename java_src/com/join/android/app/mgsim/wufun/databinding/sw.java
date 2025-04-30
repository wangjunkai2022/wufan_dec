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
/* compiled from: MgAccountUpgradeBinding.java */
/* loaded from: classes3.dex */
public final class sw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24985a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24986b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24987c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f24988d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final EditText f24989e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final EditText f24990f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ScrollView f24991g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f24992h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f24993i;

    private sw(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull Button button, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull ScrollView scrollView, @NonNull Button button2, @NonNull EditText editText4) {
        this.f24985a = linearLayout;
        this.f24986b = linearLayout2;
        this.f24987c = button;
        this.f24988d = editText;
        this.f24989e = editText2;
        this.f24990f = editText3;
        this.f24991g = scrollView;
        this.f24992h = button2;
        this.f24993i = editText4;
    }

    @NonNull
    public static sw a(@NonNull View view) {
        int i2 = R.id.alternative;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.alternative);
        if (linearLayout != null) {
            i2 = R.id.getValidateCode;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.getValidateCode);
            if (button != null) {
                i2 = R.id.nickname;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.nickname);
                if (editText != null) {
                    i2 = R.id.password;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.password);
                    if (editText2 != null) {
                        i2 = R.id.phone;
                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.phone);
                        if (editText3 != null) {
                            i2 = R.id.scrollView;
                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                            if (scrollView != null) {
                                i2 = R.id.submit;
                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.submit);
                                if (button2 != null) {
                                    i2 = R.id.validateCode;
                                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.validateCode);
                                    if (editText4 != null) {
                                        return new sw((LinearLayout) view, linearLayout, button, editText, editText2, editText3, scrollView, button2, editText4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_account_upgrade, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24985a;
    }
}
