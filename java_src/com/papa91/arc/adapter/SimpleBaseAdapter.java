package com.papa91.arc.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class SimpleBaseAdapter<T> extends BaseAdapter {
    private IOnItemClickListener itemClickListener;
    private List<T> mDataList = new ArrayList();

    public void addData(T t3) {
        this.mDataList.add(t3);
    }

    public void addDatas(List<T> list) {
        if (list != null) {
            for (T t3 : list) {
                this.mDataList.add(t3);
            }
        }
        notifyDataSetChanged();
    }

    public void clear() {
        this.mDataList.clear();
        notifyDataSetChanged();
    }

    public abstract void convert(int i2, View view, ViewGroup viewGroup, boolean z3);

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mDataList.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i2) {
        return this.mDataList.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    public abstract int getLayoutId();

    @Override // android.widget.Adapter
    public View getView(final int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutId(), (ViewGroup) null);
            convert(i2, view, viewGroup, true);
        } else {
            convert(i2, view, viewGroup, false);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.adapter.SimpleBaseAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (SimpleBaseAdapter.this.itemClickListener != null) {
                    SimpleBaseAdapter.this.itemClickListener.onItemClick(i2);
                }
            }
        });
        return view;
    }

    public boolean remove(T t3) {
        return this.mDataList.remove(t3);
    }

    public void setDatas(List<T> list) {
        this.mDataList.clear();
        addDatas(list);
    }

    public void setItemClickListener(IOnItemClickListener iOnItemClickListener) {
        this.itemClickListener = iOnItemClickListener;
    }

    public void addData(int i2, T t3) {
        this.mDataList.add(i2, t3);
    }

    public T remove(int i2) {
        return this.mDataList.remove(i2);
    }
}
