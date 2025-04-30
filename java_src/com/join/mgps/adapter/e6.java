package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.e6;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.SimulatorFastEntryListBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SimulatorFastEntryHomeAdapter.java */
/* loaded from: classes3.dex */
public class e6 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: d  reason: collision with root package name */
    public static final int f41581d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f41582e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f41583f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f41584g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f41585h = 4;

    /* renamed from: i  reason: collision with root package name */
    public static final int f41586i = 5;

    /* renamed from: j  reason: collision with root package name */
    public static final int f41587j = 6;

    /* renamed from: a  reason: collision with root package name */
    private List<SimulatorFastEntryListBean> f41588a;

    /* renamed from: b  reason: collision with root package name */
    private Context f41589b;

    /* renamed from: c  reason: collision with root package name */
    private h6 f41590c;

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class a extends GridLayoutManager {
        a(Context context, int i2) {
            super(context, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class b extends GridLayoutManager {
        b(Context context, int i2) {
            super(context, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class c extends GridLayoutManager {
        c(Context context, int i2) {
            super(context, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    private class d extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayoutManager f41594a;

        /* renamed from: b  reason: collision with root package name */
        private SimulatorFastEntryListBean f41595b;

        /* renamed from: c  reason: collision with root package name */
        private int f41596c;

        /* renamed from: d  reason: collision with root package name */
        private int f41597d;

        public d(SimulatorFastEntryListBean simulatorFastEntryListBean, LinearLayoutManager linearLayoutManager) {
            this.f41594a = linearLayoutManager;
            this.f41595b = simulatorFastEntryListBean;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            int i4;
            View findViewByPosition;
            super.onScrollStateChanged(recyclerView, i2);
            if (i2 != 0) {
                return;
            }
            int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            this.f41595b.setScrollPosition(this.f41594a.findFirstVisibleItemPosition() < 0 ? this.f41595b.getScrollPosition() : this.f41594a.findFirstVisibleItemPosition() + 1);
            if (this.f41596c <= 0 && (findViewByPosition = this.f41594a.findViewByPosition(this.f41595b.getScrollPosition())) != null) {
                this.f41596c = findViewByPosition.getWidth();
                this.f41597d = ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) findViewByPosition.getLayoutParams())).rightMargin;
            }
            if (computeHorizontalScrollOffset <= 0 || (i4 = this.f41596c) <= 0) {
                return;
            }
            SimulatorFastEntryListBean simulatorFastEntryListBean = this.f41595b;
            simulatorFastEntryListBean.setScrollOffset((i4 - (computeHorizontalScrollOffset % i4)) + (simulatorFastEntryListBean.getScrollPosition() * this.f41597d));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class e extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private RecyclerView f41599a;

        public e(@NonNull View view) {
            super(view);
            this.f41599a = (RecyclerView) view.findViewById(R.id.recyclerview);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class f extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f41601a;

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView f41602b;

        public f(@NonNull View view) {
            super(view);
            this.f41601a = (LinearLayout) view.findViewById(R.id.llMore);
            this.f41602b = (RecyclerView) view.findViewById(R.id.rvClassicGame);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    public class g extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private ViewPager f41604a;

        /* renamed from: b  reason: collision with root package name */
        private CirclePageIndicator f41605b;

        public g(@NonNull View view) {
            super(view);
            this.f41604a = (ViewPager) view.findViewById(R.id.viewpager);
            this.f41605b = (CirclePageIndicator) view.findViewById(R.id.indicator);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class h extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f41607a;

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView f41608b;

        public h(@NonNull View view) {
            super(view);
            this.f41607a = (LinearLayout) view.findViewById(R.id.llMore);
            this.f41608b = (RecyclerView) view.findViewById(R.id.rvNewGame);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class i extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f41610a;

        public i(@NonNull View view) {
            super(view);
            this.f41610a = (TextView) view.findViewById(R.id.spacingView);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class j extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private HorizontalRecyclerView f41612a;

        public j(@NonNull View view) {
            super(view);
            this.f41612a = (HorizontalRecyclerView) view.findViewById(R.id.recyclerview);
        }
    }

    /* compiled from: SimulatorFastEntryHomeAdapter.java */
    /* loaded from: classes3.dex */
    class k extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f41614a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f41615b;

        public k(@NonNull View view) {
            super(view);
            this.f41614a = (TextView) view.findViewById(R.id.title);
            this.f41615b = (LinearLayout) view.findViewById(R.id.llMore);
        }
    }

    public e6(Context context, List<SimulatorFastEntryListBean> list) {
        this.f41589b = context;
        this.f41588a = list == null ? new ArrayList<>() : list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(SimulatorFastEntryListBean simulatorFastEntryListBean, String str, View view) {
        Intent intent = new Intent(this.f41589b, CategoryDetailListActivity.class);
        intent.putExtra("typeId", 1);
        intent.putExtra("tagId", simulatorFastEntryListBean.getTagId());
        intent.putExtra("tagName", str);
        this.f41589b.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(g gVar, List list) {
        gVar.f41605b.setVisibility(list.size() <= 1 ? 8 : 0);
        gVar.f41605b.setViewPager(gVar.f41604a, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        Intent intent = new Intent(new Intent(this.f41589b, EverdayNewGameActivity.class));
        intent.putExtra("default_position", 3);
        this.f41589b.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(SimulatorFastEntryBean.WillPlay willPlay, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type("4");
        intentDateBean.setCrc_link_type_val(willPlay.getColl_id());
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(20702);
        extBean.setFrom("20702");
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.f41589b, intentDateBean);
    }

    public List<SimulatorFastEntryListBean> getData() {
        List<SimulatorFastEntryListBean> list = this.f41588a;
        return list == null ? new ArrayList() : list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f41588a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<SimulatorFastEntryListBean> list;
        if (i2 >= 0 && (list = this.f41588a) != null && list.size() > i2) {
            return this.f41588a.get(i2).getType();
        }
        return 0;
    }

    public void i(List<SimulatorFastEntryListBean> list) {
        this.f41588a = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        int itemViewType = getItemViewType(i2);
        final SimulatorFastEntryListBean simulatorFastEntryListBean = this.f41588a.get(i2);
        switch (itemViewType) {
            case 0:
                k kVar = (k) viewHolder;
                final String str = (String) simulatorFastEntryListBean.getData();
                kVar.f41614a.setText(str);
                kVar.f41615b.setVisibility(TextUtils.isEmpty(simulatorFastEntryListBean.getTagId()) ? 8 : 0);
                kVar.f41615b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        e6.this.e(simulatorFastEntryListBean, str, view);
                    }
                });
                return;
            case 1:
                if (this.f41590c == null) {
                    final g gVar = (g) viewHolder;
                    final List list = (List) simulatorFastEntryListBean.getData();
                    this.f41590c = new h6(this.f41589b, list);
                    gVar.f41604a.setAdapter(this.f41590c);
                    gVar.f41604a.post(new Runnable() { // from class: com.join.mgps.adapter.d6
                        @Override // java.lang.Runnable
                        public final void run() {
                            e6.f(e6.g.this, list);
                        }
                    });
                    return;
                }
                return;
            case 2:
                h hVar = (h) viewHolder;
                a aVar = new a(this.f41589b, 4);
                hVar.f41608b.setNestedScrollingEnabled(false);
                hVar.f41608b.setHasFixedSize(true);
                hVar.f41608b.setLayoutManager(aVar);
                hVar.f41608b.setAdapter(new j6((List) simulatorFastEntryListBean.getData(), false));
                hVar.f41607a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        e6.this.g(view);
                    }
                });
                return;
            case 3:
                f fVar = (f) viewHolder;
                final SimulatorFastEntryBean.WillPlay willPlay = (SimulatorFastEntryBean.WillPlay) simulatorFastEntryListBean.getData();
                if (willPlay == null || willPlay.getGames() == null || willPlay.getGames().size() <= 0) {
                    return;
                }
                b bVar = new b(this.f41589b, 4);
                fVar.f41602b.setNestedScrollingEnabled(false);
                fVar.f41602b.setHasFixedSize(true);
                fVar.f41602b.setLayoutManager(bVar);
                fVar.f41602b.setAdapter(new j6(willPlay.getGames(), true));
                fVar.f41601a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        e6.this.h(willPlay, view);
                    }
                });
                return;
            case 4:
                e eVar = (e) viewHolder;
                eVar.f41599a.setLayoutManager(new c(this.f41589b, 2));
                eVar.f41599a.setAdapter(new z5((List) simulatorFastEntryListBean.getData()));
                return;
            case 5:
                j jVar = (j) viewHolder;
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f41589b, 0, false);
                jVar.f41612a.setLayoutManager(linearLayoutManager);
                jVar.f41612a.setAdapter(new g6((List) simulatorFastEntryListBean.getData()));
                if (simulatorFastEntryListBean.getScrollOffset() > 0) {
                    linearLayoutManager.scrollToPositionWithOffset(simulatorFastEntryListBean.getScrollPosition(), simulatorFastEntryListBean.getScrollOffset());
                }
                jVar.f41612a.addOnScrollListener(new d(simulatorFastEntryListBean, linearLayoutManager));
                return;
            case 6:
                i iVar = (i) viewHolder;
                float floatValue = ((Float) simulatorFastEntryListBean.getData()).floatValue();
                ViewGroup.LayoutParams layoutParams = iVar.f41610a.getLayoutParams();
                layoutParams.height = (int) floatValue;
                iVar.f41610a.setLayoutParams(layoutParams);
                return;
            default:
                return;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        switch (i2) {
            case 0:
                return new k(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_title, viewGroup, false));
            case 1:
                return new g(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_viewpager, viewGroup, false));
            case 2:
                return new h(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_new_game, viewGroup, false));
            case 3:
                return new f(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_classic_game, viewGroup, false));
            case 4:
                return new e(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_change_game, viewGroup, false));
            case 5:
                return new j(LayoutInflater.from(this.f41589b).inflate(R.layout.layout_simulator_tag_game, viewGroup, false));
            case 6:
                return new i(LayoutInflater.from(this.f41589b).inflate(R.layout.papamain_item_spacing_layout, viewGroup, false));
            default:
                return null;
        }
    }
}
