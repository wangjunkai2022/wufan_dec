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
/* compiled from: DialogUploadBinding.java */
/* loaded from: classes3.dex */
public final class id implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21136a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f21137b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21138c;

    private id(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull TextView textView) {
        this.f21136a = linearLayout;
        this.f21137b = listView;
        this.f21138c = textView;
    }

    @NonNull
    public static id a(@NonNull View view) {
        int i2 = R.id.listView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
        if (listView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new id((LinearLayout) view, listView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static id c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static id d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_upload, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21136a;
    }
}
