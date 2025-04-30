package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogGameroomKickBinding.java */
/* loaded from: classes3.dex */
public final class vb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25796a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25797b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25798c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25799d;

    private vb(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25796a = relativeLayout;
        this.f25797b = linearLayout;
        this.f25798c = textView;
        this.f25799d = textView2;
    }

    @NonNull
    public static vb a(@NonNull View view) {
        int i2 = R.id.iv_close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (linearLayout != null) {
            i2 = R.id.tv_kickinfo;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_kickinfo);
            if (textView != null) {
                i2 = R.id.tv_position;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_position);
                if (textView2 != null) {
                    return new vb((RelativeLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_gameroom_kick, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25796a;
    }
}
