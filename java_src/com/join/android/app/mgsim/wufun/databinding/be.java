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
/* compiled from: DownloadServiceActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class be implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18504a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18505b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18506c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f18507d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f18508e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f18509f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f18510g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ListView f18511h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18512i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18513j;

    private be(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5, @NonNull Button button6, @NonNull ListView listView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18504a = linearLayout;
        this.f18505b = button;
        this.f18506c = button2;
        this.f18507d = button3;
        this.f18508e = button4;
        this.f18509f = button5;
        this.f18510g = button6;
        this.f18511h = listView;
        this.f18512i = textView;
        this.f18513j = textView2;
    }

    @NonNull
    public static be a(@NonNull View view) {
        int i2 = R.id.btnStartService;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnStartService);
        if (button != null) {
            i2 = R.id.btnWeixin;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btnWeixin);
            if (button2 != null) {
                i2 = R.id.deleteDownload;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.deleteDownload);
                if (button3 != null) {
                    i2 = R.id.doInstall;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.doInstall);
                    if (button4 != null) {
                        i2 = R.id.downloadCenter;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.downloadCenter);
                        if (button5 != null) {
                            i2 = R.id.installedList;
                            Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.installedList);
                            if (button6 != null) {
                                i2 = R.id.listView;
                                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
                                if (listView != null) {
                                    i2 = R.id.txtIndicator;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txtIndicator);
                                    if (textView != null) {
                                        i2 = R.id.txtWeixinIndicator;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txtWeixinIndicator);
                                        if (textView2 != null) {
                                            return new be((LinearLayout) view, button, button2, button3, button4, button5, button6, listView, textView, textView2);
                                        }
                                    }
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
    public static be c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static be d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_service_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18504a;
    }
}
