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
/* compiled from: MgFragmentGameTopicFooterBinding.java */
/* loaded from: classes3.dex */
public final class b10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18350a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18351b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18352c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18353d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18354e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18355f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f18356g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f18357h;

    private b10(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view) {
        this.f18350a = linearLayout;
        this.f18351b = textView;
        this.f18352c = linearLayout2;
        this.f18353d = textView2;
        this.f18354e = textView3;
        this.f18355f = imageView;
        this.f18356g = imageView2;
        this.f18357h = view;
    }

    @NonNull
    public static b10 a(@NonNull View view) {
        int i2 = R.id.forum_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
        if (textView != null) {
            i2 = R.id.forum_name_parent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_name_parent);
            if (linearLayout != null) {
                i2 = R.id.forum_post_commit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_commit);
                if (textView2 != null) {
                    i2 = R.id.forum_post_view;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_view);
                    if (textView3 != null) {
                        i2 = R.id.imageView10;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView10);
                        if (imageView != null) {
                            i2 = R.id.imageView9;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView9);
                            if (imageView2 != null) {
                                i2 = R.id.post_footer_divider;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
                                if (findChildViewById != null) {
                                    return new b10((LinearLayout) view, textView, linearLayout, textView2, textView3, imageView, imageView2, findChildViewById);
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
    public static b10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_fragment_game_topic_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18350a;
    }
}
