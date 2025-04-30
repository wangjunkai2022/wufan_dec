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
import it.sephiroth.android.library.widget.HListView;
/* compiled from: GamelistListItemHongrenBinding.java */
/* loaded from: classes3.dex */
public final class vm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25867a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f25868b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25869c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25870d;

    private vm(@NonNull LinearLayout linearLayout, @NonNull HListView hListView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f25867a = linearLayout;
        this.f25868b = hListView;
        this.f25869c = linearLayout2;
        this.f25870d = textView;
    }

    @NonNull
    public static vm a(@NonNull View view) {
        int i2 = R.id.hongrenlist;
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.hongrenlist);
        if (hListView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView != null) {
                return new vm(linearLayout, hListView, linearLayout, textView);
            }
            i2 = R.id.title;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_list_item_hongren, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25867a;
    }
}
