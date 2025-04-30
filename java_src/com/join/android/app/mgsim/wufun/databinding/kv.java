package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LiveAnchorAdminLayoutBinding.java */
/* loaded from: classes3.dex */
public final class kv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21902a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f21903b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21904c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21905d;

    private kv(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21902a = linearLayout;
        this.f21903b = listView;
        this.f21904c = textView;
        this.f21905d = textView2;
    }

    @NonNull
    public static kv a(@NonNull View view) {
        int i2 = R.id.adminList;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.adminList);
        if (listView != null) {
            i2 = R.id.noAdminTest;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noAdminTest);
            if (textView != null) {
                i2 = R.id.save;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                if (textView2 != null) {
                    return new kv((LinearLayout) view, listView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_anchor_admin_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21902a;
    }
}
