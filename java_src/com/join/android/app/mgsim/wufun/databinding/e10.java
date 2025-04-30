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
/* compiled from: MgGameCommentActivityItemCommentMessageReplyBinding.java */
/* loaded from: classes3.dex */
public final class e10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19555a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19556b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19557c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f19558d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f19559e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19560f;

    private e10(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull View view2, @NonNull View view3, @NonNull LinearLayout linearLayout3) {
        this.f19555a = linearLayout;
        this.f19556b = view;
        this.f19557c = linearLayout2;
        this.f19558d = view2;
        this.f19559e = view3;
        this.f19560f = linearLayout3;
    }

    @NonNull
    public static e10 a(@NonNull View view) {
        int i2 = R.id.bottom;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom);
        if (findChildViewById != null) {
            i2 = R.id.comment_reply_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_reply_container);
            if (linearLayout != null) {
                i2 = R.id.comment_reply_divider;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.comment_reply_divider);
                if (findChildViewById2 != null) {
                    i2 = R.id.line;
                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById3 != null) {
                        i2 = R.id.parentLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.parentLayout);
                        if (linearLayout2 != null) {
                            return new e10((LinearLayout) view, findChildViewById, linearLayout, findChildViewById2, findChildViewById3, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19555a;
    }
}
