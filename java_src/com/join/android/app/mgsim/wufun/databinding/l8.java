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
/* compiled from: CommunityMessageitemBinding.java */
/* loaded from: classes3.dex */
public final class l8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22040a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22041b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22042c;

    private l8(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f22040a = linearLayout;
        this.f22041b = linearLayout2;
        this.f22042c = textView;
    }

    @NonNull
    public static l8 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
        if (textView != null) {
            return new l8(linearLayout, linearLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_message)));
    }

    @NonNull
    public static l8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_messageitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22040a;
    }
}
