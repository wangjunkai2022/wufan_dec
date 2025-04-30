package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AlbumLayoutBinding.java */
/* loaded from: classes3.dex */
public final class v2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25681a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f25682b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f25683c;

    private v2(@NonNull RelativeLayout relativeLayout, @NonNull ListView listView, @NonNull RelativeLayout relativeLayout2) {
        this.f25681a = relativeLayout;
        this.f25682b = listView;
        this.f25683c = relativeLayout2;
    }

    @NonNull
    public static v2 a(@NonNull View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.list);
        if (listView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            return new v2(relativeLayout, listView, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.list)));
    }

    @NonNull
    public static v2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.album_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25681a;
    }
}
