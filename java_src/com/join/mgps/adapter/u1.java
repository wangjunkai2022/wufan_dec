package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.SimpleWrapperRoom;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CountDownerTextView;
import com.join.mgps.customview.VipView;
import java.util.List;
/* compiled from: GameListAdapter.java */
/* loaded from: classes3.dex */
public class u1 extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private List<SimpleWrapperRoom> f44286a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44287b;

    /* renamed from: c  reason: collision with root package name */
    private float f44288c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    b f44289d = null;

    /* compiled from: GameListAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f44290a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44291b;

        a(RecyclerView.ViewHolder viewHolder, int i2) {
            this.f44290a = viewHolder;
            this.f44291b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b bVar = u1.this.f44289d;
            if (bVar != null) {
                bVar.a(this.f44290a, this.f44291b);
            }
        }
    }

    /* compiled from: GameListAdapter.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(RecyclerView.ViewHolder viewHolder, int i2);
    }

    /* compiled from: GameListAdapter.java */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public View f44293a;

        /* renamed from: b  reason: collision with root package name */
        public View f44294b;

        /* renamed from: c  reason: collision with root package name */
        public View f44295c;

        /* renamed from: d  reason: collision with root package name */
        public View f44296d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f44297e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f44298f;

        /* renamed from: g  reason: collision with root package name */
        public SimpleDraweeView f44299g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f44300h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f44301i;

        /* renamed from: j  reason: collision with root package name */
        public VipView f44302j;

        /* renamed from: k  reason: collision with root package name */
        public ImageView f44303k;

        /* renamed from: l  reason: collision with root package name */
        public View f44304l;
    }

    public u1(Context context, List<SimpleWrapperRoom> list) {
        this.f44287b = context;
        this.f44286a = list;
    }

    private void a(c cVar) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) cVar.f44294b.getLayoutParams();
        float dimensionPixelOffset = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp86);
        float f4 = this.f44288c;
        layoutParams.height = (int) (dimensionPixelOffset * f4);
        layoutParams.width = (int) (dimensionPixelOffset * f4);
        cVar.f44294b.setLayoutParams(layoutParams);
        cVar.f44297e.setTextSize(0, c(R.dimen.wdp20) * this.f44288c * 0.92f);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) cVar.f44302j.getLayoutParams();
        float dimensionPixelOffset2 = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp20);
        VipView vipView = cVar.f44302j;
        float f5 = this.f44288c;
        vipView.setSize((int) (dimensionPixelOffset2 * f5), (int) (dimensionPixelOffset2 * f5));
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) cVar.f44303k.getLayoutParams();
        float dimensionPixelOffset3 = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp20);
        float f6 = this.f44288c;
        layoutParams3.height = (int) (dimensionPixelOffset3 * f6);
        layoutParams3.width = (int) (dimensionPixelOffset3 * f6);
        cVar.f44303k.setLayoutParams(layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) cVar.f44295c.getLayoutParams();
        float dimensionPixelOffset4 = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp10);
        float f7 = this.f44288c;
        layoutParams4.bottomMargin = (int) (dimensionPixelOffset4 * f7 * 0.92f);
        layoutParams4.topMargin = (int) (dimensionPixelOffset4 * f7 * 0.92f);
        layoutParams4.leftMargin = (int) (dimensionPixelOffset4 * f7 * 0.92f);
        layoutParams4.rightMargin = (int) (dimensionPixelOffset4 * f7 * 0.92f);
        cVar.f44295c.setLayoutParams(layoutParams4);
    }

    private void b(d dVar) {
        dVar.f44307c.setTextSize(0, c(R.dimen.wdp24) * this.f44288c * 0.92f);
        dVar.f44312h.setTextSize(0, c(R.dimen.wdp20) * this.f44288c * 0.92f);
        dVar.f44311g.setTextSize(0, c(R.dimen.wdp20) * this.f44288c * 0.92f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) dVar.f44317m.getLayoutParams();
        float dimensionPixelOffset = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp22);
        float f4 = this.f44288c;
        layoutParams.height = (int) (dimensionPixelOffset * f4);
        layoutParams.width = (int) (dimensionPixelOffset * f4);
        dVar.f44317m.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) dVar.f44318n.getLayoutParams();
        float dimensionPixelOffset2 = this.f44287b.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        float f5 = this.f44288c;
        layoutParams2.height = (int) (dimensionPixelOffset2 * f5);
        layoutParams2.width = (int) (dimensionPixelOffset2 * f5);
        dVar.f44318n.setLayoutParams(layoutParams2);
    }

    private float c(int i2) {
        return this.f44287b.getResources().getDimensionPixelOffset(i2);
    }

    private void g(ImageView imageView, View view, int i2) {
        view.setVisibility(0);
        switch (i2) {
            case 1:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_trainee);
                view.setBackgroundResource(R.drawable.bg_border_yellow);
                return;
            case 2:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_senior);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_senior_bg);
                return;
            case 3:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_elite);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_elite_bg);
                return;
            case 4:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_master);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_master_bg);
                return;
            case 5:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_legend);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_legend_bg);
                return;
            case 6:
                imageView.setVisibility(0);
                imageView.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_special_guest_bg);
                return;
            default:
                imageView.setVisibility(8);
                view.setBackgroundResource(R.drawable.mg_proficiency_level_0_bg);
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0279  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i(com.join.mgps.adapter.u1.d r17, app.mgsim.arena.SimpleWrapperRoom r18) {
        /*
            Method dump skipped, instructions count: 921
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.u1.i(com.join.mgps.adapter.u1$d, app.mgsim.arena.SimpleWrapperRoom):void");
    }

    private void j(View view, int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (int) (this.f44287b.getResources().getDimensionPixelOffset(i2) * this.f44288c * 0.92f);
        view.setLayoutParams(layoutParams);
    }

    public SimpleWrapperRoom d(int i2) {
        if (i2 < 0 || i2 >= this.f44286a.size()) {
            return null;
        }
        return this.f44286a.get(i2);
    }

    public b e() {
        return this.f44289d;
    }

    public void f(b bVar) {
        this.f44289d = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SimpleWrapperRoom> list = this.f44286a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return super.getItemViewType(i2);
    }

    public void h(float f4) {
        if (f4 > 1.25d) {
            f4 *= 0.92f;
        }
        this.f44288c = f4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        SimpleWrapperRoom simpleWrapperRoom = this.f44286a.get(i2);
        if (viewHolder instanceof d) {
            i((d) viewHolder, simpleWrapperRoom);
        }
        viewHolder.itemView.setOnClickListener(new a(viewHolder, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_room_list_1, (ViewGroup) null), i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        super.onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        super.onViewDetachedFromWindow(viewHolder);
        if (viewHolder instanceof d) {
            ((d) viewHolder).f44311g.e();
        }
    }

    /* compiled from: GameListAdapter.java */
    /* loaded from: classes3.dex */
    public static class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public int f44305a;

        /* renamed from: b  reason: collision with root package name */
        public int f44306b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44307c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f44308d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f44309e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f44310f;

        /* renamed from: g  reason: collision with root package name */
        public CountDownerTextView f44311g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f44312h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f44313i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f44314j;

        /* renamed from: k  reason: collision with root package name */
        public View f44315k;

        /* renamed from: l  reason: collision with root package name */
        public VipView f44316l;

        /* renamed from: m  reason: collision with root package name */
        public View f44317m;

        /* renamed from: n  reason: collision with root package name */
        public View f44318n;

        /* renamed from: o  reason: collision with root package name */
        c[] f44319o;

        public d(View view, int i2) {
            super(view);
            this.f44306b = i2;
            b(view);
        }

        void a(View view, View view2, TextView textView, View view3, int i2) {
            View findViewById = view.findViewById(R.id.borderView);
            c cVar = new c();
            cVar.f44293a = view;
            cVar.f44295c = (RelativeLayout) view.findViewById(R.id.pMain);
            cVar.f44294b = view2;
            cVar.f44299g = (SimpleDraweeView) view2.findViewById(R.id.avatar);
            cVar.f44298f = (ImageView) view2.findViewById(R.id.tv_chenghao);
            cVar.f44300h = (ImageView) view2.findViewById(R.id.iv_state);
            cVar.f44297e = textView;
            cVar.f44301i = (ImageView) view2.findViewById(R.id.platformType);
            cVar.f44296d = view3;
            cVar.f44302j = (VipView) view.findViewById(R.id.vipView);
            cVar.f44303k = (ImageView) view.findViewById(R.id.ivProficiencyLevel);
            cVar.f44304l = findViewById;
            this.f44319o[i2] = cVar;
        }

        void b(View view) {
            this.f44307c = (TextView) view.findViewById(R.id.tv_gameName);
            this.f44308d = (ImageView) view.findViewById(R.id.iv_lock);
            this.f44309e = (ImageView) view.findViewById(R.id.iv_vip);
            this.f44310f = (TextView) view.findViewById(R.id.tv_id);
            this.f44313i = (TextView) view.findViewById(R.id.tv_id_label);
            this.f44311g = (CountDownerTextView) view.findViewById(R.id.tv_game_state);
            this.f44312h = (TextView) view.findViewById(R.id.tv_view);
            this.f44314j = (TextView) view.findViewById(R.id.tvCopper);
            this.f44315k = view.findViewById(R.id.waveView);
            this.f44316l = (VipView) view.findViewById(R.id.vipView);
            TextView textView = (TextView) view.findViewById(R.id.nickNameP1);
            TextView textView2 = (TextView) view.findViewById(R.id.nickNameP2);
            TextView textView3 = (TextView) view.findViewById(R.id.nickNameP3);
            TextView textView4 = (TextView) view.findViewById(R.id.nickNameP4);
            View findViewById = view.findViewById(R.id.llP1);
            View findViewById2 = view.findViewById(R.id.llP2);
            View findViewById3 = view.findViewById(R.id.llP3);
            View findViewById4 = view.findViewById(R.id.llP4);
            View findViewById5 = view.findViewById(R.id.f17868p1);
            View findViewById6 = view.findViewById(R.id.f17869p2);
            View findViewById7 = view.findViewById(R.id.p3);
            View findViewById8 = view.findViewById(R.id.p4);
            this.f44317m = view.findViewById(R.id.tv2);
            this.f44318n = view.findViewById(R.id.tv3);
            this.f44319o = new c[4];
            a(findViewById, findViewById5, textView, new View(view.getContext()), 0);
            a(findViewById2, findViewById6, textView2, null, 1);
            a(findViewById3, findViewById7, textView3, null, 2);
            a(findViewById4, findViewById8, textView4, null, 3);
            view.setTag(this);
        }

        public d(View view) {
            super(view);
            b(view);
        }
    }
}
