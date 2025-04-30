package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: InformationCommentActivityBinding.java */
/* loaded from: classes3.dex */
public final class po implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final KeyboardListenLayout f23706a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f23707b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final j00 f23708c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f23709d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final KeyboardListenLayout f23710e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f23711f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23712g;

    private po(@NonNull KeyboardListenLayout keyboardListenLayout, @NonNull FrameLayout frameLayout, @NonNull j00 j00Var, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull KeyboardListenLayout keyboardListenLayout2, @NonNull XListView2 xListView2, @NonNull TextView textView) {
        this.f23706a = keyboardListenLayout;
        this.f23707b = frameLayout;
        this.f23708c = j00Var;
        this.f23709d = ptrClassicFrameLayout;
        this.f23710e = keyboardListenLayout2;
        this.f23711f = xListView2;
        this.f23712g = textView;
    }

    @NonNull
    public static po a(@NonNull View view) {
        int i2 = R.id.layout_forum_posts_main;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_forum_posts_main);
        if (frameLayout != null) {
            i2 = R.id.layout_forum_posts_title;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layout_forum_posts_title);
            if (findChildViewById != null) {
                j00 a4 = j00.a(findChildViewById);
                i2 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    KeyboardListenLayout keyboardListenLayout = (KeyboardListenLayout) view;
                    i2 = R.id.mg_forum_post_comment_list;
                    XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mg_forum_post_comment_list);
                    if (xListView2 != null) {
                        i2 = R.id.noMessage;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noMessage);
                        if (textView != null) {
                            return new po(keyboardListenLayout, frameLayout, a4, ptrClassicFrameLayout, keyboardListenLayout, xListView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static po c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static po d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.information_comment_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public KeyboardListenLayout getRoot() {
        return this.f23706a;
    }
}
