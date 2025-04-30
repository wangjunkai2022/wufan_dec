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
/* compiled from: MgForumPostActivityItemEmployeeTagsBinding.java */
/* loaded from: classes3.dex */
public final class ry implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24584a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f24585b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24586c;

    private ry(@NonNull LinearLayout linearLayout, @NonNull HListView hListView, @NonNull TextView textView) {
        this.f24584a = linearLayout;
        this.f24585b = hListView;
        this.f24586c = textView;
    }

    @NonNull
    public static ry a(@NonNull View view) {
        int i2 = R.id.list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.list);
        if (hListView != null) {
            i2 = R.id.textView51;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView51);
            if (textView != null) {
                return new ry((LinearLayout) view, hListView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ry c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ry d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_employee_tags, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24584a;
    }
}
