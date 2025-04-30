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
/* compiled from: MgForumForumTMemberItemModeratorsBinding.java */
/* loaded from: classes3.dex */
public final class vx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25937a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f25938b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25939c;

    private vx(@NonNull LinearLayout linearLayout, @NonNull HListView hListView, @NonNull TextView textView) {
        this.f25937a = linearLayout;
        this.f25938b = hListView;
        this.f25939c = textView;
    }

    @NonNull
    public static vx a(@NonNull View view) {
        int i2 = R.id.list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.list);
        if (hListView != null) {
            i2 = R.id.noMoreModerator;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noMoreModerator);
            if (textView != null) {
                return new vx((LinearLayout) view, hListView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_t_member_item_moderators, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25937a;
    }
}
