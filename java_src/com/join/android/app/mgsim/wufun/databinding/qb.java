package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputUnderLine;
/* compiled from: DialogFightWifiIpBinding.java */
/* loaded from: classes3.dex */
public final class qb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23929c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23930d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final InputUnderLine f23931e;

    private qb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView, @NonNull InputUnderLine inputUnderLine) {
        this.f23927a = relativeLayout;
        this.f23928b = imageView;
        this.f23929c = button;
        this.f23930d = textView;
        this.f23931e = inputUnderLine;
    }

    @NonNull
    public static qb a(@NonNull View view) {
        int i2 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i2 = R.id.join;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.join);
            if (button != null) {
                i2 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                if (textView != null) {
                    i2 = R.id.txtIP;
                    InputUnderLine inputUnderLine = (InputUnderLine) ViewBindings.findChildViewById(view, R.id.txtIP);
                    if (inputUnderLine != null) {
                        return new qb((RelativeLayout) view, imageView, button, textView, inputUnderLine);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_wifi_ip, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23927a;
    }
}
