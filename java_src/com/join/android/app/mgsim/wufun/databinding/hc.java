package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogMessageViewBinding.java */
/* loaded from: classes3.dex */
public final class hc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20728a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20729b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f20730c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20731d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20732e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20733f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20734g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20735h;

    private hc(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f20728a = relativeLayout;
        this.f20729b = button;
        this.f20730c = button2;
        this.f20731d = textView;
        this.f20732e = textView2;
        this.f20733f = textView3;
        this.f20734g = textView4;
        this.f20735h = textView5;
    }

    @NonNull
    public static hc a(@NonNull View view) {
        int i2 = R.id.dialogMessagBt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialogMessagBt);
        if (button != null) {
            i2 = R.id.dialogMessagCloseBt;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialogMessagCloseBt);
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
                                    return new hc((RelativeLayout) view, button, button2, textView, textView2, textView3, textView4, textView5);
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
    public static hc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_message_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20728a;
    }
}
