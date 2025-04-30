package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFightServerChoseBinding.java */
/* loaded from: classes3.dex */
public final class nb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22833a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22834b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f22835c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22836d;

    private nb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ListView listView, @NonNull TextView textView) {
        this.f22833a = relativeLayout;
        this.f22834b = imageView;
        this.f22835c = listView;
        this.f22836d = textView;
    }

    @NonNull
    public static nb a(@NonNull View view) {
        int i2 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i2 = R.id.listView;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
            if (listView != null) {
                i2 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                if (textView != null) {
                    return new nb((RelativeLayout) view, imageView, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_server_chose, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22833a;
    }
}
