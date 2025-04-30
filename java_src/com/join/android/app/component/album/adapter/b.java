package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CropOption;
import java.util.ArrayList;
/* compiled from: CropOptionAdapter.java */
/* loaded from: classes.dex */
public class b extends ArrayAdapter<CropOption> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<CropOption> f17418a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f17419b;

    public b(Context context, ArrayList<CropOption> arrayList) {
        super(context, (int) R.layout.crop_selector, arrayList);
        this.f17418a = arrayList;
        this.f17419b = LayoutInflater.from(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f17419b.inflate(R.layout.crop_selector, (ViewGroup) null);
        }
        CropOption cropOption = this.f17418a.get(i2);
        if (cropOption != null) {
            ((ImageView) view.findViewById(R.id.iv_icon)).setImageDrawable(cropOption.icon);
            ((TextView) view.findViewById(R.id.tv_name)).setText(cropOption.title);
            return view;
        }
        return null;
    }
}
