package com.join.mgps.activity;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.HandShankAdView;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.HandShankAdBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.controller.core.ControllerManager;
import com.papa.sim.statistic.JoyStickConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.handshank_layout_yes)
/* loaded from: classes3.dex */
public class HandShankYesActivity extends HandShankBaseActivity {
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ListView f32577c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    FrameLayout f32578d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32579e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f32580f;

    /* renamed from: g  reason: collision with root package name */
    private d f32581g;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<ControllerManager.c> f32582h;

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<HandShankTable> f32583i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    private List<HandShankTable> f32584j;

    /* renamed from: k  reason: collision with root package name */
    private LinkedList<HandShankTable> f32585k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    HandShankAdView f32586l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.d f32587m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (HandShankYesActivity.this.Z0()) {
                HandShankMapKeyActivity_.H0(HandShankYesActivity.this).start();
            } else {
                com.join.mgps.Util.i2.a(HandShankYesActivity.this).b("请先连接手柄！");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.u0 f32589a;

        b(com.join.mgps.dialog.u0 u0Var) {
            this.f32589a = u0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f32589a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.u0 f32591a;

        c(com.join.mgps.dialog.u0 u0Var) {
            this.f32591a = u0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankYesActivity.this.startActivity(new Intent(HandShankYesActivity.this, HandShankCheckKeyActivity_.class));
            this.f32591a.dismiss();
        }
    }

    private void Y0(List<ControllerManager.c> list) {
        try {
            if (this.f32582h == null) {
                this.f32582h = new ArrayList<>();
            }
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                arrayList.addAll(G0(list));
            }
            this.f32583i.clear();
            if (arrayList.size() != 0) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ControllerManager.c cVar = (ControllerManager.c) arrayList.get(i2);
                    HandShankTable handShankTable = new HandShankTable();
                    handShankTable.setName(cVar.d());
                    handShankTable.setAddress(cVar.a());
                    handShankTable.setTime(Long.valueOf(System.currentTimeMillis()));
                    Boolean bool = Boolean.TRUE;
                    handShankTable.setIsConnect(bool);
                    if (!this.f32583i.contains(handShankTable)) {
                        this.f32583i.add(handShankTable);
                        this.f32585k.remove(handShankTable);
                        this.f32585k.addFirst(handShankTable);
                        e1(bool);
                    }
                }
                this.f32578d.setVisibility(8);
                this.f32581g.notifyDataSetChanged();
            } else {
                e1(Boolean.FALSE);
            }
            this.f32582h.clear();
            if (list != null) {
                this.f32582h.addAll(arrayList);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Z0() {
        LinkedList<HandShankTable> linkedList = this.f32585k;
        boolean z3 = false;
        if (linkedList != null && linkedList.size() > 0) {
            synchronized (this.f32585k) {
                Iterator<HandShankTable> it2 = this.f32585k.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (it2.next().getIsConnect().booleanValue()) {
                        z3 = true;
                        break;
                    }
                }
            }
        }
        return z3;
    }

    private void b1() {
        FrameLayout frameLayout = this.f32578d;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        this.f32584j = n1.x.p().o();
        this.f32585k.clear();
        this.f32585k.addAll(this.f32584j);
        this.f32581g.notifyDataSetChanged();
    }

    private void d1() {
        this.f32578d.setVisibility(8);
        Iterator<HandShankTable> it2 = this.f32583i.iterator();
        HandShankTable handShankTable = null;
        while (it2.hasNext()) {
            HandShankTable next = it2.next();
            if (!this.f32584j.contains(next)) {
                h1(next);
                handShankTable = next;
            }
        }
        if (handShankTable != null) {
            i1(handShankTable.getName());
        }
        this.f32584j = n1.x.p().o();
        this.f32585k.clear();
        this.f32585k.addAll(this.f32583i);
        this.f32584j.removeAll(this.f32583i);
        this.f32585k.addAll(this.f32584j);
        this.f32581g.notifyDataSetChanged();
        this.f32584j.clear();
        this.f32584j.addAll(this.f32585k);
        g1(this.f32585k);
    }

    private void i1(String str) {
        com.join.mgps.dialog.u0 u0Var = new com.join.mgps.dialog.u0(this);
        u0Var.c(str);
        u0Var.a(new b(u0Var));
        u0Var.b(new c(u0Var));
        u0Var.show();
    }

    private void initView() {
        this.f32579e.setVisibility(0);
        View inflate = LayoutInflater.from(this).inflate(R.layout.handshank_list_foot, (ViewGroup) null);
        this.f32584j = new ArrayList();
        this.f32585k = new LinkedList<>();
        this.f32584j.addAll(n1.x.p().o());
        this.f32585k.addAll(this.f32584j);
        this.f32581g = new d(this, null);
        this.f32577c.addFooterView(inflate);
        this.f32577c.setAdapter((ListAdapter) this.f32581g);
        inflate.findViewById(R.id.lay_2).setOnClickListener(new a());
        if (J0()) {
            this.f32578d.setVisibility(8);
        } else if (Z0()) {
            this.f32578d.setVisibility(8);
        } else {
            this.f32578d.setVisibility(0);
        }
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    public void K0(int i2, List<ControllerManager.c> list) {
        Y0(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X0() {
        try {
            ResultMainBean<HandShankAdBean> r02 = this.f32587m.r0(RequestBeanUtil.getInstance(this).getHandShankAdList());
            if (r02.getCode() == 600) {
                this.f32586l.m(r02.getMessages().getData());
            } else {
                this.f32586l.i();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f32586l.i();
        }
    }

    public void a1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            X0();
        } else {
            this.f32586l.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f32587m = com.join.mgps.rpc.impl.c.P1();
        a1();
        com.papa.sim.statistic.p.l(this).a0(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).isTourist(), "", "", 0);
        initView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_shoubing.html");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    protected synchronized void e1(Boolean bool) {
        if (bool.booleanValue()) {
            d1();
        } else {
            b1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f1() {
        startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g1(List<HandShankTable> list) {
        try {
            synchronized (n1.x.p()) {
                for (HandShankTable handShankTable : list) {
                    if (!com.join.mgps.joystick.map.a.b().f(handShankTable.getName())) {
                        n1.x.p().n(handShankTable);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h1(HandShankTable handShankTable) {
        if (n1.x.p().q(handShankTable.getAddress())) {
            return;
        }
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null) {
            joyStickConfig.setUid(0);
        } else {
            joyStickConfig.setUid(accountData.getUid());
        }
        joyStickConfig.setGamepad_name(handShankTable.getName());
        joyStickConfig.setGamepad_mac(handShankTable.getAddress().replace(":", "_"));
        joyStickConfig.setUpdate_time(handShankTable.getTime().longValue());
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        P0(true);
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private String f32593a;

        private d() {
            this.f32593a = getClass().getSimpleName();
        }

        private boolean a(String str) {
            return Pattern.compile("^[A-F0-9]{2}(:[A-F0-9]{2}){5}$").matcher(str.toUpperCase()).find();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return HandShankYesActivity.this.f32585k.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return HandShankYesActivity.this.f32585k.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                try {
                    view = LayoutInflater.from(HandShankYesActivity.this).inflate(R.layout.handshank_item, (ViewGroup) null);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (((HandShankTable) HandShankYesActivity.this.f32585k.get(i2)).getIsConnect().booleanValue()) {
                ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_on_icon);
                ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_open_icon);
                ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_connected_txt));
                ((TextView) view.findViewById(R.id.dsc)).setText("已连接");
            } else {
                ((ImageView) view.findViewById(R.id.img)).setImageResource(R.drawable.handshank_off_icon);
                ((TextView) view.findViewById(R.id.dsc)).setTextColor(HandShankYesActivity.this.getResources().getColor(R.color.handshank_disconnected_txt));
                ((TextView) view.findViewById(R.id.dsc)).setText("未连接");
                ((ImageView) view.findViewById(R.id.handshank_blue_arrow_img)).setImageResource(R.drawable.handshank_blue_close_icon);
            }
            ((TextView) view.findViewById(R.id.handshank_name)).setText(((HandShankTable) HandShankYesActivity.this.f32585k.get(i2)).getName());
            String address = ((HandShankTable) HandShankYesActivity.this.f32585k.get(i2)).getAddress();
            com.join.mgps.Util.u0.e(this.f32593a, "device address=" + address);
            if (a(address)) {
                view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(0);
            } else {
                view.findViewById(R.id.handshank_blue_arrow_img).setVisibility(4);
            }
            return view;
        }

        /* synthetic */ d(HandShankYesActivity handShankYesActivity, a aVar) {
            this();
        }
    }
}
