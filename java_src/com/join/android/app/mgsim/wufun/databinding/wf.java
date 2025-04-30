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
/* compiled from: ForumThemeListHeaderBinding.java */
/* loaded from: classes3.dex */
public final class wf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26176a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26177b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f26178c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26179d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26180e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26181f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26182g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f26183h;

    private wf(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull View view2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull View view3) {
        this.f26176a = linearLayout;
        this.f26177b = linearLayout2;
        this.f26178c = view;
        this.f26179d = view2;
        this.f26180e = textView;
        this.f26181f = linearLayout3;
        this.f26182g = textView2;
        this.f26183h = view3;
    }

    @NonNull
    public static wf a(@NonNull View view) {
        int i2 = R.id.category_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.category_layout);
        if (linearLayout != null) {
            i2 = R.id.category_rank_arrow;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.category_rank_arrow);
            if (findChildViewById != null) {
                i2 = R.id.category_rank_image_category;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.category_rank_image_category);
                if (findChildViewById2 != null) {
                    i2 = R.id.category_rank_text_category;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.category_rank_text_category);
                    if (textView != null) {
                        i2 = R.id.search_layout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_layout);
                        if (linearLayout2 != null) {
                            i2 = R.id.search_tv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.search_tv);
                            if (textView2 != null) {
                                i2 = R.id.search_view;
                                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.search_view);
                                if (findChildViewById3 != null) {
                                    return new wf((LinearLayout) view, linearLayout, findChildViewById, findChildViewById2, textView, linearLayout2, textView2, findChildViewById3);
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
    public static wf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_theme_list_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26176a;
    }
}
