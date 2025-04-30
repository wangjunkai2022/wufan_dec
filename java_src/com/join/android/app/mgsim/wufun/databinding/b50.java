package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MycloudBackupsLayoutBinding.java */
/* loaded from: classes3.dex */
public final class b50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18386a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f18387b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18388c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18389d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18390e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18391f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18392g;

    private b50(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18386a = linearLayout;
        this.f18387b = listView;
        this.f18388c = imageView;
        this.f18389d = imageView2;
        this.f18390e = linearLayout2;
        this.f18391f = textView;
        this.f18392g = textView2;
    }

    @NonNull
    public static b50 a(@NonNull View view) {
        int i2 = R.id.backupsList;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.backupsList);
        if (listView != null) {
            i2 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
            if (imageView != null) {
                i2 = R.id.imageView2;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
                if (imageView2 != null) {
                    i2 = R.id.startBackups;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.startBackups);
                    if (linearLayout != null) {
                        i2 = R.id.textView;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                        if (textView != null) {
                            i2 = R.id.textView2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                            if (textView2 != null) {
                                return new b50((LinearLayout) view, listView, imageView, imageView2, linearLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mycloud_backups_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18386a;
    }
}
