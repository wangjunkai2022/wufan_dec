package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentListView;
/* compiled from: ForumActivityForumPostBinding.java */
/* loaded from: classes3.dex */
public final class jf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21465a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WrapContentListView f21466b;

    private jf(@NonNull RelativeLayout relativeLayout, @NonNull WrapContentListView wrapContentListView) {
        this.f21465a = relativeLayout;
        this.f21466b = wrapContentListView;
    }

    @NonNull
    public static jf a(@NonNull View view) {
        WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(view, R.id.wrapListView);
        if (wrapContentListView != null) {
            return new jf((RelativeLayout) view, wrapContentListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.wrapListView)));
    }

    @NonNull
    public static jf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_activity_forum_post, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21465a;
    }
}
