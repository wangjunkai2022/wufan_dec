package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SampleCommonListFooterBinding.java */
/* loaded from: classes3.dex */
public final class w90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26121a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStub f26122b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26123c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewStub f26124d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewStub f26125e;

    private w90(@NonNull LinearLayout linearLayout, @NonNull ViewStub viewStub, @NonNull LinearLayout linearLayout2, @NonNull ViewStub viewStub2, @NonNull ViewStub viewStub3) {
        this.f26121a = linearLayout;
        this.f26122b = viewStub;
        this.f26123c = linearLayout2;
        this.f26124d = viewStub2;
        this.f26125e = viewStub3;
    }

    @NonNull
    public static w90 a(@NonNull View view) {
        int i2 = R.id.end_viewstub;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.end_viewstub);
        if (viewStub != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.loading_viewstub;
            ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.loading_viewstub);
            if (viewStub2 != null) {
                i2 = R.id.normal_viewstub;
                ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(view, R.id.normal_viewstub);
                if (viewStub3 != null) {
                    return new w90(linearLayout, viewStub, linearLayout, viewStub2, viewStub3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sample_common_list_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26121a;
    }
}
