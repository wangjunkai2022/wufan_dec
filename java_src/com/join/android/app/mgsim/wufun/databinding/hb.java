package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFightConnectServer2Binding.java */
/* loaded from: classes3.dex */
public final class hb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20724a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20725b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20726c;

    private hb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20724a = relativeLayout;
        this.f20725b = imageView;
        this.f20726c = textView;
    }

    @NonNull
    public static hb a(@NonNull View view) {
        int i2 = R.id.fightLoadingIcon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.fightLoadingIcon);
        if (imageView != null) {
            i2 = R.id.hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hint);
            if (textView != null) {
                return new hb((RelativeLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_connect_server2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20724a;
    }
}
