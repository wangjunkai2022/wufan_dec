package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DownloadActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class rd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24344a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24345b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24346c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ListView f24347d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24348e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24349f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24350g;

    private rd(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull ListView listView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24344a = linearLayout;
        this.f24345b = button;
        this.f24346c = button2;
        this.f24347d = listView;
        this.f24348e = textView;
        this.f24349f = textView2;
        this.f24350g = textView3;
    }

    @NonNull
    public static rd a(@NonNull View view) {
        int i2 = R.id.btnAllDownloaded;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnAllDownloaded);
        if (button != null) {
            i2 = R.id.btnDownload;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btnDownload);
            if (button2 != null) {
                i2 = R.id.listView;
                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
                if (listView != null) {
                    i2 = R.id.txtDownloadedList;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txtDownloadedList);
                    if (textView != null) {
                        i2 = R.id.txtIndicator;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txtIndicator);
                        if (textView2 != null) {
                            i2 = R.id.txtStatus;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txtStatus);
                            if (textView3 != null) {
                                return new rd((LinearLayout) view, button, button2, listView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24344a;
    }
}
