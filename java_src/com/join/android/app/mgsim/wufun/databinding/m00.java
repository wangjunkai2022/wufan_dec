package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: MgForumWelcomeItemForumTopicBinding.java */
/* loaded from: classes3.dex */
public final class m00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22292a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f22293b;

    private m00(@NonNull LinearLayout linearLayout, @NonNull HListView hListView) {
        this.f22292a = linearLayout;
        this.f22293b = hListView;
    }

    @NonNull
    public static m00 a(@NonNull View view) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.list);
        if (hListView != null) {
            return new m00((LinearLayout) view, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.list)));
    }

    @NonNull
    public static m00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_forum_topic, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22292a;
    }
}
