package com.join.mgps.activity.login;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class SplashAdapter extends RecyclerView.Adapter<ViewHolder> {
    private int imgWidth;

    /* loaded from: classes3.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView item_bg;

        public ViewHolder(View view) {
            super(view);
            this.item_bg = (ImageView) view.findViewById(R.id.item_bg);
        }
    }

    public SplashAdapter(Context context) {
        this.imgWidth = getScreenWidth(context);
    }

    public static int getScreenWidth(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.wufunlogin_splash_recitem, viewGroup, false));
    }
}
