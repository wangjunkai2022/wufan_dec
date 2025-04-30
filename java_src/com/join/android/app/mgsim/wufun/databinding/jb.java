package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFightCreateServerBinding.java */
/* loaded from: classes3.dex */
public final class jb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21428a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21429b;

    private jb(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f21428a = relativeLayout;
        this.f21429b = textView;
    }

    @NonNull
    public static jb a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hint);
        if (textView != null) {
            return new jb((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.hint)));
    }

    @NonNull
    public static jb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_create_server, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21428a;
    }
}
