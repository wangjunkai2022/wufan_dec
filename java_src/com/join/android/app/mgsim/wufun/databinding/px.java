package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumForumActivityTopItemBinding.java */
/* loaded from: classes3.dex */
public final class px implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23752a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23753b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23754c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f23755d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23756e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23757f;

    private px(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull Button button2, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.f23752a = relativeLayout;
        this.f23753b = button;
        this.f23754c = imageView;
        this.f23755d = button2;
        this.f23756e = textView;
        this.f23757f = imageView2;
    }

    @NonNull
    public static px a(@NonNull View view) {
        int i2 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_best);
        if (button != null) {
            i2 = R.id.forum_post_pic;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_pic);
            if (imageView != null) {
                i2 = R.id.forum_post_stickie;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_stickie);
                if (button2 != null) {
                    i2 = R.id.forum_post_subject;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_subject);
                    if (textView != null) {
                        i2 = R.id.forum_post_video;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_video);
                        if (imageView2 != null) {
                            return new px((RelativeLayout) view, button, imageView, button2, textView, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static px c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static px d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_activity_top_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23752a;
    }
}
