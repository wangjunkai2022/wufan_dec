package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogInvitePwdBinding.java */
/* loaded from: classes3.dex */
public final class ac implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18091a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18092b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18093c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18094d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18095e;

    private ac(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18091a = relativeLayout;
        this.f18092b = button;
        this.f18093c = linearLayout;
        this.f18094d = textView;
        this.f18095e = textView2;
    }

    @NonNull
    public static ac a(@NonNull View view) {
        int i2 = R.id.btn_copy;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_copy);
        if (button != null) {
            i2 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (linearLayout != null) {
                i2 = R.id.tv_pwd_info;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pwd_info);
                if (textView != null) {
                    i2 = R.id.tv_top;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                    if (textView2 != null) {
                        return new ac((RelativeLayout) view, button, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ac c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ac d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_invite_pwd, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18091a;
    }
}
