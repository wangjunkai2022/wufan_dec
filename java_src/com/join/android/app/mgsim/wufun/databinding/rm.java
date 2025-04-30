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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.GamelistExpandableTextView;
import com.join.mgps.customview.MStarBar;
/* compiled from: GamelistDetialCommentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class rm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24445a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MStarBar f24446b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GamelistExpandableTextView f24447c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24448d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24449e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f24450f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24451g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24452h;

    private rm(@NonNull LinearLayout linearLayout, @NonNull MStarBar mStarBar, @NonNull GamelistExpandableTextView gamelistExpandableTextView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24445a = linearLayout;
        this.f24446b = mStarBar;
        this.f24447c = gamelistExpandableTextView;
        this.f24448d = linearLayout2;
        this.f24449e = textView;
        this.f24450f = simpleDraweeView;
        this.f24451g = textView2;
        this.f24452h = textView3;
    }

    @NonNull
    public static rm a(@NonNull View view) {
        int i2 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i2 = R.id.content;
            GamelistExpandableTextView gamelistExpandableTextView = (GamelistExpandableTextView) ViewBindings.findChildViewById(view, R.id.content);
            if (gamelistExpandableTextView != null) {
                i2 = R.id.main;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                if (linearLayout != null) {
                    i2 = R.id.more;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.more);
                    if (textView != null) {
                        i2 = R.id.userIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.userName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                            if (textView2 != null) {
                                i2 = R.id.usertag;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.usertag);
                                if (textView3 != null) {
                                    return new rm((LinearLayout) view, mStarBar, gamelistExpandableTextView, linearLayout, textView, simpleDraweeView, textView2, textView3);
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
    public static rm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_detial_comment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24445a;
    }
}
