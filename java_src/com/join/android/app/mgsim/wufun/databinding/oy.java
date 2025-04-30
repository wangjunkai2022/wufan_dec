package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemCommentImageBinding.java */
/* loaded from: classes3.dex */
public final class oy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23382a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23383b;

    private oy(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f23382a = linearLayout;
        this.f23383b = simpleDraweeView;
    }

    @NonNull
    public static oy a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.comment_img);
        if (simpleDraweeView != null) {
            return new oy((LinearLayout) view, simpleDraweeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.comment_img)));
    }

    @NonNull
    public static oy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_comment_image, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23382a;
    }
}
