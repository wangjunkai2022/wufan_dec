package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchListItemPostFooterBinding.java */
/* loaded from: classes3.dex */
public final class g00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20268a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20269b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20270c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20271d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20272e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f20273f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20274g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f20275h;

    private g00(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull View view) {
        this.f20268a = constraintLayout;
        this.f20269b = textView;
        this.f20270c = textView2;
        this.f20271d = imageView;
        this.f20272e = textView3;
        this.f20273f = imageView2;
        this.f20274g = imageView3;
        this.f20275h = view;
    }

    @NonNull
    public static g00 a(@NonNull View view) {
        int i2 = R.id.forum_post_commit;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_commit);
        if (textView != null) {
            i2 = R.id.forum_post_praise;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_praise);
            if (textView2 != null) {
                i2 = R.id.forum_post_praise_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_praise_icon);
                if (imageView != null) {
                    i2 = R.id.forum_post_view;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_view);
                    if (textView3 != null) {
                        i2 = R.id.imageView10;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView10);
                        if (imageView2 != null) {
                            i2 = R.id.imageView9;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView9);
                            if (imageView3 != null) {
                                i2 = R.id.post_footer_divider;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
                                if (findChildViewById != null) {
                                    return new g00((ConstraintLayout) view, textView, textView2, imageView, textView3, imageView2, imageView3, findChildViewById);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_list_item_post_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20268a;
    }
}
