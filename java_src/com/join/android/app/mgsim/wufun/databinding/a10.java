package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgFragmentGameTopicCoverBinding.java */
/* loaded from: classes3.dex */
public final class a10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f17953a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f17954b;

    private a10(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f17953a = relativeLayout;
        this.f17954b = simpleDraweeView;
    }

    @NonNull
    public static a10 a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            return new a10((RelativeLayout) view, simpleDraweeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.cover)));
    }

    @NonNull
    public static a10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_fragment_game_topic_cover, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f17953a;
    }
}
