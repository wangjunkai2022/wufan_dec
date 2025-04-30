package com.join.mgps.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.q3;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TodayWufunBean;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEverday;
import com.join.mgps.dto.TodayWufunTodayNew;
import com.join.mgps.dto.TodayWufunTopic;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EFragment(R.layout.now_wufun_fragment_layout)
/* loaded from: classes.dex */
public class NowWufunFragment extends Fragment implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f34437a;

    /* renamed from: b  reason: collision with root package name */
    private int f34438b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    PtrClassicFrameLayout f34439c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f34440d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f34441e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f34442f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.d f34443g;

    /* renamed from: h  reason: collision with root package name */
    List<DownloadTask> f34444h;

    /* renamed from: j  reason: collision with root package name */
    private q3 f34446j;

    /* renamed from: l  reason: collision with root package name */
    private List<c> f34448l;

    /* renamed from: m  reason: collision with root package name */
    private int f34449m;

    /* renamed from: n  reason: collision with root package name */
    private int f34450n;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, DownloadTask> f34445i = new ConcurrentHashMap();

    /* renamed from: k  reason: collision with root package name */
    private boolean f34447k = false;

    /* renamed from: o  reason: collision with root package name */
    private int f34451o = 1;

    /* loaded from: classes3.dex */
    public enum ItemType {
        DATETITLE(0),
        FIND(1),
        BROADCAST(2),
        TODAYNEWITEM(3),
        TODAYNEWBOTTOM(4),
        TOPIC(6),
        TOPIC2(7),
        TODAYNEWTITLE(5),
        EMPYT(8);
        
        private int type;

        ItemType(int i2) {
            this.type = i2;
        }

        public int getType() {
            return this.type;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* loaded from: classes3.dex */
    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (NowWufunFragment.this.f34447k) {
                return;
            }
            if (NowWufunFragment.this.f34451o == 2) {
                NowWufunFragment.this.R();
            } else {
                NowWufunFragment.this.Q();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (NowWufunFragment.this.f34447k) {
                return;
            }
            NowWufunFragment.this.f34438b = 1;
            if (NowWufunFragment.this.f34451o == 2) {
                NowWufunFragment.this.R();
            } else {
                NowWufunFragment.this.Q();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public ItemType f34454a;

        /* renamed from: b  reason: collision with root package name */
        public Object f34455b;

        /* renamed from: c  reason: collision with root package name */
        public DownloadTask f34456c;

        public c() {
        }
    }

    private DownloadTask S(String str, int i2, String str2) {
        if (i2 == ConstantIntEnum.H5.value()) {
            DownloadTask downloadTask = new DownloadTask();
            downloadTask.setCrc_link_type_val(str);
            downloadTask.setUrl(str2);
            return downloadTask;
        }
        for (DownloadTask downloadTask2 : this.f34444h) {
            if (downloadTask2.getCrc_link_type_val().equals(str)) {
                return downloadTask2;
            }
        }
        return null;
    }

    private void U(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f34444h.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f34445i.remove(next.getCrc_link_type_val());
                it2.remove();
                for (c cVar : this.f34448l) {
                    Object obj = cVar.f34455b;
                    if (obj instanceof TodayWufunEverday) {
                        TodayWufunEverday todayWufunEverday = (TodayWufunEverday) obj;
                        if (todayWufunEverday.getMod_info() != null) {
                            DownloadTask downloadTask2 = this.f34445i.get(todayWufunEverday.getMod_info().getMod_game_id());
                            DownloadTask downloadTask3 = this.f34445i.get(todayWufunEverday.getGame_id());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                todayWufunEverday.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                todayWufunEverday.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                todayWufunEverday.setDownloadTask(downloadTask3);
                            } else if (todayWufunEverday.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                todayWufunEverday.setDownloadTask(null);
                            }
                        } else if (todayWufunEverday.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            todayWufunEverday.setDownloadTask(null);
                        }
                    }
                    if (obj instanceof TodayWufunBroadcast) {
                        TodayWufunBroadcast todayWufunBroadcast = (TodayWufunBroadcast) obj;
                        if (todayWufunBroadcast.getMod_info() != null) {
                            DownloadTask B = g1.f.G().B(todayWufunBroadcast.getMod_info().getMod_game_id());
                            DownloadTask B2 = g1.f.G().B(todayWufunBroadcast.getGame_id());
                            if (B == null && B2 == null) {
                                todayWufunBroadcast.setDownloadTask(null);
                            } else if (B != null) {
                                todayWufunBroadcast.setDownloadTask(B);
                            } else if (B2 != null) {
                                todayWufunBroadcast.setDownloadTask(B2);
                            } else if (todayWufunBroadcast.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                todayWufunBroadcast.setDownloadTask(null);
                            }
                        } else if (todayWufunBroadcast.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            todayWufunBroadcast.setDownloadTask(null);
                        }
                    }
                    if (obj instanceof TodayWufunTodayNew) {
                        TodayWufunTodayNew todayWufunTodayNew = (TodayWufunTodayNew) obj;
                        if (todayWufunTodayNew.getMod_info() != null) {
                            DownloadTask B3 = g1.f.G().B(todayWufunTodayNew.getMod_info().getMod_game_id());
                            DownloadTask B4 = g1.f.G().B(todayWufunTodayNew.getGame_id());
                            if (B3 == null && B4 == null) {
                                todayWufunTodayNew.setDownloadTask(null);
                            } else if (B3 != null) {
                                todayWufunTodayNew.setDownloadTask(B3);
                            } else if (B4 != null) {
                                todayWufunTodayNew.setDownloadTask(B4);
                            } else if (todayWufunTodayNew.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                todayWufunTodayNew.setDownloadTask(null);
                            }
                        } else if (todayWufunTodayNew.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            todayWufunTodayNew.setDownloadTask(null);
                        }
                    }
                }
            }
        }
        this.f34446j.notifyDataSetChanged();
    }

    private void V(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f34445i;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f34446j.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void W(DownloadTask downloadTask) {
        UtilsMy.E3(this.f34444h, downloadTask);
        if (!this.f34445i.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f34444h.add(downloadTask);
            this.f34445i.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        d0(downloadTask);
        this.f34446j.notifyDataSetChanged();
    }

    private void X(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f34445i;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f34444h.add(downloadTask);
            this.f34445i.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        d0(downloadTask);
        DownloadTask downloadTask2 = this.f34445i.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f34446j.notifyDataSetChanged();
    }

    private void d0(DownloadTask downloadTask) {
        for (c cVar : this.f34448l) {
            Object obj = cVar.f34455b;
            boolean z3 = false;
            if (obj instanceof TodayWufunEverday) {
                TodayWufunEverday todayWufunEverday = (TodayWufunEverday) obj;
                if (todayWufunEverday.getMod_info() != null) {
                    ModInfoBean mod_info = todayWufunEverday.getMod_info();
                    DownloadTask downloadTask2 = this.f34445i.get(mod_info.getMain_game_id());
                    boolean c4 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask2.getPackageName());
                    DownloadTask downloadTask3 = this.f34445i.get(mod_info.getMod_game_id());
                    boolean D = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : com.join.mgps.va.overmind.e.p().D(downloadTask3.getPackageName());
                    if (D && c4) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunEverday.getGame_id())) {
                            todayWufunEverday.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (D) {
                        if (todayWufunEverday.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(todayWufunEverday.getMod_info().getMod_game_id())) {
                            todayWufunEverday.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (c4) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunEverday.getGame_id())) {
                            todayWufunEverday.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B = todayWufunEverday.getMod_info() != null ? g1.f.G().B(todayWufunEverday.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(todayWufunEverday.getGame_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            todayWufunEverday.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (todayWufunEverday.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    todayWufunEverday.setDownloadTask(downloadTask);
                }
            }
            if (obj instanceof TodayWufunBroadcast) {
                TodayWufunBroadcast todayWufunBroadcast = (TodayWufunBroadcast) obj;
                if (todayWufunBroadcast.getMod_info() != null) {
                    ModInfoBean mod_info2 = todayWufunBroadcast.getMod_info();
                    DownloadTask downloadTask4 = this.f34445i.get(mod_info2.getMain_game_id());
                    boolean c5 = (downloadTask4 == null || downloadTask4.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask4.getPackageName());
                    DownloadTask downloadTask5 = this.f34445i.get(mod_info2.getMod_game_id());
                    boolean D2 = (downloadTask5 == null || downloadTask5.getStatus() != 5) ? false : com.join.mgps.va.overmind.e.p().D(downloadTask5.getPackageName());
                    if (D2 && c5) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunBroadcast.getGame_id())) {
                            todayWufunBroadcast.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (D2) {
                        if (todayWufunBroadcast.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(todayWufunBroadcast.getMod_info().getMod_game_id())) {
                            todayWufunBroadcast.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (c5) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunBroadcast.getGame_id())) {
                            todayWufunBroadcast.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B2 = todayWufunBroadcast.getMod_info() != null ? g1.f.G().B(todayWufunBroadcast.getMod_info().getMod_game_id()) : null;
                        if (B2 == null) {
                            B2 = g1.f.G().B(todayWufunBroadcast.getGame_id());
                        }
                        if (B2 != null && downloadTask.getCrc_link_type_val().equals(B2.getCrc_link_type_val())) {
                            todayWufunBroadcast.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (todayWufunBroadcast.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    todayWufunBroadcast.setDownloadTask(downloadTask);
                }
            }
            if (obj instanceof TodayWufunTodayNew) {
                TodayWufunTodayNew todayWufunTodayNew = (TodayWufunTodayNew) obj;
                if (todayWufunTodayNew.getMod_info() != null) {
                    ModInfoBean mod_info3 = todayWufunTodayNew.getMod_info();
                    DownloadTask downloadTask6 = this.f34445i.get(mod_info3.getMain_game_id());
                    boolean c6 = (downloadTask6 == null || downloadTask6.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask6.getPackageName());
                    DownloadTask downloadTask7 = this.f34445i.get(mod_info3.getMod_game_id());
                    if (downloadTask7 != null && downloadTask7.getStatus() == 5) {
                        z3 = com.join.mgps.va.overmind.e.p().D(downloadTask7.getPackageName());
                    }
                    if (z3 && c6) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunTodayNew.getGame_id())) {
                            todayWufunTodayNew.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z3) {
                        if (todayWufunTodayNew.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(todayWufunTodayNew.getMod_info().getMod_game_id())) {
                            todayWufunTodayNew.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (c6) {
                        if (downloadTask.getCrc_link_type_val().equals(todayWufunTodayNew.getGame_id())) {
                            todayWufunTodayNew.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B3 = todayWufunTodayNew.getMod_info() != null ? g1.f.G().B(todayWufunTodayNew.getMod_info().getMod_game_id()) : null;
                        if (B3 == null) {
                            B3 = g1.f.G().B(todayWufunTodayNew.getGame_id());
                        }
                        if (B3 != null && downloadTask.getCrc_link_type_val().equals(B3.getCrc_link_type_val())) {
                            todayWufunTodayNew.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (todayWufunTodayNew.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    todayWufunTodayNew.setDownloadTask(downloadTask);
                }
            }
        }
    }

    private void e0() {
        String str;
        String game_id;
        String game_id2;
        for (int i2 = this.f34450n; i2 <= this.f34449m; i2++) {
            c cVar = (c) this.f34440d.getItemAtPosition(i2);
            if (cVar != null) {
                Object obj = cVar.f34455b;
                DownloadTask downloadTask = null;
                if (obj instanceof TodayWufunEverday) {
                    TodayWufunEverday todayWufunEverday = (TodayWufunEverday) obj;
                    DownloadTask downloadTask2 = todayWufunEverday.getDownloadTask();
                    if (downloadTask2 != null) {
                        game_id2 = downloadTask2.getCrc_link_type_val();
                    } else {
                        game_id2 = todayWufunEverday.getGame_id();
                    }
                    str = game_id2;
                    downloadTask = downloadTask2;
                } else {
                    str = "";
                }
                if (obj instanceof TodayWufunBroadcast) {
                    TodayWufunBroadcast todayWufunBroadcast = (TodayWufunBroadcast) obj;
                    DownloadTask downloadTask3 = todayWufunBroadcast.getDownloadTask();
                    if (downloadTask3 != null) {
                        game_id = downloadTask3.getCrc_link_type_val();
                    } else {
                        game_id = todayWufunBroadcast.getGame_id();
                    }
                    str = game_id;
                    downloadTask = downloadTask3;
                }
                if (obj instanceof TodayWufunTodayNew) {
                    TodayWufunTodayNew todayWufunTodayNew = (TodayWufunTodayNew) obj;
                    downloadTask = todayWufunTodayNew.getDownloadTask();
                    if (downloadTask != null) {
                        str = downloadTask.getCrc_link_type_val();
                    } else {
                        str = todayWufunTodayNew.getGame_id();
                    }
                }
                if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f34440d.getChildAt(i2 - this.f34450n);
                    if (childAt.getTag() instanceof q3.l) {
                        q3.l lVar = (q3.l) childAt.getTag();
                        try {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(str);
                            if (f4 == null) {
                                return;
                            }
                            long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                TextView textView = lVar.f43395d;
                                textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView2 = lVar.f43395d;
                                textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            if (downloadTask.getStatus() == 12) {
                                lVar.f43398g.setProgress((int) f4.getProgress());
                            } else {
                                lVar.f43399h.setProgress((int) f4.getProgress());
                            }
                            if (downloadTask.getStatus() == 2) {
                                TextView textView3 = lVar.f43396e;
                                textView3.setText(f4.getSpeed() + "/S");
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    } else if (childAt.getTag() instanceof q3.k) {
                        q3.k kVar = (q3.k) childAt.getTag();
                        try {
                            kVar.f43387f.setProgress((int) com.join.android.app.common.servcie.a.e().f(str).getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        this.f34443g = com.join.mgps.rpc.impl.c.P1();
        try {
            this.f34437a = getActivity();
            com.join.mgps.Util.c0.a().d(this);
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f34451o = arguments.getInt("type");
            }
            List<DownloadTask> d4 = g1.f.G().d();
            this.f34444h = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.f34444h) {
                    this.f34445i.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.f34440d.setPreLoadCount(10);
            this.f34440d.setPullLoadEnable(new a());
            this.f34440d.setPullRefreshEnable(new b());
            this.f34440d.setOnScrollListener(this);
            this.f34448l = new ArrayList();
            a0();
            q3 q3Var = new q3(this.f34437a, this.f34448l);
            this.f34446j = q3Var;
            this.f34440d.setAdapter((ListAdapter) q3Var);
            this.f34438b = 1;
            if (this.f34451o == 2) {
                R();
            } else {
                Q();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q() {
        if (com.join.android.app.common.utils.f.j(this.f34437a)) {
            this.f34447k = true;
            try {
                try {
                    ResultMainBean<List<TodayWufunBean>> m02 = this.f34443g.m0(RequestBeanUtil.getInstance(this.f34437a).getNowWufun(this.f34438b));
                    if (m02 != null) {
                        List<TodayWufunBean> data = m02.getMessages().getData();
                        if (data != null) {
                            if (data.size() == 0 && this.f34438b == 1) {
                                Z();
                            } else {
                                b0(data);
                            }
                        } else {
                            Z();
                        }
                    } else {
                        Z();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Z();
                }
                return;
            } finally {
                this.f34447k = false;
            }
        }
        Z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        if (com.join.android.app.common.utils.f.j(this.f34437a)) {
            this.f34447k = true;
            try {
                try {
                    ResultMainBean<List<TodayWufunTopic>> A0 = this.f34443g.A0(RequestBeanUtil.getInstance(this.f34437a).getNowWufun(this.f34438b));
                    if (A0 != null) {
                        List<TodayWufunTopic> data = A0.getMessages().getData();
                        if (data != null) {
                            c0(data);
                        } else {
                            Z();
                        }
                    } else {
                        Z();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Z();
                }
                return;
            } finally {
                this.f34447k = false;
            }
        }
        Z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void T(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        q3 q3Var = this.f34446j;
        if (q3Var != null) {
            q3Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        LinearLayout linearLayout = this.f34441e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f34442f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f34439c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        LinearLayout linearLayout = this.f34441e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f34442f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f34439c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(List<TodayWufunBean> list) {
        LinearLayout linearLayout = this.f34441e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f34442f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f34439c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f34440d;
        if (xListView2 != null) {
            xListView2.t();
            this.f34440d.u();
        }
        if (this.f34438b == 1) {
            this.f34448l.clear();
        }
        if (list.size() > 0) {
            for (TodayWufunBean todayWufunBean : list) {
                c cVar = new c();
                cVar.f34454a = ItemType.DATETITLE;
                cVar.f34455b = Long.valueOf(todayWufunBean.getTimes() * 1000);
                this.f34448l.add(cVar);
                c cVar2 = new c();
                cVar2.f34454a = ItemType.FIND;
                TodayWufunEverday every_day_discover = todayWufunBean.getEvery_day_discover();
                if (every_day_discover != null) {
                    every_day_discover.setDownloadTask(S(every_day_discover.getGame_id(), every_day_discover.getGame_plugin_num(), every_day_discover.getGame_down()));
                    cVar2.f34455b = every_day_discover;
                    this.f34448l.add(cVar2);
                }
                c cVar3 = new c();
                ItemType itemType = ItemType.EMPYT;
                cVar3.f34454a = itemType;
                this.f34448l.add(cVar3);
                c cVar4 = new c();
                cVar4.f34454a = ItemType.BROADCAST;
                TodayWufunBroadcast bm_broadcast = todayWufunBean.getBm_broadcast();
                if (bm_broadcast != null) {
                    bm_broadcast.setDownloadTask(S(bm_broadcast.getGame_id(), bm_broadcast.getGame_plugin_num(), bm_broadcast.getGame_down()));
                    cVar4.f34455b = bm_broadcast;
                    this.f34448l.add(cVar4);
                }
                c cVar5 = new c();
                cVar5.f34454a = itemType;
                this.f34448l.add(cVar5);
                List<TodayWufunTodayNew> today_is_new = todayWufunBean.getToday_is_new();
                if (today_is_new != null) {
                    c cVar6 = new c();
                    cVar6.f34454a = ItemType.TODAYNEWTITLE;
                    cVar6.f34455b = "今日上线";
                    this.f34448l.add(cVar6);
                    for (TodayWufunTodayNew todayWufunTodayNew : today_is_new) {
                        c cVar7 = new c();
                        cVar7.f34454a = ItemType.TODAYNEWITEM;
                        todayWufunTodayNew.setDownloadTask(S(todayWufunTodayNew.getGame_id(), todayWufunTodayNew.getGame_plugin_num(), todayWufunTodayNew.getGame_down()));
                        cVar7.f34455b = todayWufunTodayNew;
                        this.f34448l.add(cVar7);
                    }
                    c cVar8 = new c();
                    cVar8.f34454a = ItemType.TODAYNEWBOTTOM;
                    cVar8.f34455b = "查看更多";
                    this.f34448l.add(cVar8);
                }
                c cVar9 = new c();
                cVar9.f34454a = ItemType.EMPYT;
                this.f34448l.add(cVar9);
                if (todayWufunBean.getToday_is_topic() != null) {
                    c cVar10 = new c();
                    cVar10.f34454a = ItemType.TOPIC;
                    cVar10.f34455b = todayWufunBean.getToday_is_topic();
                    this.f34448l.add(cVar10);
                }
            }
            this.f34438b++;
        } else {
            XListView2 xListView22 = this.f34440d;
            if (xListView22 != null) {
                xListView22.setNoMore();
            }
        }
        this.f34446j.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(List<TodayWufunTopic> list) {
        LinearLayout linearLayout = this.f34441e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f34442f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f34439c;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f34440d;
        if (xListView2 != null) {
            xListView2.t();
            this.f34440d.u();
        }
        if (this.f34438b == 1) {
            this.f34448l.clear();
        }
        if (list.size() > 0) {
            for (TodayWufunTopic todayWufunTopic : list) {
                c cVar = new c();
                cVar.f34454a = ItemType.TOPIC2;
                cVar.f34455b = todayWufunTopic;
                this.f34448l.add(cVar);
            }
            this.f34438b++;
        } else {
            XListView2 xListView22 = this.f34440d;
            if (xListView22 != null) {
                xListView22.setNoMore();
            }
        }
        q3 q3Var = this.f34446j;
        if (q3Var != null) {
            q3Var.notifyDataSetChanged();
        }
    }

    void f0(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    W(downloadTask);
                    break;
                case 3:
                    U(downloadTask);
                    break;
                case 5:
                    X(downloadTask);
                    break;
                case 6:
                    V(downloadTask);
                    break;
            }
        }
        this.f34446j.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                f0(a4, 1);
                return;
            case 3:
                f0(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                f0(a4, 5);
                return;
            case 6:
                f0(a4, 6);
                return;
            case 7:
                f0(a4, 3);
                return;
            case 8:
                e0();
                return;
            case 10:
                f0(a4, 7);
                return;
            case 12:
                f0(a4, 8);
                return;
            case 13:
                f0(a4, 9);
                return;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f34449m = (i4 + i2) - 1;
        this.f34450n = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        a0();
        this.f34438b = 1;
        if (this.f34451o == 2) {
            R();
        } else {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f34437a);
    }
}
