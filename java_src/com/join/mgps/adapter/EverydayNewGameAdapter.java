package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.HListView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class EverydayNewGameAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f39000a;

    /* renamed from: b  reason: collision with root package name */
    private List<l> f39001b;

    /* renamed from: c  reason: collision with root package name */
    private k f39002c;

    /* loaded from: classes3.dex */
    public enum ViewType {
        VIEW_AD,
        VIEW_EXPLOSION,
        VIEW_SECTION_TITLE,
        VIEW_GAME_LIST
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f39003a;

        a(IntentDateBean intentDateBean) {
            this.f39003a = intentDateBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(view.getContext(), this.f39003a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppBean f39005a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f39006b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j4, long j5, AppBean appBean, e eVar) {
            super(j4, j5);
            this.f39005a = appBean;
            this.f39006b = eVar;
        }

        long[] a(long j4) {
            long j5 = j4 / 1000;
            return new long[]{j5 / 86400, (j5 % 86400) / 3600, (j5 % 3600) / 60, (j5 % 60) / 60};
        }

        public String b(long j4) {
            return new SimpleDateFormat("dd:hh").format(Long.valueOf(j4));
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            EverydayNewGameAdapter.this.r(this.f39006b, this.f39005a);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            try {
                long[] a4 = a(j4);
                long j5 = a4[0];
                long j6 = a4[1];
                long j7 = 0;
                if (a4[2] > 0 || a4[3] > 0) {
                    j6++;
                }
                if (j6 == 24) {
                    j5++;
                } else {
                    j7 = j6;
                }
                String str = (j4 / 1000) + "";
                this.f39005a.setResidual_time(str);
                EverydayNewGameAdapter.this.k(str);
                this.f39006b.f39014b.setText(j5 + "");
                this.f39006b.f39015c.setText(j7 + "");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Object f39008a;

        public c(Object obj) {
            this.f39008a = obj;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String ver;
            String ver_name;
            String packageName;
            String down_url_remote;
            List<DownloadUrlBean> tp_down_url;
            int other_down_switch;
            int cdn_down_switch;
            ArrayList<TipBean> tag_info;
            boolean equals;
            int i2;
            int i4;
            DownloadTask downloadTask;
            int i5;
            Context context = view.getContext();
            Object obj = this.f39008a;
            if (obj instanceof CollectionBeanSubBusiness) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
                downloadTask = collectionBeanSubBusiness.getDownloadTask();
                ver = collectionBeanSubBusiness.getVer();
                ver_name = collectionBeanSubBusiness.getVer_name();
                packageName = collectionBeanSubBusiness.getPackage_name();
                down_url_remote = collectionBeanSubBusiness.getDown_url_remote();
                tp_down_url = collectionBeanSubBusiness.getTp_down_url();
                other_down_switch = collectionBeanSubBusiness.getOther_down_switch();
                cdn_down_switch = collectionBeanSubBusiness.getCdn_down_switch();
                tag_info = collectionBeanSubBusiness.getTag_info();
                String plugin_num = collectionBeanSubBusiness.getPlugin_num();
                equals = plugin_num.equals(ConstantIntEnum.H5.value() + "");
                if (collectionBeanSubBusiness.getPay_tag_info() != null) {
                    i5 = collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount();
                    i4 = i5;
                } else {
                    i5 = 0;
                    i4 = 0;
                }
                if (i5 > 0) {
                    n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id());
                }
            } else if (!(obj instanceof RecomDatabeanBusiness)) {
                return;
            } else {
                RecomDatabeanBusiness recomDatabeanBusiness = (RecomDatabeanBusiness) obj;
                AppBean game_info = recomDatabeanBusiness.getSub().get(0).getGame_info();
                DownloadTask a4 = recomDatabeanBusiness.a();
                ver = game_info.getVer();
                ver_name = game_info.getVer_name();
                packageName = game_info.getPackageName();
                down_url_remote = game_info.getDown_url_remote();
                tp_down_url = game_info.getTp_down_url();
                other_down_switch = game_info.getOther_down_switch();
                cdn_down_switch = game_info.getCdn_down_switch();
                tag_info = game_info.getTag_info();
                equals = (ConstantIntEnum.H5.value() + "").equals(game_info.getPlugin_num());
                if (game_info.getPay_tag_info() != null) {
                    i2 = game_info.getPay_tag_info().getPay_game_amount();
                    i4 = i2;
                } else {
                    i2 = 0;
                    i4 = 0;
                }
                if (i2 > 0) {
                    n1.e0.o().p(game_info.getCrc_sign_id());
                }
                downloadTask = a4;
            }
            if (equals) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(down_url_remote);
                UtilsMy.h2(downloadTask, context);
                IntentUtil.getInstance().intentActivity(context, intentDateBean);
                return;
            }
            if (downloadTask == null) {
                if (UtilsMy.e0(tag_info) && com.join.android.app.common.utils.a.g0(context).c(context, packageName)) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, packageName);
                    if (!com.join.mgps.Util.d2.i(ver) || k4.d() >= Integer.parseInt(ver)) {
                        com.join.android.app.common.utils.a.g0(context);
                        APKUtils.X(context, packageName);
                        return;
                    }
                }
                Object obj2 = this.f39008a;
                if (obj2 instanceof CollectionBeanSubBusiness) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness2 = (CollectionBeanSubBusiness) obj2;
                    if (collectionBeanSubBusiness2.getMod_info() == null) {
                        downloadTask = collectionBeanSubBusiness2.getDownloadtaskDown();
                    } else {
                        UtilsMy.J0(context, collectionBeanSubBusiness2);
                        return;
                    }
                } else if (!(obj2 instanceof RecomDatabeanBusiness)) {
                    return;
                } else {
                    AppBean game_info2 = ((RecomDatabeanBusiness) obj2).getSub().get(0).getGame_info();
                    if (game_info2.getMod_info() == null) {
                        downloadTask = game_info2.getDownloadtaskDown();
                    } else {
                        UtilsMy.H0(context, game_info2);
                        return;
                    }
                }
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.n0(i4, downloadTask.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(context, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(ver);
                                        downloadTask.setVer_name(ver_name);
                                        downloadTask.setUrl(down_url_remote);
                                        UtilsMy.w3(context, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(context)) {
                                                    com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                    return;
                                                }
                                                Object obj3 = this.f39008a;
                                                if (obj3 instanceof CollectionBeanSubBusiness) {
                                                    CollectionBeanSubBusiness collectionBeanSubBusiness3 = (CollectionBeanSubBusiness) obj3;
                                                    if (UtilsMy.T0(context, downloadTask)) {
                                                        return;
                                                    }
                                                    if (collectionBeanSubBusiness3.getDown_status() == 5) {
                                                        UtilsMy.R0(context, downloadTask);
                                                        return;
                                                    }
                                                } else if (obj3 instanceof RecomDatabeanBusiness) {
                                                    AppBean game_info3 = ((RecomDatabeanBusiness) obj3).getSub().get(0).getGame_info();
                                                    if (UtilsMy.T0(context, downloadTask)) {
                                                        return;
                                                    }
                                                    if (game_info3.getDown_status() == 5) {
                                                        UtilsMy.R0(context, downloadTask);
                                                        return;
                                                    }
                                                }
                                                if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                }
                                                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                com.php25.PDownload.d.b(downloadTask);
                                                downloadTask.setVer(ver);
                                                downloadTask.setVer_name(ver_name);
                                                downloadTask.setUrl(down_url_remote);
                                                com.php25.PDownload.d.c(downloadTask, context);
                                                return;
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, context);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, context);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(context, downloadTask);
                return;
            }
            if (UtilsMy.n0(i4, downloadTask.getCrc_link_type_val()) > 0) {
                UtilsMy.m3(context, downloadTask.getCrc_link_type_val());
                return;
            }
            Object obj4 = this.f39008a;
            if (obj4 instanceof CollectionBeanSubBusiness) {
                CollectionBeanSubBusiness collectionBeanSubBusiness4 = (CollectionBeanSubBusiness) obj4;
                UtilsMy.c1(downloadTask, collectionBeanSubBusiness4);
                if (UtilsMy.T0(context, downloadTask)) {
                    return;
                }
                if (collectionBeanSubBusiness4.getDown_status() == 5) {
                    UtilsMy.R0(context, downloadTask);
                } else {
                    UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                }
            } else if (obj4 instanceof RecomDatabeanBusiness) {
                AppBean game_info4 = ((RecomDatabeanBusiness) obj4).getSub().get(0).getGame_info();
                UtilsMy.b1(downloadTask, game_info4);
                if (UtilsMy.T0(context, downloadTask)) {
                    return;
                }
                if (game_info4.getDown_status() == 5) {
                    UtilsMy.R0(context, downloadTask);
                } else {
                    UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f39010a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f39011b;

        public d() {
        }
    }

    /* loaded from: classes3.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        public TextView f39013a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f39014b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39015c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39016d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39017e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f39018f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f39019g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f39020h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f39021i;

        public e() {
        }
    }

    /* loaded from: classes3.dex */
    public class f extends RecyclerView.Adapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f39023a;

        /* renamed from: b  reason: collision with root package name */
        private List<CollectionBeanSubBusiness> f39024b;

        public f(Context context) {
            this.f39023a = context;
        }

        public int a() {
            List<CollectionBeanSubBusiness> list = this.f39024b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public View b(int i2, View view, ViewGroup viewGroup) {
            h hVar;
            if (view == null) {
                view = LayoutInflater.from(this.f39023a).inflate(R.layout.intersting_horiz_listitem, viewGroup, false);
            }
            if (view.getTag() == null) {
                hVar = new h(view);
            } else {
                hVar = (h) view.getTag();
            }
            SimpleDraweeView simpleDraweeView = hVar.f39029a;
            ImageView imageView = hVar.f39030b;
            TextView textView = hVar.f39031c;
            TextView textView2 = hVar.f39032d;
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
            UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view, collectionBeanSubBusiness.getDownloadTask());
            boolean g4 = com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getGame_open_time()) ? com.join.android.app.common.utils.c.g(Long.parseLong(collectionBeanSubBusiness.getGame_open_time()) * 1000) : false;
            imageView.setVisibility(0);
            if (g4) {
                imageView.setImageResource(R.drawable.flag_new);
            } else {
                imageView.setImageResource(R.drawable.flag_old);
            }
            String ico_remote = collectionBeanSubBusiness.getIco_remote();
            textView.setText(collectionBeanSubBusiness.getGame_name());
            MyImageLoader.h(simpleDraweeView, ico_remote);
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(1);
            intentDateBean.setTpl_type(collectionBeanSubBusiness.getGame_info_tpl_type() + "");
            intentDateBean.setCrc_link_type_val(collectionBeanSubBusiness.getGame_id());
            intentDateBean.setJump_type(collectionBeanSubBusiness.getSp_tpl_two_position());
            intentDateBean.setExtBean(new ExtBean(collectionBeanSubBusiness.get_from_type()));
            EverydayNewGameAdapter.this.q(textView, intentDateBean);
            EverydayNewGameAdapter.this.q(simpleDraweeView, intentDateBean);
            EverydayNewGameAdapter.this.d(textView2, collectionBeanSubBusiness);
            return view;
        }

        public void c(List<CollectionBeanSubBusiness> list) {
            this.f39024b = list;
        }

        public Object getItem(int i2) {
            List<CollectionBeanSubBusiness> list = this.f39024b;
            if (list == null || i2 >= list.size()) {
                return null;
            }
            return this.f39024b.get(i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            if (viewHolder == null) {
                return;
            }
            b(i2, viewHolder.itemView, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new h(LayoutInflater.from(EverydayNewGameAdapter.this.f39000a).inflate(R.layout.intersting_horiz_listitem, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    public class g extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f39026a;

        /* renamed from: b  reason: collision with root package name */
        private List<CollectionBeanSubBusiness> f39027b;

        public g(Context context) {
            this.f39026a = context;
        }

        public void a(List<CollectionBeanSubBusiness> list) {
            this.f39027b = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<CollectionBeanSubBusiness> list = this.f39027b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<CollectionBeanSubBusiness> list = this.f39027b;
            if (list == null || i2 >= list.size()) {
                return null;
            }
            return this.f39027b.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.f39026a).inflate(R.layout.intersting_horiz_listitem, viewGroup, false);
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.image1);
            ImageView imageView = (ImageView) com.join.mgps.Util.o2.a(view, R.id.flag);
            TextView textView = (TextView) com.join.mgps.Util.o2.a(view, R.id.appname1);
            TextView textView2 = (TextView) com.join.mgps.Util.o2.a(view, R.id.mgListviewItemInstall);
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
            boolean g4 = (collectionBeanSubBusiness == null || !com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getGame_open_time())) ? false : com.join.android.app.common.utils.c.g(Long.parseLong(collectionBeanSubBusiness.getGame_open_time()) * 1000);
            imageView.setVisibility(0);
            if (g4) {
                imageView.setImageResource(R.drawable.flag_new);
            } else {
                imageView.setImageResource(R.drawable.flag_old);
            }
            if (collectionBeanSubBusiness != null) {
                String ico_remote = collectionBeanSubBusiness.getIco_remote();
                textView.setText(collectionBeanSubBusiness.getGame_name());
                MyImageLoader.h(simpleDraweeView, ico_remote);
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(1);
                intentDateBean.setTpl_type(collectionBeanSubBusiness.getGame_info_tpl_type() + "");
                intentDateBean.setCrc_link_type_val(collectionBeanSubBusiness.getGame_id());
                intentDateBean.setCrc_link_type_val(collectionBeanSubBusiness.getGame_id());
                intentDateBean.setExtBean(new ExtBean(collectionBeanSubBusiness.get_from_type()));
                EverydayNewGameAdapter.this.q(textView, intentDateBean);
                EverydayNewGameAdapter.this.q(simpleDraweeView, intentDateBean);
                EverydayNewGameAdapter.this.d(textView2, collectionBeanSubBusiness);
            }
            return view;
        }
    }

    /* loaded from: classes3.dex */
    public class h extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f39029a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f39030b;

        /* renamed from: c  reason: collision with root package name */
        TextView f39031c;

        /* renamed from: d  reason: collision with root package name */
        TextView f39032d;

        public h(View view) {
            super(view);
            this.f39029a = (SimpleDraweeView) view.findViewById(R.id.image1);
            this.f39030b = (ImageView) view.findViewById(R.id.flag);
            this.f39031c = (TextView) view.findViewById(R.id.appname1);
            this.f39032d = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            view.setTag(this);
        }
    }

    /* loaded from: classes3.dex */
    public class i {

        /* renamed from: a  reason: collision with root package name */
        public HListView f39034a;

        /* renamed from: b  reason: collision with root package name */
        public HorizontalRecyclerView f39035b;

        public i() {
        }
    }

    /* loaded from: classes3.dex */
    public class j {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f39037a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f39038b;

        public j() {
        }
    }

    /* loaded from: classes3.dex */
    public interface k {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39040a;

        /* renamed from: b  reason: collision with root package name */
        Object f39041b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public RecomDatabean f39042a;

            public a(RecomDatabean recomDatabean) {
                this.f39042a = recomDatabean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public RecomDatabeanBusiness f39043a;

            public b(RecomDatabeanBusiness recomDatabeanBusiness) {
                this.f39043a = recomDatabeanBusiness;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            private final String f39044a;

            /* renamed from: b  reason: collision with root package name */
            public List<CollectionBeanSubBusiness> f39045b;

            public c(String str, List<CollectionBeanSubBusiness> list) {
                this.f39044a = str;
                this.f39045b = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public String f39046a;

            public d(String str) {
                this.f39046a = str;
            }
        }

        public l() {
        }

        public Object a() {
            return this.f39041b;
        }

        public ViewType b() {
            return this.f39040a;
        }

        public void c(Object obj) {
            this.f39041b = obj;
        }

        public void d(ViewType viewType) {
            this.f39040a = viewType;
        }

        public l(ViewType viewType, Object obj) {
            this.f39040a = viewType;
            this.f39041b = obj;
        }
    }

    public EverydayNewGameAdapter(Context context) {
        this.f39000a = context;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        try {
            if (view != null) {
                dVar = (d) view.getTag();
            } else {
                dVar = new d();
                view = LayoutInflater.from(this.f39000a).inflate(R.layout.collection_two_header, (ViewGroup) null);
                dVar.f39010a = (SimpleDraweeView) view.findViewById(R.id.imgBreak);
                dVar.f39011b = (TextView) view.findViewById(R.id.textViewBreak);
                view.setTag(dVar);
            }
            if (dVar != null) {
                dVar.f39011b.setVisibility(8);
                l.a aVar = (l.a) getItem(i2);
                RecomDatabean recomDatabean = aVar.f39042a;
                MyImageLoader.d(dVar.f39010a, R.drawable.banner_normal_icon, (recomDatabean == null || recomDatabean.getMain() == null) ? "" : aVar.f39042a.getMain().getPic_remote());
                RecomDatabean recomDatabean2 = aVar.f39042a;
                if (recomDatabean2 != null && recomDatabean2.getSub() != null && aVar.f39042a.getSub().size() > 0) {
                    AppBeanMain appBeanMain = aVar.f39042a.getSub().get(0);
                    IntentDateBean intentDateBean = new IntentDateBean(appBeanMain.getLink_type(), appBeanMain.getJump_type(), appBeanMain.getLink_type_val(), appBeanMain.getCrc_link_type_val(), appBeanMain.getTpl_type(), null);
                    if (appBeanMain.getGame_info() != null) {
                        intentDateBean.setExtBean(new ExtBean(appBeanMain.getGame_info().get_from_type()));
                    }
                    q(view, intentDateBean);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        View view2;
        e eVar;
        String str;
        try {
            if (view != null) {
                eVar = (e) view.getTag();
                view2 = view;
            } else {
                eVar = new e();
                view2 = LayoutInflater.from(this.f39000a).inflate(R.layout.new_game_explosion, (ViewGroup) null);
                try {
                    eVar.f39016d = (TextView) view2.findViewById(R.id.gameName);
                    eVar.f39017e = (TextView) view2.findViewById(R.id.installButton);
                    eVar.f39018f = (SimpleDraweeView) view2.findViewById(R.id.gameIcon);
                    eVar.f39013a = (TextView) view2.findViewById(R.id.sectionTitle);
                    eVar.f39019g = (TextView) view2.findViewById(R.id.openState);
                    eVar.f39020h = (LinearLayout) view2.findViewById(R.id.countdownLayout);
                    eVar.f39014b = (TextView) view2.findViewById(R.id.time_h);
                    eVar.f39015c = (TextView) view2.findViewById(R.id.time_m);
                    eVar.f39021i = (TextView) view2.findViewById(R.id.openTime);
                    view2.setTag(eVar);
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                    return view2;
                }
            }
            e eVar2 = eVar;
            if (eVar2 != null) {
                l.b bVar = (l.b) getItem(i2);
                AppBeanMain appBeanMain = bVar.f39043a.getSub().get(0);
                AppBean game_info = bVar.f39043a.getSub().get(0).getGame_info();
                ModleBean main = bVar.f39043a.getMain();
                String str2 = "";
                eVar2.f39013a.setText(main != null ? main.getTitle() : "");
                if (game_info != null) {
                    String ico_remote = game_info.getIco_remote();
                    str2 = game_info.getGame_name();
                    str = ico_remote;
                } else {
                    str = "";
                }
                eVar2.f39016d.setText(str2);
                MyImageLoader.d(eVar2.f39018f, R.drawable.main_normal_icon, str);
                UtilsMy.v2(game_info.getSp_tag_info(), view2, bVar.f39043a.a());
                IntentDateBean intentDateBean = new IntentDateBean(appBeanMain.getLink_type(), appBeanMain.getJump_type(), appBeanMain.getLink_type_val(), appBeanMain.getCrc_link_type_val(), appBeanMain.getTpl_type(), null);
                intentDateBean.setExtBean(new ExtBean(game_info.get_from_type()));
                q(view2, intentDateBean);
                d(eVar2.f39017e, bVar.f39043a);
                try {
                    eVar2.f39021i.setText(new SimpleDateFormat("MM月dd日 HH:mm").format(new Date(Long.parseLong(game_info.getGame_open_time()) * 1000)));
                } catch (NumberFormatException e5) {
                    e5.printStackTrace();
                }
                if ((game_info.getDown_status() == 2 || game_info.getDown_status() == 3) ? false : true) {
                    eVar2.f39021i.setVisibility(0);
                    eVar2.f39020h.setVisibility(8);
                    eVar2.f39019g.setText(this.f39000a.getString(R.string.explosion_open));
                } else {
                    eVar2.f39021i.setVisibility(8);
                    eVar2.f39020h.setVisibility(0);
                    eVar2.f39019g.setText(this.f39000a.getString(R.string.explosion_count_down));
                    s(eVar2, game_info);
                }
            }
        } catch (Exception e6) {
            e = e6;
            view2 = view;
        }
        return view2;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        i iVar;
        try {
            if (view != null) {
                iVar = (i) view.getTag();
            } else {
                iVar = new i();
                view = LayoutInflater.from(this.f39000a).inflate(R.layout.papamain_intersting_midle_layout1, (ViewGroup) null);
                iVar.f39035b = (HorizontalRecyclerView) view.findViewById(R.id.hrecyclerview);
                view.setTag(iVar);
            }
            if (iVar != null) {
                List<CollectionBeanSubBusiness> list = ((l.c) getItem(i2)).f39045b;
                if (iVar.f39034a != null) {
                    g gVar = (g) view.getTag(R.id.everyday_new_game_list);
                    if (gVar == null) {
                        gVar = new g(this.f39000a);
                        view.setTag(R.id.everyday_new_game_list, gVar);
                    }
                    iVar.f39034a.setAdapter((ListAdapter) gVar);
                    gVar.a(list);
                    gVar.notifyDataSetChanged();
                }
                if (iVar.f39035b != null) {
                    f fVar = (f) view.getTag(R.id.everyday_new_game_list);
                    if (fVar == null) {
                        fVar = new f(this.f39000a);
                        view.setTag(R.id.everyday_new_game_list, fVar);
                    }
                    iVar.f39035b.setAdapter(fVar);
                    fVar.c(list);
                    fVar.notifyDataSetChanged();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View j(int i2, View view, ViewGroup viewGroup) {
        j jVar;
        try {
            if (view != null) {
                jVar = (j) view.getTag();
            } else {
                jVar = new j();
                view = LayoutInflater.from(this.f39000a).inflate(R.layout.new_game_section_title, (ViewGroup) null);
                jVar.f39037a = (LinearLayout) view.findViewById(R.id.forumMore);
                jVar.f39038b = (TextView) view.findViewById(R.id.sectionTitle);
                view.setTag(jVar);
            }
            jVar.f39037a.setVisibility(8);
            jVar.f39038b.setText("游戏更新");
            l.d dVar = (l.d) getItem(i2);
            if (dVar != null && com.join.mgps.Util.d2.i(dVar.f39046a)) {
                jVar.f39038b.setText(dVar.f39046a);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(String str) {
        k kVar = this.f39002c;
        if (kVar != null) {
            kVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(e eVar, AppBean appBean) {
        if (eVar == null) {
            return;
        }
        eVar.f39020h.setVisibility(8);
        int i2 = 0;
        eVar.f39021i.setVisibility(0);
        eVar.f39019g.setText(this.f39000a.getString(R.string.explosion_open));
        int pay_game_amount = appBean.getPay_tag_info() != null ? appBean.getPay_tag_info().getPay_game_amount() : 0;
        if (pay_game_amount <= 0 || !n1.e0.o().p(appBean.getCrc_sign_id())) {
            i2 = pay_game_amount;
        }
        if (i2 > 0) {
            n(eVar.f39017e, i2);
        } else {
            m(eVar.f39017e, appBean.getDown_status());
        }
    }

    void d(TextView textView, Object obj) {
        DownloadTask a4;
        int down_status;
        String ver;
        String packageName;
        ArrayList<TipBean> tag_info;
        PayTagInfo pay_tag_info;
        boolean equals;
        int pay_game_amount;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        Resources resources = context.getResources();
        if (obj instanceof CollectionBeanSubBusiness) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
            a4 = collectionBeanSubBusiness.getDownloadTask();
            down_status = collectionBeanSubBusiness.getDown_status();
            ver = collectionBeanSubBusiness.getVer();
            packageName = collectionBeanSubBusiness.getPackage_name();
            tag_info = collectionBeanSubBusiness.getTag_info();
            pay_tag_info = collectionBeanSubBusiness.getPay_tag_info();
            String plugin_num = collectionBeanSubBusiness.getPlugin_num();
            equals = plugin_num.equals(ConstantIntEnum.H5.value() + "");
            int pay_game_amount2 = collectionBeanSubBusiness.getPay_tag_info() != null ? collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount() : 0;
            if (pay_game_amount2 > 0 && n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id())) {
                pay_game_amount2 = 0;
            }
            pay_game_amount = pay_game_amount2;
        } else if (!(obj instanceof RecomDatabeanBusiness)) {
            return;
        } else {
            RecomDatabeanBusiness recomDatabeanBusiness = (RecomDatabeanBusiness) obj;
            a4 = recomDatabeanBusiness.a();
            AppBean game_info = recomDatabeanBusiness.getSub().get(0).getGame_info();
            down_status = game_info.getDown_status();
            ver = game_info.getVer();
            packageName = game_info.getPackageName();
            tag_info = game_info.getTag_info();
            pay_tag_info = game_info.getPay_tag_info();
            equals = (ConstantIntEnum.H5.value() + "").equals(game_info.getPlugin_num());
            pay_game_amount = game_info.getPay_tag_info() != null ? game_info.getPay_tag_info().getPay_game_amount() : 0;
            if (pay_game_amount > 0 && n1.e0.o().p(game_info.getCrc_sign_id())) {
                pay_game_amount = 0;
            }
        }
        if (equals) {
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setText("开始");
            textView.setTextColor(context.getResources().getColor(R.color.app_blue_color));
        } else if (a4 == null) {
            if (UtilsMy.e0(tag_info)) {
                if (pay_game_amount > 0 ? false : com.join.android.app.common.utils.a.g0(context).c(context, packageName)) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, packageName);
                    if (com.join.mgps.Util.d2.i(ver) && k4.d() < Integer.parseInt(ver)) {
                        textView.setBackgroundResource(R.drawable.recom_green_butn);
                        textView.setText("更新");
                        textView.setTextColor(resources.getColor(R.color.app_green_color));
                    } else {
                        textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        textView.setText(context.getResources().getString(R.string.download_status_finished));
                        textView.setTextColor(resources.getColor(R.color.app_main_color));
                    }
                } else {
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        n(textView, pay_game_amount);
                    } else {
                        m(textView, down_status);
                    }
                }
            } else {
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    n(textView, pay_game_amount);
                } else {
                    m(textView, down_status);
                }
            }
        } else {
            int status = a4.getStatus();
            if (UtilsMy.m0(pay_tag_info, a4.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    textView.setText("暂停中");
                } else if (status == 48) {
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("安装中");
                    textView.setTextColor(resources.getColor(R.color.app_blue_color));
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                    textView.setText("更新");
                                                    textView.setTextColor(resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 10:
                                                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    textView.setText("等待");
                                                    textView.setTextColor(resources.getColor(R.color.app_blue_color));
                                                    break;
                                                case 11:
                                                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                                                    textView.setText("安装");
                                                    textView.setTextColor(resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 12:
                                                    textView.setBackgroundResource(R.drawable.extract);
                                                    textView.setText("解压中");
                                                    textView.setTextColor(resources.getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    textView.setBackgroundResource(R.drawable.reextract);
                                                    textView.setText("解压");
                                                    textView.setTextColor(resources.getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        } else {
                                            textView.setBackgroundResource(R.drawable.download_green_butn);
                                            if (pay_game_amount > 0) {
                                                n(textView, pay_game_amount);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        textView.setText(context.getResources().getString(R.string.download_status_finished));
                        textView.setTextColor(resources.getColor(R.color.app_main_color));
                    }
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("继续");
                    textView.setTextColor(resources.getColor(R.color.app_blue_color));
                } else {
                    UtilsMy.C3(a4);
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("暂停");
                    textView.setTextColor(resources.getColor(R.color.app_blue_color));
                }
            }
            textView.setBackgroundResource(R.drawable.recom_green_butn);
            if (pay_game_amount > 0) {
                n(textView, pay_game_amount);
            } else {
                m(textView, down_status);
            }
        }
        textView.setOnClickListener(new c(obj));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<l> list = this.f39001b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<l> list = this.f39001b;
        if (list != null) {
            return list.get(i2).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        List<l> list = this.f39001b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View g4;
        try {
            List<l> list = this.f39001b;
            if (list == null && list.size() == 0) {
                return view;
            }
            int itemViewType = getItemViewType(i2);
            if (itemViewType == ViewType.VIEW_AD.ordinal()) {
                g4 = e(i2, view, viewGroup);
            } else if (itemViewType == ViewType.VIEW_EXPLOSION.ordinal()) {
                g4 = f(i2, view, viewGroup);
            } else if (itemViewType == ViewType.VIEW_SECTION_TITLE.ordinal()) {
                g4 = j(i2, view, viewGroup);
            } else if (itemViewType != ViewType.VIEW_GAME_LIST.ordinal()) {
                return view;
            } else {
                g4 = g(i2, view, viewGroup);
            }
            return g4;
        } catch (Exception e4) {
            e4.printStackTrace();
            return view;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public List<l> h() {
        return this.f39001b;
    }

    public k i() {
        return this.f39002c;
    }

    public void l(DownloadTask downloadTask, Map<String, DownloadTask> map, int i2) {
        for (int i4 = 0; i4 < getCount(); i4++) {
            if (getItemViewType(i4) == ViewType.VIEW_GAME_LIST.ordinal()) {
                try {
                    Iterator<CollectionBeanSubBusiness> it2 = ((l.c) getItem(i4)).f39045b.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        CollectionBeanSubBusiness next = it2.next();
                        if (next.getMod_info() != null) {
                            ModInfoBean mod_info = next.getMod_info();
                            DownloadTask downloadTask2 = map.get(mod_info.getMain_game_id());
                            boolean c4 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.a.g0(this.f39000a).c(this.f39000a, downloadTask2.getPackageName());
                            DownloadTask downloadTask3 = map.get(mod_info.getMod_game_id());
                            boolean D = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : com.join.mgps.va.overmind.e.p().D(downloadTask3.getPackageName());
                            if (!D || !c4) {
                                if (D) {
                                    if (next.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(next.getMod_info().getMod_game_id())) {
                                        next.setDownloadTask(downloadTask);
                                        break;
                                    }
                                } else if (c4) {
                                    if (downloadTask.getCrc_link_type_val().equals(next.getCrc_sign_id())) {
                                        next.setDownloadTask(downloadTask);
                                        break;
                                    }
                                } else {
                                    DownloadTask B = next.getMod_info() != null ? g1.f.G().B(next.getMod_info().getMod_game_id()) : null;
                                    if (B == null) {
                                        B = g1.f.G().B(next.getCrc_sign_id());
                                    }
                                    if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                        next.setDownloadTask(downloadTask);
                                        break;
                                    }
                                }
                            } else if (downloadTask.getCrc_link_type_val().equals(next.getCrc_sign_id())) {
                                next.setDownloadTask(downloadTask);
                                break;
                            }
                        } else if (next.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            next.setDownloadTask(downloadTask);
                            break;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                notifyDataSetChanged();
            } else if (getItemViewType(i4) == ViewType.VIEW_EXPLOSION.ordinal()) {
                try {
                    RecomDatabeanBusiness recomDatabeanBusiness = ((l.b) getItem(i4)).f39043a;
                    AppBean game_info = recomDatabeanBusiness.getSub().get(0).getGame_info();
                    if (game_info.getMod_info() != null) {
                        DownloadTask downloadTask4 = map.get(game_info.getMod_info().getMod_game_id());
                        DownloadTask downloadTask5 = map.get(game_info.getGame_id());
                        if (downloadTask4 == null && downloadTask5 == null) {
                            recomDatabeanBusiness.d(downloadTask);
                            if (i2 == 2) {
                                recomDatabeanBusiness.d(null);
                            }
                        } else if (downloadTask4 != null) {
                            recomDatabeanBusiness.d(downloadTask);
                            if (i2 == 2) {
                                recomDatabeanBusiness.d(downloadTask4);
                            }
                        } else if (downloadTask5 != null) {
                            recomDatabeanBusiness.d(downloadTask);
                            if (i2 == 2) {
                                recomDatabeanBusiness.d(downloadTask5);
                            }
                        } else if (game_info.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            recomDatabeanBusiness.d(downloadTask);
                            if (i2 == 2) {
                                recomDatabeanBusiness.d(null);
                            }
                        }
                    } else if (game_info.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                        recomDatabeanBusiness.d(downloadTask);
                        if (i2 == 2) {
                            recomDatabeanBusiness.d(null);
                        }
                    }
                    notifyDataSetChanged();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    void m(TextView textView, int i2) {
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        if (i2 == 3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (i2 == 2) {
            textView.setText("即将开放");
            textView.setTextSize(2, 11.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else {
            textView.setText(this.f39000a.getResources().getString(R.string.download_status_download));
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    void n(TextView textView, int i2) {
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        textView.setText(textView.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(i2)));
        textView.setTextSize(2, 13.0f);
        textView.setTextColor(-12802819);
        textView.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public void o(List<l> list) {
        this.f39001b = list;
    }

    public void p(k kVar) {
        this.f39002c = kVar;
    }

    void q(View view, IntentDateBean intentDateBean) {
        if (view == null || intentDateBean == null) {
            return;
        }
        view.setOnClickListener(new a(intentDateBean));
    }

    public void s(e eVar, AppBean appBean) {
        String residual_time = appBean.getResidual_time();
        if (eVar == null || com.join.mgps.Util.d2.h(residual_time)) {
            return;
        }
        long time = new Date(Long.valueOf(Long.parseLong(residual_time)).longValue() * 1000).getTime();
        if (time > 0) {
            new b(time, 1000L, appBean, eVar).start();
        } else {
            r(eVar, appBean);
        }
    }
}
