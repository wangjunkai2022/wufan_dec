package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFastJoinRoomBinding.java */
/* loaded from: classes3.dex */
public final class gb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20368a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20369b;

    private gb(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f20368a = linearLayout;
        this.f20369b = textView;
    }

    @NonNull
    public static gb a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_countDown);
        if (textView != null) {
            return new gb((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_countDown)));
    }

    @NonNull
    public static gb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fast_join_room, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20368a;
    }
}
