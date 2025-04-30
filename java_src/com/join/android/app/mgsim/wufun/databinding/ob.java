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
/* compiled from: DialogFightServerDisconnectBinding.java */
/* loaded from: classes3.dex */
public final class ob implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23209a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23210b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23211c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f23212d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23213e;

    private ob(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2) {
        this.f23209a = relativeLayout;
        this.f23210b = imageView;
        this.f23211c = textView;
        this.f23212d = button;
        this.f23213e = textView2;
    }

    @NonNull
    public static ob a(@NonNull View view) {
        int i2 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i2 = R.id.info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
            if (textView != null) {
                i2 = R.id.reJoin;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.reJoin);
                if (button != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new ob((RelativeLayout) view, imageView, textView, button, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ob c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ob d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_server_disconnect, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23209a;
    }
}
