package com.join.mgps.activity.mygame.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class WufunGameAdapter extends RecyclerView.Adapter {
    List<WufunMainItemData> dataList = new ArrayList();

    /* loaded from: classes3.dex */
    class GuesslikeHolder extends RecyclerView.ViewHolder {
        public GuesslikeHolder(@NonNull View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public enum Type {
        GAMEITEM(2),
        GUESSLIKE(1);
        
        int number;

        Type(int i2) {
            this.number = i2;
        }
    }

    /* loaded from: classes3.dex */
    public static class WufunMainItemData {
        public Object object;
        public Type type;

        public WufunMainItemData(Type type, Object obj) {
            this.type = type;
            this.object = obj;
        }
    }

    public List<WufunMainItemData> getDataList() {
        return this.dataList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.dataList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.dataList.get(i2).type.number;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return null;
    }
}
