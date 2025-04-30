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
/* compiled from: SimpleSheetViewBinding.java */
/* loaded from: classes3.dex */
public final class rb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24328a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24329b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f24330c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24331d;

    private rb0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ListView listView, @NonNull TextView textView) {
        this.f24328a = linearLayout;
        this.f24329b = linearLayout2;
        this.f24330c = listView;
        this.f24331d = textView;
    }

    @NonNull
    public static rb0 a(@NonNull View view) {
        int i2 = R.id.close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.close);
        if (linearLayout != null) {
            i2 = R.id.list;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.list);
            if (listView != null) {
                i2 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    return new rb0((LinearLayout) view, linearLayout, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simple_sheet_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24328a;
    }
}
