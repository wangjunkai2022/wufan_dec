package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialCommentGameLayoutBinding.java */
/* loaded from: classes3.dex */
public final class vl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25860a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25861b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f25862c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25863d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25864e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25865f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25866g;

    private vl(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView) {
        this.f25860a = linearLayout;
        this.f25861b = linearLayout2;
        this.f25862c = view;
        this.f25863d = view2;
        this.f25864e = imageView;
        this.f25865f = linearLayout3;
        this.f25866g = textView;
    }

    @NonNull
    public static vl a(@NonNull View view) {
        int i2 = R.id.goCommit;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goCommit);
        if (linearLayout != null) {
            i2 = R.id.layoutTop;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
            if (findChildViewById != null) {
                i2 = R.id.layoutTop2;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.layoutTop2);
                if (findChildViewById2 != null) {
                    i2 = R.id.progressBar2;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.progressBar2);
                    if (imageView != null) {
                        i2 = R.id.starlayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.starlayout);
                        if (linearLayout2 != null) {
                            i2 = R.id.textMessage;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textMessage);
                            if (textView != null) {
                                return new vl((LinearLayout) view, linearLayout, findChildViewById, findChildViewById2, imageView, linearLayout2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_comment_game_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25860a;
    }
}
