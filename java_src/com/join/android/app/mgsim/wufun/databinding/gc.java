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
/* compiled from: DialogMessageView1Binding.java */
/* loaded from: classes3.dex */
public final class gc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20387a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20388b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f20389c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f20390d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20391e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20392f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20393g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20394h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20395i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20396j;

    private gc(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f20387a = linearLayout;
        this.f20388b = button;
        this.f20389c = checkBox;
        this.f20390d = button2;
        this.f20391e = textView;
        this.f20392f = textView2;
        this.f20393g = textView3;
        this.f20394h = textView4;
        this.f20395i = textView5;
        this.f20396j = textView6;
    }

    @NonNull
    public static gc a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialogCb;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.dialogCb);
            if (checkBox != null) {
                i2 = R.id.dialogMessagBt;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialogMessagBt);
                if (button2 != null) {
                    i2 = R.id.dialogMessagCopyTx;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialogMessagCopyTx);
                    if (textView != null) {
                        i2 = R.id.dialogMessagOneTx;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialogMessagOneTx);
                        if (textView2 != null) {
                            i2 = R.id.dialogMessagThreeTx;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialogMessagThreeTx);
                            if (textView3 != null) {
                                i2 = R.id.dialogMessagTwoTx;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.dialogMessagTwoTx);
                                if (textView4 != null) {
                                    i2 = R.id.dialogMessageTitleTx;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.dialogMessageTitleTx);
                                    if (textView5 != null) {
                                        i2 = R.id.tip_title;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                                        if (textView6 != null) {
                                            return new gc((LinearLayout) view, button, checkBox, button2, textView, textView2, textView3, textView4, textView5, textView6);
                                        }
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
    public static gc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_message_view1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20387a;
    }
}
