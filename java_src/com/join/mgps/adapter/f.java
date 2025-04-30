package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ModGameArchiveTagBean;
import java.util.List;
/* compiled from: CloudArchiveTagAdapter.java */
/* loaded from: classes3.dex */
public class f extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private List<ModGameArchiveTagBean> f41617a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41618b;

    /* renamed from: c  reason: collision with root package name */
    private int f41619c;

    /* renamed from: d  reason: collision with root package name */
    private b f41620d;

    /* compiled from: CloudArchiveTagAdapter.java */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41621a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f41622b;

        public a(@NonNull View view) {
            super(view);
            this.f41621a = (TextView) view.findViewById(R.id.tvType);
            this.f41622b = (TextView) view.findViewById(R.id.tvCountNew);
        }
    }

    /* compiled from: CloudArchiveTagAdapter.java */
    /* loaded from: classes3.dex */
    public interface b {
        void onSelected(int i2);
    }

    public f(Context context, List<ModGameArchiveTagBean> list) {
        this(context, 0, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, View view) {
        b bVar = this.f41620d;
        if (bVar != null) {
            bVar.onSelected(i2);
            this.f41617a.get(i2).setCount(0);
            int i4 = 0;
            while (i4 < this.f41617a.size()) {
                this.f41617a.get(i4).setSelected(i2 == i4);
                i4++;
            }
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c */
    public void onBindViewHolder(@NonNull a aVar, final int i2) {
        ModGameArchiveTagBean modGameArchiveTagBean = this.f41617a.get(i2);
        aVar.f41621a.setText(modGameArchiveTagBean.getName());
        aVar.f41621a.setSelected(modGameArchiveTagBean.isSelected());
        aVar.f41622b.setVisibility(modGameArchiveTagBean.getCount() > 0 ? 0 : 8);
        aVar.f41622b.setText(String.valueOf(modGameArchiveTagBean.getCount()));
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.b(i2, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: d */
    public a onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (this.f41619c == 1) {
            return new a(LayoutInflater.from(this.f41618b).inflate(R.layout.item_game_detail_cloud_archive_type, viewGroup, false));
        }
        return new a(LayoutInflater.from(this.f41618b).inflate(R.layout.item_cloud_archive_type, viewGroup, false));
    }

    public void e(b bVar) {
        this.f41620d = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f41617a.size();
    }

    public f(Context context, int i2, List<ModGameArchiveTagBean> list) {
        this.f41620d = null;
        this.f41618b = context;
        this.f41617a = list;
        this.f41619c = i2;
    }
}
