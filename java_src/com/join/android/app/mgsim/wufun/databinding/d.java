package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AccountloginNoticeDialogBinding.java */
/* loaded from: classes3.dex */
public final class d implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19125a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19126b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f19127c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CheckBox f19128d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19129e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f19130f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19131g;

    private d(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2) {
        this.f19125a = linearLayout;
        this.f19126b = button;
        this.f19127c = button2;
        this.f19128d = checkBox;
        this.f19129e = textView;
        this.f19130f = view;
        this.f19131g = textView2;
    }

    @NonNull
    public static d a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialogCb;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.dialogCb);
                if (checkBox != null) {
                    i2 = R.id.dialog_content;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                    if (textView != null) {
                        i2 = R.id.middle;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.middle);
                        if (findChildViewById != null) {
                            i2 = R.id.tip_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                            if (textView2 != null) {
                                return new d((LinearLayout) view, button, button2, checkBox, textView, findChildViewById, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.accountlogin_notice_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19125a;
    }
}
