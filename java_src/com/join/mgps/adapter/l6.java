package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.UploadDialogBean;
import java.util.List;
/* compiled from: UploadListAdapter.java */
/* loaded from: classes3.dex */
public class l6 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    Context f42821a;

    /* renamed from: b  reason: collision with root package name */
    List<UploadDialogBean> f42822b;

    public l6(Context context, List<UploadDialogBean> list) {
        this.f42821a = context;
        this.f42822b = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42822b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f42822b.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f42821a).inflate(R.layout.upload_dialog_item, (ViewGroup) null);
        }
        ((TextView) view.findViewById(R.id.name)).setText(this.f42822b.get(i2).getName());
        if (this.f42822b.get(i2).getIsSelect().booleanValue()) {
            ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.downpath_show_selected);
        } else {
            ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.downpath_show_normal);
        }
        return view;
    }
}
