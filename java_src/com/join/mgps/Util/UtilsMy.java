package com.join.mgps.Util;

import android.app.Activity;
import android.app.Dialog;
import android.app.DownloadManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.http.PointSendUtile;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptNormalDialog;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ChociceDownActivity_;
import com.join.mgps.activity.CopyDialogActivity;
import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.join.mgps.activity.HavenDownActivity_;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.MiniGameLoadingActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.activity.RankingHomeActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UpdateLodingActivity_;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.UserPurchaseInfo;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dialog.DownloadChoiceUrlDialog_;
import com.join.mgps.dialog.DownloadHighSpeedDialog_;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dialog.DownloadSnifferPromptDialog_;
import com.join.mgps.dialog.DownloadSpeedOptionDialog_;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.d;
import com.join.mgps.dialog.r0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BaiduAdDataMain;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.Filepath;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameDetailRankingTag;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.dto.GameTagInfoV2_2Bean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.RecGameTagBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEverday;
import com.join.mgps.dto.TodayWufunTodayNew;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.NotifcationReceiver;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.common.BaseAppConfig;
import com.papa91.common.RealNameCheckInfo;
import com.papa91.view.RealNameLoginDialog;
import com.papa91.wrapper.UserPrefs;
import com.psk.eventmodule.StatFactory;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.analytics.pro.ai;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.springframework.util.Base64Utils;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes.dex */
public class UtilsMy {

    /* renamed from: a  reason: collision with root package name */
    private static String f27402a = "UtilsMy";

    /* renamed from: b  reason: collision with root package name */
    public static EMUApkTable f27403b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f27404c;

    /* renamed from: d  reason: collision with root package name */
    private static long f27405d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27406a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27407b;

        a(Context context, DownloadTask downloadTask) {
            this.f27406a = context;
            this.f27407b = downloadTask;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
            com.join.android.app.common.utils.a.g0(this.f27406a);
            APKUtils.X(this.f27406a, this.f27407b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            com.join.android.app.common.utils.a.g0(this.f27406a);
            APKUtils.X(this.f27406a, this.f27407b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* loaded from: classes3.dex */
    class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27408a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27409b;

        b(String str, Context context) {
            this.f27408a = str;
            this.f27409b = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BootPageData bootPageData;
            try {
                Thread.sleep(800L);
                if (this.f27408a == null || (bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(this.f27408a, BootPageData.class)) == null || bootPageData.getPerformance_boot() == null) {
                    return;
                }
                PapaPlugGuideActivity_.I0(this.f27409b).start();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27410a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27411b;

        c(String str, Context context) {
            this.f27410a = str;
            this.f27411b = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            g1.f.G().e0(this.f27410a, true);
            Intent intent = new Intent(f1.a.f65484k);
            intent.putExtra("gameId", this.f27410a);
            this.f27411b.sendBroadcast(intent);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27412a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag f27413b;

        d(Context context, GameDetailRankingTag gameDetailRankingTag) {
            this.f27412a = context;
            this.f27413b = gameDetailRankingTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingHomeActivity_.H0(this.f27412a).c(1001).b(this.f27413b.getHot_game().getType()).a(this.f27413b.getHot_game().getId()).d(this.f27413b.getHot_game().getSub_title()).start();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27414a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag f27415b;

        e(Context context, GameDetailRankingTag gameDetailRankingTag) {
            this.f27414a = context;
            this.f27415b = gameDetailRankingTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingHomeActivity_.H0(this.f27414a).c(1001).b(this.f27415b.getTag_game().getType()).a(this.f27415b.getTag_game().getId()).d(this.f27415b.getTag_game().getSub_title()).start();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27416a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TipBean f27417b;

        f(Context context, TipBean tipBean) {
            this.f27416a = context;
            this.f27417b = tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.d1(this.f27416a).b(0).d(this.f27417b.getName()).e(Integer.parseInt(this.f27417b.getId())).start();
        }
    }

    /* loaded from: classes3.dex */
    class g implements d.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27418a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27419b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27420c;

        g(Context context, DownloadTask downloadTask, com.join.mgps.dialog.d dVar) {
            this.f27418a = context;
            this.f27419b = downloadTask;
            this.f27420c = dVar;
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
            ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this.f27418a).extra("gameDownloadDetail", this.f27419b.getCrc_link_type_val())).extra(DownloadMethodPromptDialog_.F, this.f27419b.get_from())).extra(DownloadMethodPromptDialog_.G, this.f27419b.get_from_type())).a();
            this.f27420c.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class h implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27421a;

        h(com.join.mgps.dialog.d dVar) {
            this.f27421a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f27421a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements d.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27422a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27423b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f27424c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27425d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f27426e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Context f27427f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27428g;

        i(Context context, DownloadTask downloadTask, List list, int i2, int i4, Context context2, com.join.mgps.dialog.d dVar) {
            this.f27422a = context;
            this.f27423b = downloadTask;
            this.f27424c = list;
            this.f27425d = i2;
            this.f27426e = i4;
            this.f27427f = context2;
            this.f27428g = dVar;
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
            UtilsMy.P0(this.f27422a, this.f27423b, this.f27424c, this.f27425d, this.f27426e, this.f27427f);
            this.f27428g.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27429a;

        j(com.join.mgps.dialog.d dVar) {
            this.f27429a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f27429a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f27430a;

        k(Dialog dialog) {
            this.f27430a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f27430a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements d.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27431a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27432b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f27433c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27434d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f27435e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27436f;

        l(Context context, DownloadTask downloadTask, List list, int i2, int i4, com.join.mgps.dialog.d dVar) {
            this.f27431a = context;
            this.f27432b = downloadTask;
            this.f27433c = list;
            this.f27434d = i2;
            this.f27435e = i4;
            this.f27436f = dVar;
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
            if (!UtilsMy.U0(this.f27431a, this.f27432b)) {
                if (this.f27432b.getDown_status() == 5) {
                    UtilsMy.S0(this.f27431a, this.f27432b);
                } else {
                    UtilsMy.G0(this.f27431a, this.f27432b, this.f27433c, this.f27434d, this.f27435e);
                }
            }
            this.f27436f.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27437a;

        m(com.join.mgps.dialog.d dVar) {
            this.f27437a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f27437a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class n extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27438a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27439b;

        n(String str, Context context) {
            this.f27438a = str;
            this.f27439b = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
                Intent intent = new Intent();
                intent.setAction("com.wufun.get.downFinish");
                intent.putExtra("gameid", this.f27438a);
                LocalBroadcastManager.getInstance(this.f27439b).sendBroadcast(intent);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class o implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27440a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27441b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f27442c;

        o(Context context, String str, DownloadGameArgsBean downloadGameArgsBean) {
            this.f27440a = context;
            this.f27441b = str;
            this.f27442c = downloadGameArgsBean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            UtilsMy.W1(this.f27440a, this.f27441b, this.f27442c);
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27443a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27444b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27445c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27446d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f27447e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f27448f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f27449g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f27450h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f27451i;

        p(Context context, String str, int i2, int i4, String str2, String str3, String str4, String str5, boolean z3) {
            this.f27443a = context;
            this.f27444b = str;
            this.f27445c = i2;
            this.f27446d = i4;
            this.f27447e = str2;
            this.f27448f = str3;
            this.f27449g = str4;
            this.f27450h = str5;
            this.f27451i = z3;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this.f27443a).extra("gameDownloadDetail", this.f27444b)).extra(DownloadMethodPromptDialog_.F, this.f27445c)).extra(DownloadMethodPromptDialog_.G, this.f27446d)).extra("recPosition", this.f27447e)).extra("remarks", this.f27448f)).extra("nodeId", this.f27449g)).extra("volcanoOther", this.f27450h)).extra(DownloadMethodPromptDialog_.C, this.f27451i)).a();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f27452a;

        q(com.join.mgps.dialog.d dVar) {
            this.f27452a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f27452a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements d.f {
        r() {
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27453a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EMUApkTable f27454b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27455c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Context f27456d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Dialog f27457e;

        s(DownloadTask downloadTask, EMUApkTable eMUApkTable, int i2, Context context, Dialog dialog) {
            this.f27453a = downloadTask;
            this.f27454b = eMUApkTable;
            this.f27455c = i2;
            this.f27456d = context;
            this.f27457e = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = new DownloadTask();
            DownloadTask downloadTask2 = this.f27453a;
            if (downloadTask2 != null) {
                downloadTask.setId(downloadTask2.getId());
            }
            downloadTask.setPackageName(this.f27454b.getPackage_name());
            downloadTask.setPortraitURL(this.f27454b.getLogo());
            downloadTask.setShowName(this.f27454b.getApk_name());
            downloadTask.setUrl(this.f27454b.getDown_url());
            downloadTask.setTipBeans(null);
            downloadTask.setCrc_link_type_val(this.f27455c + "");
            try {
                String[] split = this.f27454b.getVer().split("_");
                downloadTask.setVer_name(split[1]);
                downloadTask.setVer(split[0]);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            downloadTask.setRomType(this.f27455c + "");
            downloadTask.setPlugin_num(this.f27455c + "");
            downloadTask.setFileType(Dtype.chajian.name());
            downloadTask.setShowSize(this.f27454b.getSize());
            downloadTask.setDescribe(this.f27454b.getVer_info());
            downloadTask.setDown_type(this.f27454b.getDown_type());
            downloadTask.setProgress(0L);
            DownloadTask downloadTask3 = this.f27453a;
            if (downloadTask3 != null) {
                UtilsMy.A0(downloadTask3);
                if (this.f27453a.getDown_type() == 2 && com.join.android.app.common.utils.h.i(this.f27454b)) {
                    com.join.android.app.common.utils.h.e(this.f27454b, downloadTask);
                }
            }
            com.php25.PDownload.d.c(downloadTask, this.f27456d);
            this.f27457e.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f27458a;

        t(Dialog dialog) {
            this.f27458a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f27458a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27459a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EMUApkTable f27460b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27461c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Context f27462d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Dialog f27463e;

        u(DownloadTask downloadTask, EMUApkTable eMUApkTable, int i2, Context context, Dialog dialog) {
            this.f27459a = downloadTask;
            this.f27460b = eMUApkTable;
            this.f27461c = i2;
            this.f27462d = context;
            this.f27463e = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = new DownloadTask();
            DownloadTask downloadTask2 = this.f27459a;
            if (downloadTask2 != null) {
                downloadTask.setId(downloadTask2.getId());
            }
            downloadTask.setPackageName(this.f27460b.getPackage_name());
            downloadTask.setPortraitURL(this.f27460b.getLogo());
            downloadTask.setShowName(this.f27460b.getApk_name());
            downloadTask.setUrl(this.f27460b.getDown_url());
            downloadTask.setTipBeans(null);
            downloadTask.setCrc_link_type_val(this.f27461c + "");
            try {
                String[] split = this.f27460b.getVer().split("_");
                downloadTask.setVer_name(split[1]);
                downloadTask.setVer(split[0]);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            downloadTask.setRomType(this.f27461c + "");
            downloadTask.setFileType(Dtype.chajian.name());
            downloadTask.setShowSize(this.f27460b.getSize());
            downloadTask.setDescribe(this.f27460b.getVer_info());
            downloadTask.setDown_type(this.f27460b.getDown_type());
            downloadTask.setProgress(0L);
            DownloadTask downloadTask3 = this.f27459a;
            if (downloadTask3 != null) {
                UtilsMy.A0(downloadTask3);
                if (this.f27459a.getDown_type() == 2 && com.join.android.app.common.utils.h.i(this.f27460b)) {
                    com.join.android.app.common.utils.h.e(this.f27460b, downloadTask);
                }
            }
            com.php25.PDownload.d.f(downloadTask, this.f27462d);
            this.f27463e.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements Callback<ResponseModel<RealNameCheckInfo>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f27464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27465b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ GameRoomActivity.x f27466c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27467d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ AccountBean f27468e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LuckHistoryrequest f27469f;

        v(Activity activity, String str, GameRoomActivity.x xVar, int i2, AccountBean accountBean, LuckHistoryrequest luckHistoryrequest) {
            this.f27464a = activity;
            this.f27465b = str;
            this.f27466c = xVar;
            this.f27467d = i2;
            this.f27468e = accountBean;
            this.f27469f = luckHistoryrequest;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(GameRoomActivity.x xVar, int i2, RealNameLoginDialog realNameLoginDialog, int i4, ButtonBean buttonBean) {
            realNameLoginDialog.dismiss();
            if (xVar != null) {
                xVar.onSuccess(i2, 0, buttonBean);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(Activity activity, String str, RealNameCheckInfo realNameCheckInfo, final GameRoomActivity.x xVar, final int i2, AccountBean accountBean, LuckHistoryrequest luckHistoryrequest, RealNameLoginDialog realNameLoginDialog, int i4, ButtonBean buttonBean) {
            if (i4 == 1) {
                com.papa.sim.statistic.p.l(activity).K1(Event.closedRealNameWindow, new Ext().setGameId(str));
            }
            if (buttonBean.getEventType().intValue() == 2) {
                if (realNameCheckInfo.getType() != 1) {
                    UtilsMy.X2(activity, buttonBean.getPopUpWindow(), new RealNameLoginDialog.OnButnClickLienster() { // from class: com.join.mgps.Util.m2
                        @Override // com.papa91.view.RealNameLoginDialog.OnButnClickLienster
                        public final void clickAnydButn(RealNameLoginDialog realNameLoginDialog2, int i5, ButtonBean buttonBean2) {
                            UtilsMy.v.c(GameRoomActivity.x.this, i2, realNameLoginDialog2, i5, buttonBean2);
                        }
                    });
                } else {
                    com.papa.sim.statistic.p.l(activity).K1(Event.realNameDisplayWindow, new Ext().setGameId(str));
                    UtilsMy.W2(activity, realNameCheckInfo, xVar, i2, accountBean.getUid() + "", luckHistoryrequest.getType(), luckHistoryrequest.getAction(), str);
                }
            } else if (buttonBean.getEventType().intValue() == 1) {
                if (xVar != null) {
                    xVar.onSuccess(i2, 0, buttonBean);
                }
                com.papa.sim.statistic.p.l(activity).K1(Event.clickKnowGoRealPage, new Ext().setGameId(str));
                IntentUtil.getInstance().goShareWebActivity(activity, buttonBean.getJumpLink());
            } else if (xVar != null) {
                xVar.onSuccess(i2, 0, buttonBean);
            }
            realNameLoginDialog.dismiss();
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<RealNameCheckInfo>> call, Throwable th) {
            boolean unused = UtilsMy.f27404c = false;
            GameRoomActivity.x xVar = this.f27466c;
            if (xVar != null) {
                xVar.onFail(this.f27467d);
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<RealNameCheckInfo>> call, Response<ResponseModel<RealNameCheckInfo>> response) {
            GameRoomActivity.x xVar;
            boolean unused = UtilsMy.f27404c = false;
            if (response == null || response.body() == null || response.body().getCode() != 200) {
                return;
            }
            final RealNameCheckInfo data = response.body().getData();
            if (data == null || !data.isPopup()) {
                if (data != null && (xVar = this.f27466c) != null) {
                    xVar.onSuccess(this.f27467d, data.getEndDuration().intValue());
                    return;
                }
                GameRoomActivity.x xVar2 = this.f27466c;
                if (xVar2 != null) {
                    xVar2.onFail(this.f27467d);
                    return;
                }
                return;
            }
            if (data.isNoAge() && data.getStatus() == 0) {
                com.papa.sim.statistic.p.l(this.f27464a).K1(Event.antiAddtionWindowUp, new Ext().setGameId(this.f27465b));
            }
            if (data.getType() == 1) {
                com.papa.sim.statistic.p.l(this.f27464a).K1(Event.realNameDisplayWindow, new Ext().setGameId(this.f27465b));
                Activity activity = this.f27464a;
                GameRoomActivity.x xVar3 = this.f27466c;
                int i2 = this.f27467d;
                UtilsMy.W2(activity, data, xVar3, i2, this.f27468e.getUid() + "", this.f27469f.getType(), this.f27469f.getAction(), this.f27465b);
                return;
            }
            if (data.isNoAge()) {
                com.papa.sim.statistic.p.l(this.f27464a).K1(Event.nonageAstrictHint, new Ext().setGameId(this.f27465b));
            }
            try {
                if (data.isPopup() && data.getButtonCenter().getEventType().intValue() == 1) {
                    com.papa.sim.statistic.p.l(this.f27464a).K1(Event.realNameUpWindows, new Ext().setGameId(this.f27465b));
                }
                final Activity activity2 = this.f27464a;
                final String str = this.f27465b;
                final GameRoomActivity.x xVar4 = this.f27466c;
                final int i4 = this.f27467d;
                final AccountBean accountBean = this.f27468e;
                final LuckHistoryrequest luckHistoryrequest = this.f27469f;
                UtilsMy.X2(activity2, data, new RealNameLoginDialog.OnButnClickLienster() { // from class: com.join.mgps.Util.l2
                    @Override // com.papa91.view.RealNameLoginDialog.OnButnClickLienster
                    public final void clickAnydButn(RealNameLoginDialog realNameLoginDialog, int i5, ButtonBean buttonBean) {
                        UtilsMy.v.d(activity2, str, data, xVar4, i4, accountBean, luckHistoryrequest, realNameLoginDialog, i5, buttonBean);
                    }
                });
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements RealNameCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27470a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameRoomActivity.x f27471b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27472c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27473d;

        w(Context context, GameRoomActivity.x xVar, int i2, String str) {
            this.f27470a = context;
            this.f27471b = xVar;
            this.f27472c = i2;
            this.f27473d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(PopwindowBean popwindowBean, GameRoomActivity.x xVar, int i2, Context context, RealNameLoginDialog realNameLoginDialog, int i4, ButtonBean buttonBean) {
            realNameLoginDialog.dismiss();
            if (popwindowBean.isNoAge()) {
                if (xVar != null) {
                    xVar.onSuccess(i2, 0, buttonBean);
                }
            } else if (xVar != null) {
                xVar.onSuccess(i2, 0);
            }
            if (buttonBean.getEventType().intValue() == 4 && (context instanceof Activity)) {
                ((Activity) context).finish();
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onCancel(Dialog dialog, ButtonBean buttonBean) {
            dialog.dismiss();
            GameRoomActivity.x xVar = this.f27471b;
            if (xVar != null) {
                xVar.onSuccess(this.f27472c, 0, buttonBean);
            }
            com.papa.sim.statistic.p.l(this.f27470a).K1(Event.clickClosedRealNameWindow, new Ext().setGameId(this.f27473d));
            if (buttonBean.getEventType().intValue() == 4) {
                Context context = this.f27470a;
                if (context instanceof Activity) {
                    ((Activity) context).finish();
                }
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onEvent(String str, String str2) {
            Event event = Event.realNameDisplayWindow;
            if (str.equals(event.name())) {
                com.papa.sim.statistic.p.l(this.f27470a).K1(event, new Ext().setPosition(str2).setGameId(this.f27473d));
            }
            Event event2 = Event.realNameClickSubmit;
            if (str.equals(event2.name())) {
                com.papa.sim.statistic.p.l(this.f27470a).K1(event2, new Ext().setPosition(str2).setGameId(this.f27473d));
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onFail(int i2) {
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onSuccess(Dialog dialog, final PopwindowBean popwindowBean) {
            if (popwindowBean.isPopup()) {
                final Context context = this.f27470a;
                final GameRoomActivity.x xVar = this.f27471b;
                final int i2 = this.f27472c;
                UtilsMy.X2(context, popwindowBean, new RealNameLoginDialog.OnButnClickLienster() { // from class: com.join.mgps.Util.n2
                    @Override // com.papa91.view.RealNameLoginDialog.OnButnClickLienster
                    public final void clickAnydButn(RealNameLoginDialog realNameLoginDialog, int i4, ButtonBean buttonBean) {
                        UtilsMy.w.b(PopwindowBean.this, xVar, i2, context, realNameLoginDialog, i4, buttonBean);
                    }
                });
            } else {
                GameRoomActivity.x xVar2 = this.f27471b;
                if (xVar2 != null) {
                    xVar2.onSuccess(this.f27472c, 0);
                }
            }
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x implements r0.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27474a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27475b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27476c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27477d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ UserPrefs f27478e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f27479f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f27480g;

        x(Context context, String str, DownloadTask downloadTask, String str2, UserPrefs userPrefs, int i2, int i4) {
            this.f27474a = context;
            this.f27475b = str;
            this.f27476c = downloadTask;
            this.f27477d = str2;
            this.f27478e = userPrefs;
            this.f27479f = i2;
            this.f27480g = i4;
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdClose() {
            UtilsMy.R1(this.f27474a, this.f27475b, this.f27476c.getPackageName(), this.f27476c, this.f27477d);
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdShow() {
            UserPrefs userPrefs = this.f27478e;
            userPrefs.setAdGamesConfig(this.f27479f + "", this.f27480g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements ModPromptCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27481a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27482b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ModPromptNormalDialog f27483c;

        y(DownloadTask downloadTask, Context context, ModPromptNormalDialog modPromptNormalDialog) {
            this.f27481a = downloadTask;
            this.f27482b = context;
            this.f27483c = modPromptNormalDialog;
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback1() {
            UtilsMy.t3(this.f27482b, this.f27481a);
            this.f27483c.dismiss();
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback2() {
            if (APKUtils.I(this.f27481a)) {
                APKUtils.s(this.f27482b, this.f27481a);
            } else if (com.join.android.app.common.utils.j.w() instanceof ModGameIndexActivity_) {
                Intent intent = new Intent(f1.a.f65499r0);
                intent.putExtra("from", "modStdDialog");
                this.f27482b.sendBroadcast(intent);
            } else {
                ModInfoBean modInfoBean = this.f27481a.getModInfoBean();
                ModGameIndexActivity_.H2(this.f27482b).a("modStdDialog").b(this.f27481a.getCrc_link_type_val()).c(modInfoBean != null ? modInfoBean.getMain_game_id() : "").start();
            }
            this.f27483c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z implements r0.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27484a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f27485b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ UserPrefs f27486c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27487d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f27488e;

        z(Context context, DownloadTask downloadTask, UserPrefs userPrefs, int i2, int i4) {
            this.f27484a = context;
            this.f27485b = downloadTask;
            this.f27486c = userPrefs;
            this.f27487d = i2;
            this.f27488e = i4;
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdClose() {
            APKUtils.Y(this.f27484a, this.f27485b);
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdShow() {
            UserPrefs userPrefs = this.f27486c;
            userPrefs.setAdGamesConfig(this.f27487d + "", this.f27488e);
        }
    }

    public static void A(List<TipBean> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (TipBean tipBean : list) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
                    textView.setBackgroundDrawable(h2.a(context, tipBean.getColor() + ""));
                    linearLayout.addView(textView);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void A0(DownloadTask downloadTask) {
        try {
            if (downloadTask.getStatus() == 9 || downloadTask.getStatus() == 42 || downloadTask.getStatus() == 0) {
                File file = new File(downloadTask.getPath());
                String gameZipPath = downloadTask.getGameZipPath();
                if (gameZipPath != null && !gameZipPath.equals("")) {
                    if (!downloadTask.getFileType().equals(Dtype.android.name())) {
                        String fileType = downloadTask.getFileType();
                        Dtype dtype = Dtype.chajian;
                        if (!fileType.equals(dtype.name()) && !APKUtils.E(downloadTask)) {
                            if (!downloadTask.getFileType().equals(dtype.name())) {
                                delete(new File(gameZipPath).getParentFile());
                            }
                        }
                    }
                    delete(new File(gameZipPath));
                }
                if (file.exists()) {
                    delete(file);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static int A1(int i2) {
        switch (i2) {
            case 10:
                return ConstantIntEnum.FBA.value();
            case 11:
                return ConstantIntEnum.FC.value();
            case 12:
                return ConstantIntEnum.GBA.value();
            case 13:
                return ConstantIntEnum.SFC.value();
            case 14:
                return ConstantIntEnum.PSP.value();
            case 15:
                return ConstantIntEnum.FEATURED_ONLINE.value();
            case 16:
                return ConstantIntEnum.MD.value();
            case 17:
                return ConstantIntEnum.PS.value();
            case 18:
                return ConstantIntEnum.LARGE_SINGLE.value();
            case 19:
                return ConstantIntEnum.WSC.value();
            case 20:
                return ConstantIntEnum.NDS.value();
            case 21:
                return ConstantIntEnum.GBC.value();
            case 22:
                return ConstantIntEnum.N64.value();
            case 23:
                return ConstantIntEnum.ONS.value();
            case 24:
                return ConstantIntEnum.DC.value();
            case 25:
                return ConstantIntEnum.PS2.value();
            default:
                return i2;
        }
    }

    public static void A2(TextView textView, GamedetialModleFourBean gamedetialModleFourBean) {
        textView.setEnabled(true);
        int down_status = gamedetialModleFourBean.getDown_status();
        gamedetialModleFourBean.getPay_tag_info();
        String crc_sign_id = gamedetialModleFourBean.getCrc_sign_id();
        gamedetialModleFourBean.getDownload_source_switch_v2();
        int m02 = m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id());
        boolean z3 = l0(m02, crc_sign_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setBackgroundResource(R.drawable.detial_video_install_selecter);
        } else {
            textView.setText("立即获取");
            if (m02 > 0) {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, d2.l(m02)));
            } else {
                textView.setBackgroundResource(R.drawable.detial_video_install_selecter);
            }
        }
    }

    public static void A3(Context context, List<UserPurchaseInfo> list) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        n1.m0.p().delete(uid);
        if (list == null || list.size() <= 0) {
            return;
        }
        for (UserPurchaseInfo userPurchaseInfo : list) {
            userPurchaseInfo.setUid(uid);
            String spExpireTime = userPurchaseInfo.getSpExpireTime();
            if (spExpireTime != null && !spExpireTime.equals("")) {
                try {
                    userPurchaseInfo.setSpExpireTime(Base64Utils.encodeToString(spExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
            String cheatExpireTime = userPurchaseInfo.getCheatExpireTime();
            if (cheatExpireTime != null && !cheatExpireTime.equals("")) {
                try {
                    userPurchaseInfo.setCheatExpireTime(Base64Utils.encodeToString(cheatExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                }
            }
            n1.m0.p().k(userPurchaseInfo);
        }
    }

    public static void B(TipNew tipNew, LinearLayout linearLayout, Context context) {
        linearLayout.removeAllViews();
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) inflate.findViewById(R.id.pingfen);
        textView3.setBackgroundResource(R.drawable.stroke_1bb3ae_butn);
        textView3.setTextColor(Color.parseColor("#1BB3AE"));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                textView3.setText(tipNew.getModel().getName());
            } else {
                textView3.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        textView4.setVisibility(8);
        textView2.setVisibility(8);
        linearLayout.addView(inflate);
    }

    public static void B0(DownloadTask downloadTask) {
        C0(downloadTask, true);
    }

    public static String B1(int i2) {
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        String nickName = constantIntEnum.nickName();
        if (i2 != 242222) {
            switch (i2) {
                case 10:
                    return constantIntEnum.nickName();
                case 11:
                    return ConstantIntEnum.FC.nickName();
                case 12:
                    return ConstantIntEnum.GBA.nickName();
                case 13:
                    return ConstantIntEnum.SFC.nickName();
                case 14:
                    return ConstantIntEnum.PSP.nickName();
                case 15:
                    return ConstantIntEnum.FEATURED_ONLINE.nickName();
                case 16:
                    return ConstantIntEnum.MD.nickName();
                case 17:
                    return ConstantIntEnum.PS.nickName();
                case 18:
                    return ConstantIntEnum.LARGE_SINGLE.nickName();
                case 19:
                    return ConstantIntEnum.WSC.nickName();
                case 20:
                    return ConstantIntEnum.NDS.nickName();
                case 21:
                    return ConstantIntEnum.GBC.nickName();
                case 22:
                    return ConstantIntEnum.N64.nickName();
                case 23:
                    return ConstantIntEnum.ONS.nickName();
                case 24:
                    return ConstantIntEnum.DC.nickName();
                default:
                    return nickName;
            }
        }
        return ConstantIntEnum.PS2.nickName();
    }

    public static void B2(Button button, GameDiscoverBean gameDiscoverBean) {
        int down_status = gameDiscoverBean.getDown_status();
        PayTagInfo pay_tag_info = gameDiscoverBean.getPay_tag_info();
        String crc_sign_id = gameDiscoverBean.getCrc_sign_id();
        int m02 = m0(pay_tag_info, crc_sign_id);
        button.setEnabled(true);
        boolean z3 = l0(m02, crc_sign_id) > 0;
        if (down_status == 3 && !z3) {
            button.setText(button.getResources().getString(R.string.download_status_pre_download));
            button.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        } else if (down_status == 2 && !z3) {
            button.setText("即将开放");
            button.setEnabled(false);
            button.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
        } else if (down_status == 6 && !z3) {
            button.setText("预约");
            button.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        } else {
            button.setText(button.getResources().getString(R.string.download_status_download));
            if (m02 > 0) {
                button.setText(button.getResources().getString(R.string.pay_game_amount, d2.l(m02)));
            } else {
                button.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            }
        }
    }

    public static void B3(DownloadTask downloadTask) {
        DownloadTask f4;
        if (downloadTask == null || (f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        f4.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.l(downloadTask, 8));
    }

    public static void C(String str, int i2, String str2, TipNew tipNew, List<TipBean> list, LinearLayout linearLayout, Context context) {
        String str3;
        TipBean tipBean;
        TipBean tipBean2;
        String str4 = d2.h(str2) ? "1" : str2;
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        textView.setText(d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(Y1((long) (Double.parseDouble(str4) * 1048576.0d)));
        if (tipNew != null) {
            TipBean model = tipNew.getModel();
            if (model != null) {
                if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                    str3 = "安卓";
                    if (list != null) {
                        ArrayList<TipBean> arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                arrayList.add(tipBean4);
                            }
                        }
                        if (arrayList.size() == 2) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str3 = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str3 = str3 + "·" + tipBean2.getName();
                            }
                        } else if (arrayList.size() == 1) {
                            if (((TipBean) arrayList.get(0)) != null) {
                                str3 = "安卓·" + tipBean.getName();
                            }
                        } else {
                            int i4 = 0;
                            for (TipBean tipBean6 : arrayList) {
                                if (!"7".equals(tipBean6.getId())) {
                                    str3 = i4 == 0 ? tipBean6.getName() : str3 + "·" + tipBean6.getName();
                                    i4++;
                                    if (i4 == 2) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    textView2.setText(str3);
                } else {
                    if (list != null) {
                        Iterator<TipBean> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            TipBean next = it2.next();
                            if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                                tipBean3 = next;
                                break;
                            }
                        }
                    }
                    if (tipBean3 != null) {
                        textView2.setText(tipNew.getModel().getName() + "·" + tipBean3.getName());
                    } else {
                        textView2.setText(tipNew.getModel().getName());
                    }
                }
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        if (d2.i(str) && !"0".equals(str) && !"0.0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    public static void C0(DownloadTask downloadTask, boolean z3) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if ((!TextUtils.isEmpty(downloadTask.getRomType()) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()))) || Dtype.MOD.name().equals(downloadTask.getRomType()) || APKUtils.I(downloadTask)) {
                if (d2.i(downloadTask.getPackageName())) {
                    if (!APKUtils.E(downloadTask) && !APKUtils.I(downloadTask)) {
                        delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                    }
                    delete(new File(com.join.mgps.va.overmind.f.f52369d.M(downloadTask.getPackageName())));
                }
                if (d2.i(downloadTask.getPackageName())) {
                    if (!APKUtils.E(downloadTask) && !APKUtils.I(downloadTask)) {
                        delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                    }
                    delete(new File(com.join.mgps.va.overmind.f.f52369d.v(downloadTask.getPackageName())));
                }
                if (z3 && d2.i(downloadTask.getGameZipPath())) {
                    delete(new File(downloadTask.getGameZipPath()));
                }
                if (APKUtils.E(downloadTask) || APKUtils.I(downloadTask)) {
                    if (d2.i(downloadTask.getResource_path())) {
                        File file = new File(downloadTask.getResource_path());
                        if (file.exists()) {
                            if (file.getParentFile().getAbsolutePath().endsWith(downloadTask.getPackageName())) {
                                delete(file.getParentFile());
                                if (com.join.mgps.va.overmind.e.p().M(downloadTask.getPackageName())) {
                                    com.join.mgps.va.overmind.h.delete(file.getParentFile().getAbsolutePath().replace("com.join.android.app.mgsim.wufun", "com.join.android.app.mgsim.wufun.addon"));
                                }
                            }
                        } else {
                            delete(file);
                        }
                    }
                    if (z3 && d2.i(downloadTask.getPath())) {
                        delete(new File(downloadTask.getPath()));
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.php25.PDownload.d.a(downloadTask);
    }

    public static boolean C1(Context context) {
        String[] split;
        String l12 = l1();
        if (TextUtils.isEmpty(l12)) {
            return false;
        }
        if ((l12.toLowerCase().contains("qcom") || l12.toLowerCase().contains("qualcomm")) && (split = l12.split("\\s+")) != null && split.length > 0) {
            for (String str : split) {
                if (str.contains("SDM845") || str.startsWith("SM8")) {
                    return false;
                }
                if (str.startsWith("SM7")) {
                    if (str.length() <= 3) {
                        return false;
                    }
                    if (Character.isDigit(str.charAt(3)) && str.charAt(3) - '0' >= 3) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static void C2(TextView textView, LinearLayout linearLayout, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        linearLayout.setEnabled(true);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            linearLayout.setEnabled(false);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
        } else if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            textView.setText(textView.getResources().getString(R.string.download_status_download));
        } else {
            textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
    }

    public static void C3(DownloadTask downloadTask) {
        DownloadTask f4;
        if (downloadTask == null || d2.h(downloadTask.getCrc_link_type_val()) || (f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        downloadTask.setStatus(f4.getStatus());
        downloadTask.setSpeed(f4.getSpeed());
        downloadTask.setCurrentSize(f4.getCurrentSize());
        downloadTask.setProgress(f4.getProgress());
    }

    public static void D(List<TipBean> list, TipNew tipNew, LinearLayout linearLayout, Context context) {
        String str;
        TipBean tipBean;
        TipBean tipBean2;
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        ((TextView) inflate.findViewById(R.id.appsize)).setVisibility(8);
        if (tipNew != null) {
            TipBean model = tipNew.getModel();
            if (model != null) {
                if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                    str = "安卓";
                    if (list != null) {
                        ArrayList<TipBean> arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                arrayList.add(tipBean4);
                            }
                        }
                        int i2 = 0;
                        if (arrayList.size() == 2) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str = str + "·" + tipBean2.getName();
                            }
                        } else if (arrayList.size() == 1) {
                            if (((TipBean) arrayList.get(0)) != null) {
                                str = "安卓·" + tipBean.getName();
                            }
                        } else {
                            for (TipBean tipBean6 : arrayList) {
                                if (!"7".equals(tipBean6.getId())) {
                                    str = i2 == 0 ? tipBean6.getName() : str + "·" + tipBean6.getName();
                                    i2++;
                                    if (i2 == 2) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    textView2.setText(str);
                } else {
                    if (list != null) {
                        Iterator<TipBean> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            TipBean next = it2.next();
                            if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                                tipBean3 = next;
                                break;
                            }
                        }
                    }
                    if (tipBean3 != null) {
                        textView2.setText(tipNew.getModel().getName() + "·" + tipBean3.getName());
                    } else {
                        textView2.setText(tipNew.getModel().getName());
                    }
                }
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    public static void D0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        if (d2.i(prefDef_.lastLaunchModGameId().d()) && prefDef_.lastLaunchModGameId().d().equals(downloadTask.getCrc_link_type_val())) {
            prefDef_.lastLaunchModGameId().g("");
        }
        com.join.mgps.va.overmind.e.p().j0(downloadTask.getPackageName());
        B0(downloadTask);
        C3(downloadTask);
    }

    public static boolean D1(Context context, String str) {
        int i2;
        int i4;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean;
        if (context == null) {
            try {
                context = MApplication.n();
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        int intValue = prefDef_.downloadSpeedUpCountAD().d().intValue();
        int intValue2 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
        long longValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
        TextUtils.isEmpty(prefDef_.downloadSpeedUpGames().d());
        if (!com.join.mgps.Util.x.t(longValue)) {
            prefDef_.downloadSpeedUpCountCurrent().g(0);
            prefDef_.downloadSpeedUpCountCurrentAD().g(0);
            prefDef_.downloadSpeedUpGames().g("");
            intValue2 = 0;
        }
        if (intValue2 >= intValue) {
            return true;
        }
        DownloadTask B = g1.f.G().B(str);
        String d4 = prefDef_.downloadSpeedupCfg().d();
        if (!d2.i(d4) || (downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(d4, DownloadSpeedupCfgBean.class)) == null) {
            i2 = 0;
            i4 = 0;
        } else {
            i4 = downloadSpeedupCfgBean.getSwitch_state();
            i2 = downloadSpeedupCfgBean.getNet_status();
        }
        if (B != null) {
            if (B.getTips().contains("网游") && i4 == 1 && i2 == 1) {
                return true;
            }
        }
        return false;
    }

    public static void D2(Button button, int i2, PayTagInfo payTagInfo, String str) {
        button.setEnabled(true);
        boolean z3 = m0(payTagInfo, str) > 0;
        if (i2 == 3 && !z3) {
            button.setText(button.getResources().getString(R.string.download_status_pre_download));
        } else if (i2 == 2 && !z3) {
            button.setText("即将开放");
            button.setEnabled(false);
            button.setTextColor(-7763575);
            button.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (payTagInfo == null || payTagInfo.getAmount_check() <= 0) {
            button.setText(button.getResources().getString(R.string.download_status_download));
        } else {
            button.setText(button.getResources().getString(R.string.pay_game_amount, payTagInfo.getPayGameAmount()));
        }
    }

    public static void D3(List<DownloadTask> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask : list) {
            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
            if (f4 != null) {
                downloadTask.setSpeed(f4.getSpeed());
                downloadTask.setCurrentSize(f4.getCurrentSize());
                downloadTask.setProgress(f4.getProgress());
                downloadTask.setStatus(f4.getStatus());
            }
        }
    }

    public static void E(List<TipBean> list, String str, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (TipBean tipBean : list) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
                    textView.setBackgroundDrawable(h2.a(context, tipBean.getColor() + ""));
                    linearLayout.addView(textView);
                }
            }
            TextView textView2 = new TextView(context);
            textView2.setLayoutParams(layoutParams);
            textView2.setGravity(17);
            textView2.setText(str + "");
            textView2.setTextColor(Color.parseColor("#81dfce"));
            textView2.setPadding(0, 0, 0, 0);
            textView2.setSingleLine(true);
            textView2.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
            textView2.setBackgroundDrawable(h2.a(context, "#81dfce"));
            linearLayout.addView(textView2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void E0(Context context, String str, String str2) {
        try {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir("Download", str2);
            request.setTitle("文件下载");
            request.setDescription("正在下载");
            request.setNotificationVisibility(1);
            request.setMimeType("application/com.join.mgps.activity.mgmainactivity_");
            request.allowScanningByMediaScanner();
            request.setVisibleInDownloadsUi(true);
            context.getSharedPreferences("downloadplato", 0).edit().putLong("plato", ((DownloadManager) context.getSystemService("download")).enqueue(request)).commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean E1() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return "harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void E2(Context context, String str, SimpleDraweeView simpleDraweeView) {
        if (d2.h(str.trim()) || simpleDraweeView == null) {
            str = com.join.mgps.rpc.g.L + "/upload/images/headportrait/public/system_1.png";
        }
        MyImageLoader.t(simpleDraweeView, R.drawable.unloginstatus, str);
    }

    public static void E3(List<DownloadTask> list, DownloadTask downloadTask) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask2 : list) {
            if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                if (f4 != null) {
                    downloadTask2.setSpeed(f4.getSpeed());
                    downloadTask2.setCurrentSize(f4.getCurrentSize());
                    downloadTask2.setProgress(f4.getProgress());
                    downloadTask2.setStatus(f4.getStatus());
                    return;
                }
                return;
            }
        }
    }

    public static void F(String str, int i2, String str2, TipNew tipNew, LinearLayout linearLayout, Context context) {
        if (d2.h(str2)) {
            str2 = "1";
        }
        linearLayout.removeAllViews();
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        TextView textView4 = (TextView) inflate.findViewById(R.id.ad_text);
        textView4.setSingleLine();
        textView4.setVisibility(0);
        textView4.setVisibility(0);
        textView.setText(d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(Y1((long) (Double.parseDouble(str2) * 1048576.0d)));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                textView2.setText(tipNew.getModel().getName());
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        if (d2.i(str) && !"0".equals(str) && !"0.0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    public static void F0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> list, int i2, int i4) {
        if (downloadTask.getDown_status() == 6) {
            ((CommonService_.u1) CommonService_.d2(context).extra("onClickGamebeSpeakGameId", downloadTask.getCrc_link_type_val())).a();
            return;
        }
        PointSendUtile.sendPoint(context, downloadTask.getCrc_link_type_val());
        boolean z3 = true;
        if (downloadTask.getCrc_link_type_val().equals("846928650")) {
            z3 = S("2858865652", "752756546", context);
        } else if (downloadTask.getCrc_link_type_val().equals("752756546")) {
            z3 = S("846928650", "2943064551", context);
        } else if (downloadTask.getCrc_link_type_val().equals("802190896")) {
            z3 = S("633053817", "823069764", context);
        } else if (downloadTask.getCrc_link_type_val().equals("633053817")) {
            z3 = S("802190896", "1306459891", context);
        } else if (downloadTask.getCrc_link_type_val().equals("823069764")) {
            z3 = S("802190896", "1306459891", context);
        } else if (downloadTask.getCrc_link_type_val().equals("1306459891")) {
            z3 = S("633053817", "823069764", context);
        } else if (downloadTask.getCrc_link_type_val().equals("2943064551")) {
            z3 = S("2858865652", "752756546", context);
        } else if (downloadTask.getCrc_link_type_val().equals("2858865652")) {
            z3 = S("846928650", "2943064551", context);
        }
        if (z3) {
            Activity activity = ((context instanceof Activity) || MApplication.f9223q.getActivity() == null) ? context : MApplication.f9223q.getActivity();
            if (C1(context) && ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(activity, R.style.MyDialog);
                dVar.e(new i(context, downloadTask, list, i2, i4, activity, dVar));
                dVar.g(new j(dVar));
                dVar.h("你的手机CPU版本较低，运行游戏时可能会出现不流畅等情况，是否仍要下载？");
                dVar.show();
                return;
            }
            P0(context, downloadTask, list, i2, i4, activity);
        }
    }

    public static boolean F1(List<TipBean> list) {
        if (list != null && list.size() > 0) {
            for (TipBean tipBean : list) {
                if (TextUtils.equals(tipBean.getId(), "7")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void F2(Button button, DetailResultBean detailResultBean) {
        button.setEnabled(true);
        int down_status = detailResultBean.getDown_status();
        PayTagInfo pay_tag_info = detailResultBean.getPay_tag_info();
        String crc_sign_id = detailResultBean.getCrc_sign_id();
        int m02 = m0(pay_tag_info, crc_sign_id);
        boolean z3 = l0(m02, crc_sign_id) > 0;
        if (down_status == 3 && !z3) {
            button.setText(button.getResources().getString(R.string.download_status_pre_download));
            button.setBackgroundResource(R.drawable.fight_blue_butn);
            button.setTextSize(2, 12.0f);
        } else if (down_status == 2 && !z3) {
            button.setText("即将开放");
            button.setTextSize(2, 11.0f);
            button.setEnabled(false);
            button.setBackgroundResource(R.drawable.fight_grey_butn);
        } else if (down_status == 6 && !z3) {
            button.setText("预约");
            button.setBackgroundResource(R.drawable.fight_blue_butn);
        } else {
            button.setText(button.getResources().getString(R.string.download_status_download));
            button.setTextSize(2, 13.0f);
            if (m02 > 0) {
                button.setText(button.getResources().getString(R.string.pay_game_amount, d2.l(m02)));
            } else {
                button.setBackgroundResource(R.drawable.fight_blue_butn);
            }
        }
    }

    private static void F3(Context context, DownloadTask downloadTask, StartGameMeta startGameMeta) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            startGameMeta.setVipLevel(accountData.getVip_level());
            startGameMeta.setsVipLevel(accountData.getSvip_level());
            startGameMeta.setUserID(accountData.getUid() + "");
        }
        if (downloadTask.getLock_sp() == 0) {
            startGameMeta.setSp(0);
            return;
        }
        List<UserPurchaseInfo> o3 = n1.m0.p().o(AccountUtil_.getInstance_(context).getUid(), downloadTask.getCrc_link_type_val());
        if (o3 != null && o3.size() > 0) {
            UserPurchaseInfo userPurchaseInfo = o3.get(0);
            String isOpenSp = userPurchaseInfo.getIsOpenSp();
            String spExpireTime = userPurchaseInfo.getSpExpireTime();
            if (spExpireTime != null && !spExpireTime.equals("")) {
                try {
                    spExpireTime = new String(Base64Utils.decode(spExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
            if (isOpenSp != null && isOpenSp.equals("true")) {
                if (spExpireTime != null && Long.parseLong(spExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                    startGameMeta.setSp(2);
                } else {
                    startGameMeta.setSp(1);
                }
            } else {
                startGameMeta.setSp(1);
            }
            String isOpenCheat = userPurchaseInfo.getIsOpenCheat();
            String cheatExpireTime = userPurchaseInfo.getCheatExpireTime();
            if (cheatExpireTime != null && !cheatExpireTime.equals("")) {
                try {
                    cheatExpireTime = new String(Base64Utils.decode(cheatExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                }
            }
            if (isOpenCheat != null && isOpenSp.equals("true")) {
                if (cheatExpireTime != null && Long.parseLong(cheatExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                    startGameMeta.setCheat(2);
                    return;
                } else {
                    startGameMeta.setCheat(1);
                    return;
                }
            }
            startGameMeta.setCheat(1);
            return;
        }
        startGameMeta.setSp(downloadTask.getLock_sp());
        startGameMeta.setCheat(1);
    }

    public static void G(List<TipBean> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, linearLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14), 0);
            for (TipBean tipBean : list) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    int h4 = (int) (com.join.android.app.common.utils.j.n(context).h(context) * 5.0f);
                    textView.setPadding(h4, linearLayout.getResources().getDimensionPixelOffset(R.dimen.wdp1), h4, linearLayout.getResources().getDimensionPixelOffset(R.dimen.wdp1));
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.wdp18));
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(context.getResources().getDimensionPixelOffset(R.dimen.wdp4));
                    gradientDrawable.setStroke(context.getResources().getDimensionPixelOffset(R.dimen.wdp1), Color.parseColor(tipBean.getColor()));
                    gradientDrawable.setColor(Color.parseColor("#00000000"));
                    textView.setBackgroundDrawable(gradientDrawable);
                    textView.setOnClickListener(new f(context, tipBean));
                    linearLayout.addView(textView);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void G0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> list, int i2, int i4) {
        if (downloadTask.getDown_status() == 2) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        if (Build.VERSION.SDK_INT > 28 && !c0(context)) {
            downloadTask.setFromRecomDown(true);
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(context).flags(268435456)).start();
        }
        ArrayList<DownloadUrlBean> arrayList = new ArrayList<>();
        for (DownloadUrlBean downloadUrlBean : list) {
            arrayList.add(downloadUrlBean);
        }
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        boolean z3 = i4 == 1;
        if (B == null && !TextUtils.isEmpty(downloadTask.getDownload_source_switch_v2()) && "1".equals(downloadTask.getDownload_source_switch_v2()) && !(TextUtils.isEmpty(downloadTask.getDownload_source_url()) && TextUtils.isEmpty(downloadTask.getDownload_outside_url()))) {
            ((DownloadSnifferPromptDialog_.f) DownloadSnifferPromptDialog_.O0(context).c(downloadTask).d(downloadTask.getDownload_original_switch()).b(downloadTask.getDownload_source_url()).a(downloadTask.getDownload_outside_url()).flags(335544320)).start();
        } else if (i2 == 1 && B == null) {
            DownloadChoiceUrlDialog_.F0(context).b(arrayList).a(downloadTask).c(z3).start();
        } else if (B == null && !downloadTask.isUncheckSelfSupport() && downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getSelf_support() == null) {
            ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("downGameIdNotSelfSupport", downloadTask.getCrc_link_type_val())).extra("downloadTask", downloadTask)).a();
        } else {
            ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("getDownloadRecomedData", downloadTask.getCrc_link_type_val())).extra("downloadTask", downloadTask)).a();
            com.php25.PDownload.d.c(downloadTask, context);
            if (downloadTask.isMiniGame() && downloadTask.isSingleGame()) {
                ((MiniGameLoadingActivity_.c) MiniGameLoadingActivity_.J0(context).flags(268435456)).a(downloadTask.getCrc_link_type_val()).start();
            }
        }
    }

    public static boolean G1(List<Integer> list) {
        if (list != null && list.size() > 0) {
            for (Integer num : list) {
                if (num.intValue() == 7) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void G2(Context context, String str, SimpleDraweeView simpleDraweeView) {
        if (simpleDraweeView == null) {
            return;
        }
        Context context2 = simpleDraweeView.getContext();
        if (str == null) {
            MyImageLoader.d(simpleDraweeView, R.drawable.net_match_default_user_icon, MyImageLoader.E(context2, R.drawable.net_match_default_user_icon).toString());
        } else {
            MyImageLoader.t(simpleDraweeView, R.drawable.net_match_default_user_icon, str);
        }
    }

    public static void H(String str, int i2, String str2, TipNew tipNew, LinearLayout linearLayout, Context context) {
        if (d2.h(str2)) {
            str2 = "1";
        }
        linearLayout.removeAllViews();
        View inflate = LayoutInflater.from(context).inflate(R.layout.gamelist_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        TextView textView4 = (TextView) inflate.findViewById(R.id.ad_text);
        textView.setText(d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(Y1((long) (Double.parseDouble(str2) * 1048576.0d)));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                textView2.setText(tipNew.getModel().getName());
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        if (d2.i(str) && !"0".equals(str) && !"0.0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    public static void H0(Context context, AppBean appBean) {
        String game_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        if (appBean != null) {
            if (appBean.getMod_info() != null) {
                game_id = appBean.getMod_info().getMod_game_id();
                i2 = appBean.get_from();
                i4 = appBean.get_from_type();
            } else {
                game_id = appBean.getGame_id();
                i2 = appBean.get_from();
                i4 = appBean.get_from_type();
            }
            String str3 = game_id;
            int i5 = i2;
            int i6 = i4;
            appBean.getTag_info();
            String str4 = appBean.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
            if ("7".equals(appBean.getSp_tag_info().getModel().getId())) {
                str = str4;
                z3 = false;
            } else {
                z3 = true;
                str = "ANDROID_SINGLE";
            }
            if (z3) {
                z4 = z3;
                str2 = str;
            } else {
                boolean H1 = d2.h(appBean.getPlugin_num()) ? false : H1(Integer.parseInt(appBean.getPlugin_num()));
                if (H1) {
                    str2 = y1(appBean.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                } else {
                    str2 = str;
                }
                z4 = H1;
            }
            N0(context, str3, str2, i5, i6, appBean.getRecPosition(), appBean.getReMarks(), appBean.getNodeId(), appBean.getPosition_path(), z4);
        }
    }

    public static boolean H1(int i2) {
        if (ConstantIntEnum.FBA.value() == i2 || ConstantIntEnum.NDS.value() == i2 || ConstantIntEnum.PS2.value() == i2 || ConstantIntEnum.GBA.value() == i2 || ConstantIntEnum.PSP.value() == i2 || ConstantIntEnum.FC.value() == i2) {
            return true;
        }
        if (ConstantIntEnum.AVG.value() == i2 || ConstantIntEnum.FIGHT.value() == i2) {
            return false;
        }
        if (ConstantIntEnum.SFC.value() == i2) {
            return true;
        }
        if (ConstantIntEnum.WORLD.value() == i2 || ConstantIntEnum.NET.value() == i2 || ConstantIntEnum.MGAME.value() == i2 || ConstantIntEnum.DATA.value() == i2 || ConstantIntEnum.OBB.value() == i2) {
            return false;
        }
        if (ConstantIntEnum.MD.value() == i2) {
            return true;
        }
        if (ConstantIntEnum.GBA_ENHANCE.value() == i2) {
            return false;
        }
        return ConstantIntEnum.PS.value() == i2 || ConstantIntEnum.WSC.value() == i2 || ConstantIntEnum.GBC.value() == i2 || ConstantIntEnum.N64.value() == i2 || ConstantIntEnum.ONS.value() == i2 || ConstantIntEnum.DC.value() == i2;
    }

    public static void H2(Context context, String str, SimpleDraweeView simpleDraweeView) {
        if (simpleDraweeView == null) {
            return;
        }
        Context context2 = simpleDraweeView.getContext();
        if (str == null) {
            MyImageLoader.d(simpleDraweeView, R.drawable.net_match_default_user_icon, MyImageLoader.E(context2, R.drawable.net_match_default_user_icon).toString());
        } else {
            MyImageLoader.u(simpleDraweeView, R.drawable.net_match_default_user_icon, str, null);
        }
    }

    public static void I(String str, int i2, String str2, TipNew tipNew, List<TipBean> list, LinearLayout linearLayout, Context context, boolean z3) {
        String str3;
        TipBean tipBean;
        TipBean tipBean2;
        String str4 = d2.h(str2) ? "1" : str2;
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) inflate.findViewById(R.id.pingfen);
        TextView textView5 = (TextView) inflate.findViewById(R.id.ad_text);
        textView5.setSingleLine();
        if (z3) {
            textView5.setVisibility(0);
            textView5.setTextColor(Color.parseColor("#AAAAAA"));
            textView5.setBackgroundResource(R.drawable.stroke_red_tip_butn);
            textView5.setText("视频");
        }
        textView.setText(d2.c(i2));
        textView2.setText(Y1((long) (Double.parseDouble(str4) * 1048576.0d)));
        if (tipNew != null) {
            TipBean model = tipNew.getModel();
            if (model != null) {
                if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
                    Iterator<TipBean> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        TipBean next = it2.next();
                        if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                            tipBean3 = next;
                            break;
                        }
                    }
                    if (tipBean3 != null) {
                        textView3.setText(tipNew.getModel().getName() + "·" + tipBean3.getName());
                    } else {
                        textView3.setText(tipNew.getModel().getName());
                    }
                } else {
                    str3 = "安卓";
                    if (list != null) {
                        ArrayList<TipBean> arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                arrayList.add(tipBean4);
                            }
                        }
                        if (arrayList.size() == 2) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str3 = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str3 = str3 + "·" + tipBean2.getName();
                            }
                        } else if (arrayList.size() == 1) {
                            if (((TipBean) arrayList.get(0)) != null) {
                                str3 = "安卓·" + tipBean.getName();
                            }
                        } else {
                            int i4 = 0;
                            for (TipBean tipBean6 : arrayList) {
                                if (!"7".equals(tipBean6.getId())) {
                                    str3 = i4 == 0 ? tipBean6.getName() : str3 + "·" + tipBean6.getName();
                                    i4++;
                                    if (i4 == 2) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    textView3.setText(str3);
                }
            } else {
                textView3.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (d2.i(str) && !"0".equals(str) && !"0.0".equals(str)) {
            textView4.setText(str + "分");
            textView4.setVisibility(0);
        } else {
            textView4.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    public static void I0(Context context, AppBeanMain appBeanMain) {
        String game_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        AppBean game_info = appBeanMain.getGame_info();
        if (game_info != null) {
            if (game_info.getMod_info() != null) {
                game_id = game_info.getMod_info().getMod_game_id();
                i2 = game_info.get_from();
                i4 = game_info.get_from_type();
            } else {
                game_id = game_info.getGame_id();
                i2 = game_info.get_from();
                i4 = game_info.get_from_type();
            }
            String str3 = game_id;
            int i5 = i2;
            int i6 = i4;
            game_info.getTag_info();
            String str4 = game_info.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
            if ("7".equals(game_info.getSp_tag_info().getModel().getId())) {
                str = str4;
                z3 = false;
            } else {
                z3 = true;
                str = "ANDROID_SINGLE";
            }
            if (z3) {
                z4 = z3;
                str2 = str;
            } else {
                boolean H1 = d2.h(game_info.getPlugin_num()) ? false : H1(Integer.parseInt(game_info.getPlugin_num()));
                if (H1) {
                    str2 = y1(game_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                } else {
                    str2 = str;
                }
                z4 = H1;
            }
            N0(context, str3, str2, i5, i6, game_info.getRecPosition(), game_info.getReMarks(), game_info.getNodeId(), game_info.getPosition_path(), z4);
        }
    }

    public static boolean I1(DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask == null || downloadTask2 == null) {
            return false;
        }
        return downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val()) || downloadTask.getRef_crc_sign_id().equals(downloadTask2.getCrc_link_type_val());
    }

    public static void I2(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }

    public static void J(List<TipBean> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (TipBean tipBean : list) {
                TextView textView = new TextView(context);
                textView.setLayoutParams(layoutParams);
                textView.setGravity(17);
                textView.setText(tipBean.getName() + "");
                textView.setTextColor(-1);
                textView.setPadding(0, 0, 0, 0);
                textView.setSingleLine(true);
                textView.setTextSize(9.0f);
                textView.setBackgroundDrawable(h2.a(context, tipBean.getColor() + ""));
                linearLayout.addView(textView);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void J0(Context context, CollectionBeanSub collectionBeanSub) {
        String game_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        if (collectionBeanSub.getMod_info() != null) {
            game_id = collectionBeanSub.getMod_info().getMod_game_id();
            i2 = collectionBeanSub.get_from();
            i4 = collectionBeanSub.get_from_type();
        } else {
            game_id = collectionBeanSub.getGame_id();
            i2 = collectionBeanSub.get_from();
            i4 = collectionBeanSub.get_from_type();
        }
        String str3 = game_id;
        int i5 = i2;
        int i6 = i4;
        String str4 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if (collectionBeanSub.getSp_tag_info() == null || collectionBeanSub.getSp_tag_info().getModel() == null || !"7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
            z3 = true;
            str = "ANDROID_SINGLE";
        } else {
            str = str4;
            z3 = false;
        }
        if (z3) {
            z4 = z3;
            str2 = str;
        } else {
            boolean H1 = d2.h(collectionBeanSub.getPlugin_num()) ? false : H1(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (H1) {
                str2 = y1(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z4 = H1;
        }
        O0(context, str3, str2, i5, i6, collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), z4, collectionBeanSub.isFromRecomDown());
    }

    public static boolean J1(Context context, DownloadTask downloadTask, boolean z3) {
        List<Filepath> a4 = q1.a(context);
        if (a4 == null || a4.size() == 0) {
            if (z3) {
                i2.a(context).b("存储空间不足，请清理空间后再下载");
            }
            return false;
        }
        String g4 = com.join.mgps.pref.h.n(context).g();
        String path = downloadTask.getPath();
        StringBuilder sb = new StringBuilder();
        sb.append("filePath=");
        sb.append(a4);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("downPath=");
        sb2.append(g4);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("path=");
        sb3.append(path);
        if (!d2.h(path)) {
            for (Filepath filepath : a4) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("filepath.getPathRoot()=");
                sb4.append(filepath.getPathRoot());
                if (path.contains(filepath.getPathRoot())) {
                    try {
                        long available = filepath.getAvailable();
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("zip...available size is ");
                        sb5.append(available);
                        sb5.append(";least size is ");
                        sb5.append(com.join.mgps.Util.u.f27843b);
                        if (available <= com.join.mgps.Util.u.f27843b) {
                            if (z3) {
                                i2.a(context).b("存储空间不足，请清理空间后再下载");
                            }
                            return false;
                        }
                        continue;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
            return true;
        }
        for (Filepath filepath2 : a4) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("filepath.getPathHome()=");
            sb6.append(filepath2.getPathHome());
            if (g4.equals(filepath2.getPathHome())) {
                try {
                    long available2 = filepath2.getAvailable();
                    long size = downloadTask.getSize() * 2;
                    try {
                        size = Long.parseLong(downloadTask.getUnzip_size());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("downloading...available size is ");
                    sb7.append(available2);
                    sb7.append(";least size is ");
                    sb7.append(com.join.mgps.Util.u.f27843b);
                    if (available2 <= com.join.mgps.Util.u.f27843b) {
                        if (z3) {
                            i2.a(context).b("存储空间不足，请清理空间后再下载");
                        }
                        return false;
                    } else if (available2 < size) {
                        i2.a(context).b("存储空间不足，请清理空间后再下载");
                        return false;
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }
        return true;
    }

    public static void J2(TextView textView, DownloadTask downloadTask) {
        int down_status = downloadTask.getDown_status();
        downloadTask.getShowSize();
        int pay_game_amount = downloadTask.getPay_game_amount();
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        textView.setEnabled(true);
        boolean z3 = l0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setBackgroundResource(R.drawable.installbutn_big_normal);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.installbutn_big_grey);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setBackgroundResource(R.drawable.installbutn_big_normal);
        } else {
            textView.setText(textView.getResources().getString(R.string.download_status_download));
            if (pay_game_amount > 0) {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, d2.l(pay_game_amount)));
            } else {
                textView.setBackgroundResource(R.drawable.installbutn_big_normal);
            }
        }
    }

    public static void K(Context context) {
        int i2;
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        int i4 = 0;
        try {
            i2 = AccountUtil_.getInstance_(context).getAccountData().getVip_level();
            try {
                i4 = AccountUtil_.getInstance_(context).getAccountData().getSvip_level();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            i2 = 0;
        }
        intent.putExtra(BaseAppConfig.KEY_VIP_LEVEL, i2);
        intent.putExtra("svipLevel", i4);
        intent.putExtra("uid", AccountUtil_.getInstance_(context).getUid() + "");
        intent.putExtra("token", AccountUtil_.getInstance_(context).getToken());
        intent.putExtra("sp", x1(context));
        intent.putExtra("cheat", m1(context));
        intent.putExtra("tourist", AccountUtil_.getInstance_(context).isTourist());
        context.sendBroadcast(intent);
        com.join.mgps.va.overmind.e.e0(intent);
    }

    public static void K0(Context context, DetailResultBean detailResultBean) {
        String crc_sign_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        if (detailResultBean.getMod_info() != null) {
            crc_sign_id = detailResultBean.getMod_info().getMod_game_id();
            i2 = detailResultBean.get_from();
            i4 = detailResultBean.get_from_type();
        } else {
            crc_sign_id = detailResultBean.getCrc_sign_id();
            i2 = detailResultBean.get_from();
            i4 = detailResultBean.get_from_type();
        }
        String str3 = crc_sign_id;
        int i5 = i2;
        int i6 = i4;
        detailResultBean.getTag_info();
        String str4 = detailResultBean.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(detailResultBean.getSp_tag_info().getModel().getId())) {
            str = str4;
            z3 = false;
        } else {
            z3 = true;
            str = "ANDROID_SINGLE";
        }
        if (z3) {
            z4 = z3;
            str2 = str;
        } else {
            boolean H1 = d2.h(detailResultBean.getPlugin_num()) ? false : H1(Integer.parseInt(detailResultBean.getPlugin_num()));
            if (H1) {
                str2 = y1(detailResultBean.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z4 = H1;
        }
        N0(context, str3, str2, i5, i6, detailResultBean.getRecPosition(), detailResultBean.getReMarks(), detailResultBean.getNodeId(), detailResultBean.getPosition_path(), z4);
    }

    public static boolean K1(List<TipBean> list) {
        for (TipBean tipBean : list) {
            if (tipBean.getId() != null && tipBean.getId().equals("44")) {
                return true;
            }
        }
        return false;
    }

    public static void K2(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ModInfoBean modInfoBean = downloadTask.getModInfoBean();
        if (modInfoBean != null) {
            modInfoBean.setIncompatible(true);
            downloadTask.setMod_info(JsonMapper.toJsonString(modInfoBean));
            g1.f.G().m(downloadTask);
        }
        SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
        if (singleGameModInfoBean != null) {
            singleGameModInfoBean.setIncompatible(true);
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
            g1.f.G().m(downloadTask);
        }
    }

    public static void L(Context context) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            intent.putExtra("uid", accountData.getUid() + "");
            intent.putExtra("token", accountData.getToken());
            intent.putExtra(BaseAppConfig.KEY_VIP_LEVEL, accountData.getVip_level());
            intent.putExtra(BaseAppConfig.KEY_SVIP_LEVEL, accountData.getSvip_level());
            intent.putExtra("vip_expire_time", accountData.getVip_exp_time());
        }
        intent.putExtra("sp", x1(context));
        intent.putExtra("cheat", m1(context));
        context.sendBroadcast(intent);
    }

    public static void L0(Context context, GameDiscoverBean gameDiscoverBean) {
        String crc_sign_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        if (gameDiscoverBean.getMod_info() != null) {
            crc_sign_id = gameDiscoverBean.getMod_info().getMod_game_id();
            i2 = gameDiscoverBean.get_from();
            i4 = gameDiscoverBean.get_from_type();
        } else {
            crc_sign_id = gameDiscoverBean.getCrc_sign_id();
            i2 = gameDiscoverBean.get_from();
            i4 = gameDiscoverBean.get_from_type();
        }
        String str3 = crc_sign_id;
        int i5 = i2;
        int i6 = i4;
        gameDiscoverBean.getTag_info();
        String str4 = gameDiscoverBean.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(gameDiscoverBean.getSp_tag_info().getModel().getId())) {
            str = str4;
            z3 = false;
        } else {
            z3 = true;
            str = "ANDROID_SINGLE";
        }
        if (z3) {
            z4 = z3;
            str2 = str;
        } else {
            boolean H1 = d2.h(gameDiscoverBean.getPlugin_num()) ? false : H1(Integer.parseInt(gameDiscoverBean.getPlugin_num()));
            if (H1) {
                str2 = y1(gameDiscoverBean.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z4 = H1;
        }
        N0(context, str3, str2, i5, i6, gameDiscoverBean.getRecPosition(), gameDiscoverBean.getReMarks(), gameDiscoverBean.getNodeId(), gameDiscoverBean.getPosition_path(), z4);
    }

    public static boolean L1(Context context) {
        long I = com.join.mgps.pref.h.n(context).I();
        DownloadCfg down_load_unrestricted_speed = MApplication.I.getDown_load_unrestricted_speed();
        if (I == 0) {
            return true;
        }
        return down_load_unrestricted_speed != null && d2.i(down_load_unrestricted_speed.getCfg_values_express()) && System.currentTimeMillis() - I < ((long) (Integer.parseInt(down_load_unrestricted_speed.getCfg_values_express()) * 86400000));
    }

    public static boolean L2(Context context, TextView textView, int i2, int i4) {
        if (textView == null) {
            return false;
        }
        if (i4 > 0) {
            textView.setTextColor(context.getResources().getColor(R.color.vip_svip_color));
        } else if (i2 > 0) {
            textView.setTextColor(context.getResources().getColor(R.color.vip_color));
        } else {
            textView.setTextColor(Color.parseColor("#3b3b3b"));
            return false;
        }
        return true;
    }

    public static EMUApkTable M(Context context, DownloadTask downloadTask, boolean z3) {
        com.papa.sim.statistic.p.f55578i = downloadTask.getCrc_link_type_val();
        EMUApkTable y12 = y1(downloadTask.getRomType());
        if (y12 != null) {
            return b0(context, y12, z3);
        }
        if (y12 != null) {
            com.papa.sim.statistic.p.f55577h = y12.getVer() + "_" + y12.getTag_id();
        }
        return y12;
    }

    public static void M0(Context context, GamedetialModleFourBean gamedetialModleFourBean) {
        String game_id;
        int i2;
        int i4;
        boolean z3;
        String str;
        boolean z4;
        String str2;
        if (gamedetialModleFourBean.getMod_info() != null) {
            game_id = gamedetialModleFourBean.getMod_info().getMod_game_id();
            i2 = gamedetialModleFourBean.get_from();
            i4 = gamedetialModleFourBean.get_from_type();
        } else {
            game_id = gamedetialModleFourBean.getGame_id();
            i2 = gamedetialModleFourBean.get_from();
            i4 = gamedetialModleFourBean.get_from_type();
        }
        String str3 = game_id;
        int i5 = i2;
        int i6 = i4;
        gamedetialModleFourBean.getTag_info();
        String str4 = gamedetialModleFourBean.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(gamedetialModleFourBean.getSp_tag_info().getModel().getId())) {
            str = str4;
            z3 = false;
        } else {
            z3 = true;
            str = "ANDROID_SINGLE";
        }
        if (z3) {
            z4 = z3;
            str2 = str;
        } else {
            boolean H1 = d2.h(gamedetialModleFourBean.getPlugin_num()) ? false : H1(Integer.parseInt(gamedetialModleFourBean.getPlugin_num()));
            if (H1) {
                str2 = y1(gamedetialModleFourBean.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z4 = H1;
        }
        N0(context, str3, str2, i5, i6, gamedetialModleFourBean.getRecPosition(), gamedetialModleFourBean.getReMarks(), gamedetialModleFourBean.getNodeId(), gamedetialModleFourBean.getPosition_path(), z4);
    }

    private static void M1(Context context, StartGameMeta startGameMeta) {
        N1(context, startGameMeta, 0);
    }

    public static boolean M2(Context context, TextView textView, int i2, int i4, int i5) {
        if (textView == null) {
            return false;
        }
        if (i4 > 0) {
            textView.setTextColor(context.getResources().getColor(R.color.vip_svip_color));
        } else if (i2 > 0) {
            textView.setTextColor(context.getResources().getColor(R.color.vip_color));
        } else {
            textView.setTextColor(context.getResources().getColor(i5));
            return false;
        }
        return true;
    }

    public static EMUApkTable N(Context context, DownloadTask downloadTask) {
        return O(context, downloadTask, false);
    }

    public static void N0(Context context, String str, String str2, int i2, int i4, String str3, String str4, String str5, StatFactory.VolcanoOther volcanoOther, boolean z3) {
        O0(context, str, str2, i2, i4, str3, str4, str5, volcanoOther, z3, false);
    }

    private static void N1(Context context, StartGameMeta startGameMeta, int i2) {
        if (i2 == 1) {
            x1.g(context).b(context, startGameMeta);
        } else {
            x1.g(context).a(context, startGameMeta);
        }
    }

    public static boolean N2(Context context, TextView textView, int i2, int i4) {
        if (textView == null) {
            return false;
        }
        if (i4 > 0) {
            textView.setTextColor(Color.parseColor("#ffdc39"));
        } else if (i2 > 0) {
            textView.setTextColor(Color.parseColor("#fd5743"));
        } else {
            textView.setTextColor(Color.parseColor("#8a8a8a"));
            return false;
        }
        return true;
    }

    public static EMUApkTable O(Context context, DownloadTask downloadTask, boolean z3) {
        com.papa.sim.statistic.p.f55578i = downloadTask.getCrc_link_type_val();
        EMUApkTable y12 = y1(downloadTask.getRomType());
        if (y12 != null) {
            return Z(context, y12, z3);
        }
        if (y12 != null) {
            com.papa.sim.statistic.p.f55577h = y12.getVer() + "_" + y12.getTag_id();
        }
        return y12;
    }

    public static void O0(Context context, String str, String str2, int i2, int i4, String str3, String str4, String str5, StatFactory.VolcanoOther volcanoOther, boolean z3, boolean z4) {
        try {
            String d4 = new PrefDef_(context).androidIdNullsKey().d();
            if (d2.i(d4)) {
                List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                if (d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z) && z3) {
                    if (IntentUtil.getInstance().goLogin(context)) {
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
        String json = volcanoOther != null ? JsonMapper.getInstance().toJson(volcanoOther) : "";
        boolean booleanValue = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (z3 && booleanValue) {
            p0(context, 2, str, str2, new p(context, str, i2, i4, str3, str4, str5, json, z4));
        } else {
            ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("gameDownloadDetail", str)).extra(DownloadMethodPromptDialog_.F, i2)).extra(DownloadMethodPromptDialog_.G, i4)).extra("recPosition", str3)).extra("remarks", str4)).extra("nodeId", str5)).extra("volcanoOther", json)).extra(DownloadMethodPromptDialog_.C, z4)).a();
        }
    }

    public static void O1(Context context, String str) {
        try {
            P1(context, str);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void O2(Context context) {
    }

    public static EMUApkTable P(Context context, DownloadTask downloadTask) {
        com.papa.sim.statistic.p.f55578i = downloadTask.getCrc_link_type_val();
        EMUApkTable n4 = n1.o.o().n(downloadTask.getRomType());
        if (n4 != null) {
            return Y(context, n4);
        }
        if (n4 != null) {
            com.papa.sim.statistic.p.f55577h = n4.getVer() + "_" + n4.getTag_id();
        }
        return n4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> list, int i2, int i4, Context context2) {
        int i5;
        if (P2(downloadTask, context)) {
            return;
        }
        if (downloadTask.getMax_an_compatible_ver() > 0 && (((i5 = Build.VERSION.SDK_INT) < downloadTask.getMin_an_compatible_ver() || i5 > downloadTask.getMax_an_compatible_ver()) && d2.h(downloadTask.getMod_info()))) {
            com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(context2, R.style.MyDialog);
            dVar.e(new l(context, downloadTask, list, i2, i4, dVar));
            dVar.g(new m(dVar));
            dVar.h("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
            dVar.show();
        } else if (U0(context, downloadTask)) {
        } else {
            if (downloadTask.getDown_status() == 5) {
                S0(context, downloadTask);
            } else {
                G0(context, downloadTask, list, i2, i4);
            }
        }
    }

    public static void P1(Context context, String str) {
        PrefDef_ prefDef_;
        int intValue;
        int intValue2;
        String str2;
        try {
            prefDef_ = new PrefDef_(context);
            prefDef_.downloadSpeedUpCount().d().intValue();
            prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long longValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            intValue = prefDef_.downloadSpeedUpCountAD().d().intValue();
            intValue2 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
            String d4 = prefDef_.downloadSpeedUpGames().d();
            str2 = "";
            if (TextUtils.isEmpty(d4)) {
                d4 = "";
            }
            if (com.join.mgps.Util.x.t(longValue)) {
                str2 = d4;
            } else {
                prefDef_.downloadSpeedUpCountCurrentAD().g(0);
                prefDef_.downloadSpeedUpGames().g("");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (intValue2 >= intValue) {
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.k(str));
            return;
        }
        prefDef_.downloadSpeedUpCountCurrentAD().g(Integer.valueOf(intValue2 + 1));
        prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
        if (!str2.contains(str)) {
            str2 = str2 + str + ",";
        }
        prefDef_.downloadSpeedUpGames().g(str2);
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.k(str));
    }

    public static boolean P2(DownloadTask downloadTask, Context context) {
        if (!(context instanceof Activity) && MApplication.f9223q.getActivity() != null) {
            context = MApplication.f9223q.getActivity();
        }
        if (Build.VERSION.SDK_INT >= 28 || ConstantIntEnum.PS2.value() != Integer.parseInt(downloadTask.getPlugin_num())) {
            return false;
        }
        com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(context, (int) R.style.MyDialog, true);
        dVar.g(new q(dVar));
        dVar.e(new r());
        dVar.h("该游戏在安卓9系统版本以下无法启动，请更换设备启动游戏");
        dVar.show();
        return true;
    }

    public static boolean Q(List<TipBean> list) {
        if (list == null) {
            return false;
        }
        for (TipBean tipBean : list) {
            if ((ConstantIntEnum.GAMEOL.value() + "").equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean Q0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null || downloadTask.isUncheckSelfSupport() || downloadTask.getSp_tag_info() == null || !((g1.f.G().B(downloadTask.getCrc_link_type_val()) == null || TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.apk.name())) && downloadTask.getSp_tag_info().getSelf_support() == null)) {
            return false;
        }
        ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("downGameIdNotSelfSupport", downloadTask.getCrc_link_type_val())).extra("downloadTask", downloadTask)).a();
        return true;
    }

    public static String Q1(double d4) {
        return new DecimalFormat("#0.00").format(d4);
    }

    private static void Q2(DownloadTask downloadTask, String str, Context context, EMUApkTable eMUApkTable, UpdateIntentDataBean updateIntentDataBean) {
        ((GprsNoticeDialogAlphActivity_.c) GprsNoticeDialogAlphActivity_.G0(context).b(downloadTask).flags(268435456)).d(str).c(true).e(updateIntentDataBean).a(eMUApkTable).start();
    }

    public static String R(String str, String str2, double d4) {
        d4 = (d4 < 0.0d || d4 > 1.0d) ? 0.5d : 0.5d;
        if (str.contains("#") && str2.contains("#") && str.length() == str2.length() && str2.length() == 7) {
            String replace = str.replace("#", "");
            String replace2 = str2.replace("#", "");
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("#");
            for (int i2 = 0; i2 < replace.length(); i2++) {
                StringBuilder sb = new StringBuilder();
                double V = V(String.valueOf(replace.charAt(i2)));
                Double.isNaN(V);
                double V2 = V(String.valueOf(replace2.charAt(i2)));
                Double.isNaN(V2);
                sb.append((int) ((V * d4) + (V2 * (1.0d - d4))));
                sb.append("");
                stringBuffer.append(W(sb.toString()));
            }
            return stringBuffer.toString();
        }
        return "";
    }

    public static void R0(Context context, DownloadTask downloadTask) {
        F0(context, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R1(Context context, String str, String str2, DownloadTask downloadTask, String str3) {
        int i2;
        if (d2.i(downloadTask.getMod_info())) {
            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
            if (modInfoBean != null) {
                APKUtils.T(context, modInfoBean, str3);
            }
        } else {
            boolean z3 = false;
            for (TipBean tipBean : downloadTask.getTipBeans()) {
                if ("23".equals(tipBean.getId())) {
                    z3 = true;
                }
            }
            boolean booleanValue = new PrefDef_(context).launch_game_switch().d().booleanValue();
            if (z3 && booleanValue) {
                p0(context, 1, downloadTask.getCrc_link_type_val(), "ANDROID_SINGLE", new a(context, downloadTask));
            } else {
                com.join.android.app.common.utils.a.g0(context);
                APKUtils.X(context, downloadTask.getPackageName());
            }
        }
        if (d2.h(downloadTask.getMod_info())) {
            if (APKUtils.E(downloadTask)) {
                i2 = 1;
            } else {
                i2 = APKUtils.I(downloadTask) ? 2 : 0;
            }
            com.papa.sim.statistic.p.l(context).d1(str, AccountUtil_.getInstance_(context).getUid(), i2, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
        }
        y3(context, str);
    }

    public static void R2(Context context, DownloadTask downloadTask, int i2) {
        PendingIntent broadcast;
        if (Dtype.chajian.name().equals(downloadTask.getRomType())) {
            return;
        }
        MApplication mApplication = MApplication.f9223q;
        NotificationManager notificationManager = (NotificationManager) mApplication.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("channel_1", "游戏下载完成通知", 4));
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(mApplication.getResources(), R.drawable.icon);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(mApplication, "channel_1");
        if (i2 != 2) {
            if (i2 == 5) {
                if (d2.i(downloadTask.getMod_info())) {
                    Intent intent = new Intent(f1.a.f65495p0, null, mApplication, NotifcationReceiver.class);
                    ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("gameId", modInfoBean.getMod_game_id());
                    bundle.putString(ModGameIndexActivity_.f33820e1, modInfoBean.getMain_game_id());
                    bundle.putString("from", downloadTask.get_from() + "");
                    intent.putExtras(bundle);
                    intent.putExtra(NotifcationReceiver.f51461a, downloadTask.getCrc_link_type_val());
                    intent.putExtra(NotifcationReceiver.f51462b, 1);
                    broadcast = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent, 134217728);
                } else {
                    Intent intent2 = new Intent(f1.a.f65497q0, null, mApplication, NotifcationReceiver.class);
                    intent2.putExtra(NotifcationReceiver.f51461a, downloadTask.getCrc_link_type_val());
                    intent2.putExtra(NotifcationReceiver.f51462b, 1);
                    broadcast = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent2, 134217728);
                }
                NotificationCompat.Builder smallIcon = builder.setSmallIcon(R.drawable.icon);
                NotificationCompat.Builder autoCancel = smallIcon.setContentTitle(downloadTask.getShowName() + "下载完成").setLargeIcon(decodeResource).setContentIntent(broadcast).setAutoCancel(true);
                autoCancel.setContentText(downloadTask.getShowName() + "下载完成，快来玩耍吧").setOnlyAlertOnce(true).setChannelId("channel_1").setPriority(4);
                notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
                return;
            } else if (i2 == 11) {
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                    Intent intent3 = new Intent(f1.a.f65497q0, null, mApplication, NotifcationReceiver.class);
                    intent3.putExtra(NotifcationReceiver.f51461a, downloadTask.getCrc_link_type_val());
                    intent3.putExtra(NotifcationReceiver.f51462b, 1);
                    PendingIntent broadcast2 = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent3, 134217728);
                    NotificationCompat.Builder smallIcon2 = builder.setSmallIcon(R.drawable.icon);
                    NotificationCompat.Builder priority = smallIcon2.setContentTitle(downloadTask.getShowName() + "下载完成").setLargeIcon(decodeResource).setAutoCancel(true).setContentIntent(broadcast2).setChannelId("channel_1").setPriority(4);
                    priority.setContentText(downloadTask.getShowName() + "下载完成，点击安装");
                    notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
                }
                q0.c(mApplication);
                return;
            } else if (i2 == 7) {
                notificationManager.cancel(downloadTask.getCrc_link_type_val().hashCode());
                return;
            } else if (i2 != 8) {
                return;
            }
        }
        if (downloadTask.isHasDeleteNotify()) {
            return;
        }
        Intent intent4 = new Intent(f1.a.f65497q0, null, mApplication, NotifcationReceiver.class);
        intent4.putExtra(NotifcationReceiver.f51461a, downloadTask.getCrc_link_type_val());
        intent4.putExtra(NotifcationReceiver.f51462b, 0);
        PendingIntent broadcast3 = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent4, 134217728);
        NotificationCompat.Builder smallIcon3 = builder.setSmallIcon(R.drawable.icon);
        smallIcon3.setContentTitle("正在下载" + downloadTask.getShowName() + " " + downloadTask.getProgress() + "%").setLargeIcon(decodeResource).setContentIntent(broadcast3).setAutoCancel(true).setProgress(100, (int) downloadTask.getProgress(), false).setOnlyAlertOnce(true).setChannelId("channel_1").setPriority(4);
        Intent intent5 = new Intent(f1.a.f65493o0, null, mApplication, NotifcationReceiver.class);
        intent5.putExtra(NotifcationReceiver.f51461a, downloadTask.getCrc_link_type_val());
        builder.setDeleteIntent(PendingIntent.getBroadcast(mApplication, 0, intent5, 134217728));
        notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
    }

    private static boolean S(String str, String str2, Context context) {
        DownloadTask B = g1.f.G().B(str);
        DownloadTask B2 = g1.f.G().B(str2);
        if (B == null && B2 == null) {
            return true;
        }
        if (!(context instanceof Activity) && MApplication.f9223q.getActivity() != null) {
            context = MApplication.f9223q.getActivity();
        }
        i2.a(context).b("暂时不能下载此游戏");
        return false;
    }

    public static void S0(Context context, DownloadTask downloadTask) {
        ((ChociceDownActivity_.j) ChociceDownActivity_.O0(context).a(downloadTask).flags(268435456)).start();
    }

    public static String S1(String str) {
        return "http://ctimg.mg3721.com/upload/images/headportrait/public/" + str + ".png";
    }

    public static void S2(Context context, String str, int i2, int i4) {
        new g1(context, 2);
        Intent intent = new Intent(context, MyGameManagerActivity_.class);
        intent.setFlags(335544320);
        PendingIntent activity = PendingIntent.getActivity(context, (int) SystemClock.uptimeMillis(), intent, 134217728);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("channel_1", "游戏下载通知", 4));
        }
        if (i4 != 9) {
            if (i4 == 11) {
                if (i2 > 1) {
                    Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
                    NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon);
                    notificationManager.notify(1, smallIcon.setContentTitle("你有" + str + "等" + i2 + "款游戏需安装").setContentIntent(activity).setAutoCancel(true).setChannelId("channel_1").setPriority(4).setLargeIcon(decodeResource).build());
                } else {
                    Bitmap decodeResource2 = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
                    NotificationCompat.Builder smallIcon2 = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon);
                    notificationManager.notify(1, smallIcon2.setContentTitle("你有" + str + "需安装").setContentIntent(activity).setAutoCancel(true).setPriority(4).setChannelId("channel_1").setLargeIcon(decodeResource2).build());
                }
            }
        } else if (i2 > 1) {
            Bitmap decodeResource3 = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
            NotificationCompat.Builder smallIcon3 = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon);
            notificationManager.notify(1, smallIcon3.setContentTitle("你有" + str + "等" + i2 + "款游戏需更新").setContentIntent(activity).setAutoCancel(true).setChannelId("channel_1").setPriority(4).setLargeIcon(decodeResource3).build());
        } else {
            Bitmap decodeResource4 = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
            NotificationCompat.Builder smallIcon4 = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon);
            notificationManager.notify(1, smallIcon4.setContentTitle("你有" + str + "需更新").setChannelId("channel_1").setContentIntent(activity).setAutoCancel(true).setPriority(4).setLargeIcon(decodeResource4).build());
        }
        q0.c(context);
    }

    public static boolean T(Context context, String str) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int intValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int intValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long longValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            String d4 = prefDef_.downloadSpeedUpGames().d();
            String str2 = "";
            if (TextUtils.isEmpty(d4)) {
                d4 = "";
            }
            if (com.join.mgps.Util.x.t(longValue)) {
                str2 = d4;
            } else {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                intValue2 = 0;
            }
            if (intValue2 < intValue && !str2.contains(str)) {
                if (g1.f.G().B(str) == null) {
                    return true;
                }
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return true;
        }
    }

    public static boolean T0(Context context, DownloadTask downloadTask) {
        return false;
    }

    private static int T1(List<TipBean> list) {
        for (TipBean tipBean : list) {
            if ("19".equals(tipBean.getId())) {
                return 19;
            }
        }
        return 0;
    }

    public static void T2(Context context, DownloadTask downloadTask) {
        try {
            ((DownloadSpeedOptionDialog_.e) DownloadSpeedOptionDialog_.K0(context).a(downloadTask).flags(805306368)).start();
            PrefDef_ prefDef_ = new PrefDef_(context);
            int intValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int intValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            if (!com.join.mgps.Util.x.t(prefDef_.downloadSpeedUpLastTime().d().longValue())) {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                intValue2 = 0;
            }
            if (intValue2 >= intValue) {
                return;
            }
            prefDef_.downloadSpeedUpCountCurrent().g(Integer.valueOf(intValue2 + 1));
            prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean U(Context context, String str) {
        int i2;
        int i4;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean;
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (AccountUtil_.getInstance_(context).getAccountData().getVip_level() > 0) {
            return false;
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        int intValue = prefDef_.downloadSpeedUpCount().d().intValue();
        int intValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
        int intValue3 = prefDef_.downloadSpeedUpCountAD().d().intValue();
        int intValue4 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
        long longValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
        TextUtils.isEmpty(prefDef_.downloadSpeedUpGames().d());
        if (!com.join.mgps.Util.x.t(longValue)) {
            prefDef_.downloadSpeedUpCountCurrent().g(0);
            prefDef_.downloadSpeedUpCountCurrentAD().g(0);
            prefDef_.downloadSpeedUpGames().g("");
            intValue2 = 0;
        }
        if (intValue2 < intValue && intValue4 < intValue3) {
            String d4 = prefDef_.downloadSpeedupCfg().d();
            if (!d2.i(d4) || (downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(d4, DownloadSpeedupCfgBean.class)) == null) {
                i2 = 0;
                i4 = 0;
            } else {
                i4 = downloadSpeedupCfgBean.getSwitch_state();
                i2 = downloadSpeedupCfgBean.getNet_status();
            }
            DownloadTask B = g1.f.G().B(str);
            if (B != null) {
                if (!B.getTips().contains("网游") || i4 != 1 || i2 != 1) {
                }
            }
            return true;
        }
        return false;
    }

    public static boolean U0(Context context, DownloadTask downloadTask) {
        if (Build.VERSION.SDK_INT > 28 && !c0(context)) {
            if (downloadTask != null) {
                downloadTask.setFromRecomDown(true);
            }
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(context).flags(268435456)).start();
        }
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getDownload_source_switch_v2()) || !"1".equals(downloadTask.getDownload_source_switch_v2()) || (TextUtils.isEmpty(downloadTask.getDownload_source_url()) && TextUtils.isEmpty(downloadTask.getDownload_outside_url()))) {
            return (downloadTask == null || downloadTask.getDown_status() == 5 || !Q0(context, downloadTask)) ? false : true;
        }
        ((HavenDownActivity_.i) HavenDownActivity_.O0(context).a(downloadTask).flags(268435456)).start();
        return true;
    }

    public static void U1(Context context, String str, CommonGameInfoBean commonGameInfoBean) {
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(str);
        if (commonGameInfoBean != null) {
            downloadGameArgsBean.setFrom(commonGameInfoBean.get_from());
            downloadGameArgsBean.setFromType(commonGameInfoBean.get_from_type());
            downloadGameArgsBean.setRemarks(commonGameInfoBean.getReMarks());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getRecPosition());
            downloadGameArgsBean.setNodeId(commonGameInfoBean.getNodeId());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getVolcanoOtherJsonStr());
            downloadGameArgsBean.setFromRecommend(commonGameInfoBean.isFromRecomDown());
            downloadGameArgsBean.setExt(commonGameInfoBean.getExt());
        }
        ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("requestAndChoiceUpdateGameById", str)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    public static void U2(Context context, DownloadTask downloadTask) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int intValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int intValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            int intValue3 = prefDef_.downloadSpeedUpCountAD().d().intValue();
            int intValue4 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
            if (!com.join.mgps.Util.x.t(prefDef_.downloadSpeedUpLastTime().d().longValue())) {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpCountCurrentAD().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                intValue2 = 0;
            }
            if (intValue2 < intValue && intValue4 < intValue3) {
                prefDef_.downloadSpeedUpCountCurrent().g(Integer.valueOf(intValue2 + 1));
                prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static int V(String str) {
        return Integer.valueOf(new BigInteger(str, 16).toString()).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0243  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void V0(com.join.mgps.db.tables.EMUApkTable r17, android.content.Context r18) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.V0(com.join.mgps.db.tables.EMUApkTable, android.content.Context):void");
    }

    public static void V1(Context context, CommonGameInfoBean commonGameInfoBean) {
        String str;
        String str2;
        boolean z3;
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        String str3 = "";
        if (commonGameInfoBean != null) {
            GInfoBean g_info = commonGameInfoBean.getG_info();
            if (g_info != null) {
                if (g_info.isModGameVm()) {
                    str3 = g_info.getMod_id();
                    str2 = "VIRTUAL_SINGLE";
                } else {
                    str2 = "";
                    str3 = g_info.getId();
                }
                downloadGameArgsBean.setGameId(str3);
                if (g_info.getSp_tag_info() == null || g_info.getSp_tag_info().getModel() == null || !"7".equals(g_info.getSp_tag_info().getModel().getId())) {
                    str2 = "ANDROID_SINGLE";
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    str = str2;
                    r4 = z3;
                } else {
                    r4 = d2.h(g_info.getPlugin_num()) ? false : H1(Integer.parseInt(g_info.getPlugin_num()));
                    if (r4) {
                        str = y1(g_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                    } else {
                        str = str2;
                    }
                }
            } else {
                str = "";
            }
            try {
                String d4 = new PrefDef_(context).androidIdNullsKey().d();
                if (d2.i(d4)) {
                    List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                    if (d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z) && r4) {
                        if (IntentUtil.getInstance().goLogin(context)) {
                            return;
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            downloadGameArgsBean.setFrom(commonGameInfoBean.get_from());
            downloadGameArgsBean.setFromType(commonGameInfoBean.get_from_type());
            downloadGameArgsBean.setRemarks(commonGameInfoBean.getReMarks());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getRecPosition());
            downloadGameArgsBean.setNodeId(commonGameInfoBean.getNodeId());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getVolcanoOtherJsonStr());
            downloadGameArgsBean.setFromRecommend(commonGameInfoBean.isFromRecomDown());
            downloadGameArgsBean.setExt(commonGameInfoBean.getExt());
            boolean booleanValue = new PrefDef_(context).download_game_switch().d().booleanValue();
            if (r4 && booleanValue) {
                p0(context, 2, str3, str, new o(context, str3, downloadGameArgsBean));
                return;
            } else {
                W1(context, str3, downloadGameArgsBean);
                return;
            }
        }
        W1(context, "", downloadGameArgsBean);
    }

    @Deprecated
    public static void V2(Context context, String str) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int intValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int intValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long longValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            String d4 = prefDef_.downloadSpeedUpGames().d();
            String str2 = "";
            if (TextUtils.isEmpty(d4)) {
                d4 = "";
            }
            if (com.join.mgps.Util.x.t(longValue)) {
                str2 = d4;
            } else {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                intValue2 = 0;
            }
            if (intValue2 >= intValue) {
                return;
            }
            prefDef_.downloadSpeedUpCountCurrent().g(Integer.valueOf(intValue2 + 1));
            prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
            if (!str2.contains(str)) {
                str2 = str2 + str + ",";
            }
            prefDef_.downloadSpeedUpGames().g(str2);
            if (g1.f.G().B(str) != null) {
                return;
            }
            ((DownloadHighSpeedDialog_.c) DownloadHighSpeedDialog_.G0(context).flags(805306368)).a(str).start();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static String W(String str) {
        return Integer.toHexString(Integer.parseInt(new BigInteger(str, 10).toString()));
    }

    public static void W0(EMUApkTable eMUApkTable, Context context) {
        int parseInt = Integer.parseInt(eMUApkTable.getTag_id());
        DownloadTask V = g1.f.G().V(parseInt);
        if (V != null) {
            if (V.getStatus() == 5 && V.getStatus() != 9 && V.getStatus() != 42) {
                String[] split = eMUApkTable.getVer().split("_");
                if (V.getDown_type() == eMUApkTable.getDown_type() && !s0(split[0], split[1], V.getVer(), V.getVer_name()) && !TextUtils.isEmpty(V.getGameZipPath())) {
                    File file = new File(V.getGameZipPath());
                    if (file.exists()) {
                        if (V.getDown_type() == 2) {
                            if (com.join.android.app.common.utils.h.I(context, V, null) && !com.join.android.app.common.utils.h.j(eMUApkTable)) {
                                g2(V, 5);
                                return;
                            } else {
                                com.php25.PDownload.d.a(V);
                                return;
                            }
                        }
                        com.join.android.app.common.utils.a.g0(context).x(context, file);
                        return;
                    }
                }
            } else if ((V.getStatus() != 2 || V.getStatus() != 10) && V.getStatus() != 9 && V.getStatus() != 42) {
                com.php25.PDownload.d.c(V, context);
                i2.a(context).b("悟饭插件正在下载...");
                return;
            }
        }
        if ("35".equals(eMUApkTable.getTag_id())) {
            try {
                APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, eMUApkTable.getPackage_name());
                if (com.papa.sim.statistic.pref.b.j(context).n() < 13 && k4.d() < 150) {
                    com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
                    tVar.setContentView(R.layout.fc_notice_dialog);
                    ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new t(tVar));
                    ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new u(V, eMUApkTable, parseInt, context, tVar));
                    tVar.show();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        DownloadTask downloadTask = new DownloadTask();
        if (V != null) {
            downloadTask.setId(V.getId());
        }
        downloadTask.setStatus(0);
        downloadTask.setPackageName(eMUApkTable.getPackage_name());
        downloadTask.setPortraitURL(eMUApkTable.getLogo());
        downloadTask.setShowName(eMUApkTable.getApk_name());
        downloadTask.setUrl(eMUApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(parseInt + "");
        try {
            String[] split2 = eMUApkTable.getVer().split("_");
            downloadTask.setVer(split2[0]);
            downloadTask.setVer_name(split2[1]);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        downloadTask.setRomType(parseInt + "");
        downloadTask.setPlugin_num(parseInt + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(eMUApkTable.getSize());
        downloadTask.setDescribe(eMUApkTable.getVer_info());
        downloadTask.setDown_type(eMUApkTable.getDown_type());
        downloadTask.setProgress(0L);
        if (V != null) {
            A0(V);
        }
        if (eMUApkTable.getDown_type() == 2 && com.join.android.app.common.utils.h.i(eMUApkTable)) {
            com.join.android.app.common.utils.h.e(eMUApkTable, downloadTask);
        }
        com.php25.PDownload.d.f(downloadTask, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void W1(Context context, String str, DownloadGameArgsBean downloadGameArgsBean) {
        ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("requestAndDownloadGameById", str)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void W2(Context context, PopwindowBean popwindowBean, GameRoomActivity.x xVar, int i2, String str, int i4, int i5, String str2) {
        RealNameDialog realNameDialog = new RealNameDialog(context, popwindowBean, new w(context, xVar, i2, str2));
        if (((Activity) context).isFinishing()) {
            return;
        }
        realNameDialog.show(str, Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static EMUApkTable X(String str) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(ai.f60415o, str);
            List<EMUApkTable> h4 = n1.p.o().h(hashMap);
            if (h4 == null || h4.size() <= 0) {
                return null;
            }
            Iterator<EMUApkTable> it2 = h4.iterator();
            if (it2.hasNext()) {
                return it2.next();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int X0(Context context, String str) {
        if (context == null) {
            try {
                context = MApplication.n();
            } catch (Exception e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        return Math.max(0, prefDef_.downloadSpeedUpCountAD().d().intValue() - prefDef_.downloadSpeedUpCountCurrentAD().d().intValue());
    }

    public static void X1(Context context, String str, CommonGameInfoBean commonGameInfoBean) {
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(str);
        if (commonGameInfoBean != null) {
            downloadGameArgsBean.setFrom(commonGameInfoBean.get_from());
            downloadGameArgsBean.setFromType(commonGameInfoBean.get_from_type());
            downloadGameArgsBean.setRemarks(commonGameInfoBean.getReMarks());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getRecPosition());
            downloadGameArgsBean.setNodeId(commonGameInfoBean.getNodeId());
            downloadGameArgsBean.setRecPosition(commonGameInfoBean.getVolcanoOtherJsonStr());
            downloadGameArgsBean.setFromRecommend(commonGameInfoBean.isFromRecomDown());
            downloadGameArgsBean.setExt(commonGameInfoBean.getExt());
        }
        ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("requestAndUpdateGameById", str)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void X2(Context context, PopwindowBean popwindowBean, RealNameLoginDialog.OnButnClickLienster onButnClickLienster) {
        if (context instanceof Activity) {
            if (((Activity) context).isFinishing()) {
                return;
            }
            RealNameLoginDialog.getInstance(context).setDialogData(popwindowBean).setDialogListener(onButnClickLienster).show();
            return;
        }
        Activity activity = MApplication.f9223q.getActivity();
        if (activity != null) {
            RealNameLoginDialog.getInstance(activity).setDialogData(popwindowBean).setDialogListener(onButnClickLienster).show();
        }
    }

    private static EMUApkTable Y(Context context, EMUApkTable eMUApkTable) {
        return Z(context, eMUApkTable, false);
    }

    public static void Y0(Context context, UpdateIntentDataBean updateIntentDataBean) {
        DownloadTask downloadTask = updateIntentDataBean.getDownloadTask();
        if (!T0(context, downloadTask) && downloadTask.getDown_status() == 5) {
            ((ChociceDownActivity_.j) ChociceDownActivity_.O0(context).a(downloadTask).b(11).c(updateIntentDataBean).flags(268435456)).start();
        } else {
            UpdateLodingActivity_.M0(context).a(updateIntentDataBean).start();
        }
    }

    public static String Y1(long j4) {
        String str;
        if (j4 < 1024) {
            str = Math.round(j4) + "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringBuilder sb = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb.append(Math.round(d4 / 1024.0d));
            sb.append("K");
            str = sb.toString();
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb2 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb2.append(Math.round(d5 / 1048576.0d));
            sb2.append("M");
            str = sb2.toString();
        } else {
            str = new DecimalFormat("0.0").format(((float) j4) / 1.07374182E9f) + "G";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void Y2(android.content.Context r18, com.github.snowdream.android.app.downloader.DownloadTask r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.Y2(android.content.Context, com.github.snowdream.android.app.downloader.DownloadTask, java.lang.String):void");
    }

    private static EMUApkTable Z(Context context, EMUApkTable eMUApkTable, boolean z3) {
        APKUtils aPKUtils = new APKUtils();
        if (eMUApkTable == null) {
            return null;
        }
        if (eMUApkTable.getDown_type() == 2) {
            if (com.join.android.app.common.utils.h.B(eMUApkTable, false, z3)) {
                V0(eMUApkTable, context);
                return null;
            }
            com.papa.sim.statistic.p.f55577h = eMUApkTable.getVer() + "_" + eMUApkTable.getTag_id();
            return eMUApkTable;
        } else if (aPKUtils.c(context, eMUApkTable.getPackage_name())) {
            if (q0(context, eMUApkTable)) {
                V0(eMUApkTable, context);
                return null;
            }
            com.papa.sim.statistic.p.f55577h = eMUApkTable.getVer() + "_" + eMUApkTable.getTag_id();
            return eMUApkTable;
        } else {
            V0(eMUApkTable, context);
            return null;
        }
    }

    public static void Z0(DownloadTask downloadTask, FightMainTable fightMainTable) {
        if (downloadTask == null || fightMainTable == null) {
            return;
        }
        downloadTask.setDownload_source_url(fightMainTable.getDownload_source_url());
        downloadTask.setDownload_outside_url(fightMainTable.getDownload_outside_url());
        downloadTask.setDownload_original_switch(fightMainTable.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(fightMainTable.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(fightMainTable.getDownload_source_switch_v2());
    }

    public static void Z1(EMUApkTable eMUApkTable, Context context) {
        int parseInt = Integer.parseInt(eMUApkTable.getTag_id());
        DownloadTask V = g1.f.G().V(parseInt);
        DownloadTask downloadTask = new DownloadTask();
        if (V != null) {
            downloadTask.setId(V.getId());
        }
        downloadTask.setStatus(5);
        downloadTask.setPackageName(eMUApkTable.getPackage_name());
        downloadTask.setPortraitURL(eMUApkTable.getLogo());
        downloadTask.setShowName(eMUApkTable.getApk_name());
        downloadTask.setUrl(eMUApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(parseInt + "");
        downloadTask.setDown_type(eMUApkTable.getDown_type());
        try {
            String[] split = eMUApkTable.getVer().split("_");
            try {
                if (eMUApkTable.getDown_type() == 2 && !TextUtils.isEmpty(eMUApkTable.getApkPath()) && new File(eMUApkTable.getApkPath()).exists()) {
                    split = new File(eMUApkTable.getApkPath()).getName().split("_");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            downloadTask.setVer_name(split[1]);
            downloadTask.setVer(split[0]);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        downloadTask.setRomType(parseInt + "");
        downloadTask.setPlugin_num(parseInt + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(eMUApkTable.getSize());
        downloadTask.setDescribe(eMUApkTable.getVer_info());
        g1.f.G().m(downloadTask);
    }

    public static void Z2(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask, String str, int i2) {
        EMUApkTable n4;
        if (downloadTask == null) {
            return;
        }
        String gameZipPath = downloadTask.getGameZipPath();
        String substring = gameZipPath.substring(0, gameZipPath.lastIndexOf(g0.f27568a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadTask V = g1.f.G().V(Integer.parseInt(downloadTask.getPlugin_num()));
        int i4 = 1;
        if (V != null && (n4 = n1.p.o().n(V.getPlugin_num())) != null && n4.getDown_type() == 2 && V.getDown_type() == 2) {
            if (V.getStatus() == 11 && n4.getVerCode() == V.getVerCode()) {
                PlugInstallDialog_.a a4 = PlugInstallDialog_.I0(context).c(n4).a(downloadTask);
                if (V.getDown_type() == 2 && com.join.android.app.common.utils.h.z(n4)) {
                    i4 = 2;
                }
                a4.b(i4).start();
                return;
            } else if (!com.join.android.app.common.utils.h.s(context, V, new String[0])) {
                V.setStatus(0);
                String gameZipPath2 = V.getGameZipPath();
                if (!TextUtils.isEmpty(gameZipPath2)) {
                    File file = new File(gameZipPath2);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                V.setPath("");
                V.setGameZipPath("");
                g1.f.G().m(V);
                V0(n4, context);
                return;
            }
        }
        EMUApkTable P = P(context, downloadTask);
        if (P != null) {
            int i5 = 33;
            try {
                i5 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StringBuilder sb = new StringBuilder();
            sb.append("emuApkTable=");
            sb.append(P.getTag_id());
            PrefDef_ prefDef_ = new PrefDef_(context);
            int intValue = prefDef_.runRomFirst().d().intValue();
            String d4 = prefDef_.insatllAppFirstData().d();
            if (d4 != null && P.getDown_type() == 0) {
                BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(d4, BootPageData.class);
                if (intValue > 0 && bootPageData != null && bootPageData.getPerformance_boot() != null) {
                    PapaPlugGuideActivity_.I0(context).a(0).start();
                    prefDef_.runRomFirst().g(Integer.valueOf(intValue - 1));
                    return;
                }
            }
            if (u1(context, crc_link_type_val, downloadTask, P, false)) {
                return;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(P.getPackage_name());
            startGameMeta.setActivityName(P.getLaunch_name());
            startGameMeta.setRomPath(substring);
            startGameMeta.setStartMode(i2);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setType(i5);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setUdpIP(netBattleStartGameDto.getUdpIP());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetState(str);
            startGameMeta.setNetMode(1);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setNetPlayers(netBattleStartGameDto.getNetPlayers());
            startGameMeta.setGamePlayers(netBattleStartGameDto.getGamePlayers());
            startGameMeta.setSp(0);
            startGameMeta.setGroupId(netBattleStartGameDto.getGroupId());
            startGameMeta.setArea(netBattleStartGameDto.getArea());
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            startGameMeta.setRoomMode(netBattleStartGameDto.getRoomMode());
            startGameMeta.setGametype(netBattleStartGameDto.getGameype());
            startGameMeta.setAllowPeripheralJoin(netBattleStartGameDto.isAllowPeripheralJoin());
            v(context, startGameMeta, P);
            N1(context, startGameMeta, 1);
        }
    }

    public static String a(long j4) {
        return b(j4, "#.00");
    }

    public static EMUApkTable a0(Context context, String str) {
        EMUApkTable n4 = n1.p.o().n(str);
        new APKUtils();
        if (n4 == null) {
            return null;
        }
        if (com.join.android.app.common.utils.h.t(context, n4, false, new String[0])) {
            if (q0(context, n4)) {
                return n4;
            }
            com.papa.sim.statistic.p.f55577h = n4.getVer() + "_" + n4.getTag_id();
            return null;
        }
        com.papa.sim.statistic.p.f55577h = n4.getVer() + "_" + n4.getTag_id();
        return n4;
    }

    public static void a1(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
        if (downloadTask == null || warMatchAndLocalTable == null) {
            return;
        }
        downloadTask.setDownload_source_url(warMatchAndLocalTable.getDownload_source_url());
        downloadTask.setDownload_outside_url(warMatchAndLocalTable.getDownload_outside_url());
        downloadTask.setDownload_original_switch(warMatchAndLocalTable.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(warMatchAndLocalTable.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(warMatchAndLocalTable.getDownload_source_switch_v2());
    }

    public static void a2(EMUApkTable eMUApkTable, Context context) {
        int parseInt = Integer.parseInt(eMUApkTable.getTag_id());
        DownloadTask V = g1.f.G().V(parseInt);
        DownloadTask downloadTask = new DownloadTask();
        if (V != null) {
            downloadTask.setId(V.getId());
        }
        downloadTask.setStatus(9);
        downloadTask.setPackageName(eMUApkTable.getPackage_name());
        downloadTask.setPortraitURL(eMUApkTable.getLogo());
        downloadTask.setShowName(eMUApkTable.getApk_name());
        downloadTask.setUrl(eMUApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(parseInt + "");
        downloadTask.setDown_type(eMUApkTable.getDown_type());
        try {
            String[] split = eMUApkTable.getVer().split("_");
            try {
                if (eMUApkTable.getDown_type() == 2 && !TextUtils.isEmpty(eMUApkTable.getApkPath()) && new File(eMUApkTable.getApkPath()).exists()) {
                    split = new File(eMUApkTable.getApkPath()).getName().split("_");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            downloadTask.setVer_name(split[1]);
            downloadTask.setVer(split[0]);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        downloadTask.setRomType(parseInt + "");
        downloadTask.setPlugin_num(parseInt + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(eMUApkTable.getSize());
        downloadTask.setDescribe(eMUApkTable.getVer_info());
        g1.f.G().m(downloadTask);
    }

    public static void a3(Context context) {
        if (b1.b(context) < 26 || Build.VERSION.SDK_INT < 26) {
            try {
                DownloadService_.M(context).a();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static String b(long j4, String str) {
        String sb;
        DecimalFormat decimalFormat = new DecimalFormat(str);
        if (j4 < 1024) {
            sb = decimalFormat.format(j4) + "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringBuilder sb2 = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb2.append(decimalFormat.format(d4 / 1024.0d));
            sb2.append("KB");
            sb = sb2.toString();
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb3.append(decimalFormat.format(d5 / 1048576.0d));
            sb3.append("M");
            sb = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d6 = j4;
            Double.isNaN(d6);
            sb4.append(decimalFormat.format(d6 / 1.073741824E9d));
            sb4.append("GB");
            sb = sb4.toString();
        }
        return (sb.equals(".0B") || sb.equals(".00B")) ? "0B" : sb;
    }

    private static EMUApkTable b0(Context context, EMUApkTable eMUApkTable, boolean z3) {
        APKUtils aPKUtils = new APKUtils();
        if (eMUApkTable == null) {
            return null;
        }
        if (eMUApkTable.getDown_type() == 2) {
            if (com.join.android.app.common.utils.h.B(eMUApkTable, false, z3)) {
                V0(eMUApkTable, context);
                return null;
            }
            com.papa.sim.statistic.p.f55577h = eMUApkTable.getVer() + "_" + eMUApkTable.getTag_id();
            return eMUApkTable;
        } else if (aPKUtils.c(context, eMUApkTable.getPackage_name())) {
            if (q0(context, eMUApkTable)) {
                V0(eMUApkTable, context);
                return null;
            }
            com.papa.sim.statistic.p.f55577h = eMUApkTable.getVer() + "_" + eMUApkTable.getTag_id();
            return eMUApkTable;
        } else {
            V0(eMUApkTable, context);
            return null;
        }
    }

    public static void b1(DownloadTask downloadTask, AppBean appBean) {
        if (downloadTask == null || appBean == null) {
            return;
        }
        downloadTask.setDownload_source_url(appBean.getDownload_source_url());
        downloadTask.setDownload_outside_url(appBean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(appBean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(appBean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(appBean.getDownload_source_switch_v2());
    }

    public static void b2(Context context, String str) {
        new n(str, context).start();
    }

    public static void b3(Context context, DownloadTask downloadTask) {
        t0.h(PapayPayDetialActivity_.f34856k, System.currentTimeMillis() + "  startfightActivity");
        IntentUtil.getInstance().goGameMainActivity(context, downloadTask.getCrc_link_type_val(), "");
    }

    public static String c(long j4) {
        String sb;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j4 < 1024) {
            sb = decimalFormat.format(j4) + "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringBuilder sb2 = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb2.append(decimalFormat.format(d4 / 1024.0d));
            sb2.append("KB");
            sb = sb2.toString();
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb3.append(decimalFormat.format(d5 / 1048576.0d));
            sb3.append("M");
            sb = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d6 = j4;
            Double.isNaN(d6);
            sb4.append(decimalFormat.format(d6 / 1.073741824E9d));
            sb4.append("G");
            sb = sb4.toString();
        }
        return (sb.equals(".0B") || sb.equals(".00B")) ? "0B" : sb;
    }

    public static boolean c0(Context context) {
        boolean createNewFile;
        try {
            String g4 = com.join.mgps.pref.h.n(context).g();
            if (d2.i(g4)) {
                File file = new File(g4);
                if (!file.exists()) {
                    return file.mkdirs();
                }
                File file2 = new File(g4, "test_canwhite.txt");
                if (file2.exists()) {
                    createNewFile = file2.delete();
                } else {
                    createNewFile = file2.createNewFile();
                }
                return createNewFile;
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static void c1(DownloadTask downloadTask, CollectionBeanSub collectionBeanSub) {
        if (downloadTask == null || collectionBeanSub == null) {
            return;
        }
        downloadTask.setDownload_source_url(collectionBeanSub.getDownload_source_url());
        downloadTask.setDownload_outside_url(collectionBeanSub.getDownload_outside_url());
        downloadTask.setDownload_original_switch(collectionBeanSub.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(collectionBeanSub.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(collectionBeanSub.getDownload_source_switch_v2());
    }

    public static void c2(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.wufun.get.permission");
        intent.putExtra("permission", str);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static void c3(Context context, DownloadTask downloadTask) {
        f3(context, downloadTask, "");
    }

    public static String d(long j4) {
        DecimalFormat decimalFormat = new DecimalFormat("#0.00");
        double d4 = j4;
        Double.isNaN(d4);
        String format = decimalFormat.format(d4 / 1024.0d);
        return (format.equals(".0") || format.equals(".00")) ? "0" : format;
    }

    public static void d0(Context context, DownloadTask downloadTask) {
        EMUApkTable N;
        if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.android.name())) {
            if (downloadTask.getGameZipPath() != null && !new File(downloadTask.getGameZipPath()).exists()) {
                com.php25.PDownload.d.a(downloadTask);
                com.php25.PDownload.d.c(downloadTask, context);
                return;
            }
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            String gameZipPath = downloadTask.getGameZipPath();
            try {
                if (Integer.parseInt(downloadTask.getRomType()) == -1 || (N = N(context, downloadTask)) == null || gameZipPath == null || u1(context, crc_link_type_val, downloadTask, N, false)) {
                    return;
                }
                t0.h(PapayPayDetialActivity_.f34856k, System.currentTimeMillis() + "  checkfinish");
                b3(context, downloadTask);
            } catch (Exception unused) {
            }
        }
    }

    public static void d1(DownloadTask downloadTask, DetailResultBean detailResultBean) {
        if (downloadTask == null || detailResultBean == null) {
            return;
        }
        downloadTask.setDownload_source_url(detailResultBean.getDownload_source_url());
        downloadTask.setDownload_outside_url(detailResultBean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(detailResultBean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(detailResultBean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(detailResultBean.getDownload_source_switch_v2());
    }

    public static void d2(Context context, String str, String str2) {
        Intent intent = new Intent();
        intent.setAction("com.wufun.get.permission");
        intent.putExtra("permission", str);
        intent.putExtra("filePath", str2);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static void d3(Context context, DownloadTask downloadTask, int i2) {
        e3(context, downloadTask, i2, "");
    }

    public static boolean delete(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.getAbsolutePath();
                File file2 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                file.renameTo(file2);
                try {
                    return file2.delete();
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    for (File file3 : listFiles) {
                        delete(file3);
                    }
                    File file4 = new File(file.getParent() + File.separator + System.currentTimeMillis());
                    file.renameTo(file4);
                    try {
                        return file4.delete();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } else {
                    try {
                        File file5 = new File(file.getParent() + File.separator + System.currentTimeMillis());
                        file.renameTo(file5);
                        return file5.delete();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static String e(long j4) {
        String sb;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j4 < 1024) {
            sb = decimalFormat.format(j4) + "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringBuilder sb2 = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb2.append(decimalFormat.format(d4 / 1024.0d));
            sb2.append("KB");
            sb = sb2.toString();
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb3.append(decimalFormat.format(d5 / 1048576.0d));
            sb3.append("M");
            sb = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d6 = j4;
            Double.isNaN(d6);
            sb4.append(decimalFormat.format(d6 / 1.073741824E9d));
            sb4.append("G");
            sb = sb4.toString();
        }
        return (sb.equals(".0B") || sb.equals(".00B")) ? "0B" : sb;
    }

    public static boolean e0(List<TipBean> list) {
        if (list != null) {
            for (TipBean tipBean : list) {
                if (tipBean.getId().equals("46")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void e1(DownloadTask downloadTask, DetailResultBeanV3 detailResultBeanV3) {
        if (downloadTask == null || detailResultBeanV3 == null) {
            return;
        }
        downloadTask.setDownload_source_url(detailResultBeanV3.getDownload_source_url());
        downloadTask.setDownload_outside_url(detailResultBeanV3.getDownload_outside_url());
        downloadTask.setDownload_original_switch(detailResultBeanV3.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(detailResultBeanV3.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(detailResultBeanV3.getDownload_source_switch_v2());
    }

    public static void e2(Context context) {
        Intent intent = new Intent();
        intent.setAction(f1.a.H);
        context.sendBroadcast(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x039d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e3(android.content.Context r9, com.github.snowdream.android.app.downloader.DownloadTask r10, int r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.e3(android.content.Context, com.github.snowdream.android.app.downloader.DownloadTask, int, java.lang.String):void");
    }

    public static String f(long j4) {
        String sb;
        DecimalFormat decimalFormat = new DecimalFormat("#.0");
        if (j4 < 1024) {
            sb = j4 + "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            sb = (j4 / 1024) + "KB";
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            sb = (j4 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) + "M";
        } else {
            StringBuilder sb2 = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb2.append(decimalFormat.format(d4 / 1.073741824E9d));
            sb2.append("GB");
            sb = sb2.toString();
        }
        return (sb.equals(".0B") || sb.equals(".00B")) ? "0B" : sb;
    }

    public static boolean f0(List<GameTagInfoV2_2Bean> list) {
        if (list != null) {
            for (GameTagInfoV2_2Bean gameTagInfoV2_2Bean : list) {
                if (gameTagInfoV2_2Bean.getId().equals("46")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void f1(DownloadTask downloadTask, GameDiscoverBean gameDiscoverBean) {
        if (downloadTask == null || gameDiscoverBean == null) {
            return;
        }
        downloadTask.setDownload_source_url(gameDiscoverBean.getDownload_source_url());
        downloadTask.setDownload_outside_url(gameDiscoverBean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(gameDiscoverBean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(gameDiscoverBean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(gameDiscoverBean.getDownload_source_switch_v2());
    }

    public static void f2(Context context) {
        Intent intent = new Intent();
        intent.setAction(f1.a.G);
        context.sendBroadcast(intent);
    }

    public static void f3(Context context, DownloadTask downloadTask, String str) {
        LoginCfgsBean loginCfgsBean;
        boolean z3;
        if (!"login".equals(str)) {
            if (IntentUtil.getInstance().startGameCheckRealnameHasIntent(context, AccountUtil_.getInstance_(context).getAccountData(), "startGame", downloadTask.getCrc_link_type_val())) {
                return;
            }
            if ((AccountUtil_.getInstance_(context).isTourist() || AccountUtil_.getInstance_(context).getAccountData().getUid() == 0) && (loginCfgsBean = MApplication.J) != null && loginCfgsBean.getIs_open_login() == 1) {
                PrefDef_ prefDef_ = new PrefDef_(context);
                if (!com.join.mgps.Util.x.t(prefDef_.lastShowLoginGuiedTime().d().longValue()) && MApplication.J != null) {
                    prefDef_.startgameLogintimes_open_login().g(Integer.valueOf(MApplication.J.getTimes_open_login()));
                    prefDef_.startGameShowLoginNumber().g(Integer.valueOf(MApplication.J.getHow_times_open()));
                }
                int intValue = prefDef_.startGameShowLoginNumber().d().intValue();
                if (intValue > 0) {
                    prefDef_.startGameShowLoginNumber().g(Integer.valueOf(intValue - 1));
                } else {
                    if (loginCfgsBean.getLogin_is_allow_skip() == 1) {
                        int intValue2 = prefDef_.startgameLogintimes_open_login().d().intValue();
                        if (intValue2 > 0) {
                            LoginSplashActivity_.intent(context).gameId(downloadTask.getCrc_link_type_val()).start();
                            prefDef_.startgameLogintimes_open_login().g(Integer.valueOf(intValue2 - 1));
                        }
                    } else {
                        LoginSplashActivity_.intent(context).gameId(downloadTask.getCrc_link_type_val()).start();
                    }
                    z3 = true;
                    prefDef_.lastShowLoginGuiedTime().g(Long.valueOf(System.currentTimeMillis()));
                }
                z3 = false;
                prefDef_.lastShowLoginGuiedTime().g(Long.valueOf(System.currentTimeMillis()));
            } else {
                z3 = false;
            }
            if (z3) {
                return;
            }
        }
        if (downloadTask.isOpen() && !downloadTask.getTips().contains("网游")) {
            if (!downloadTask.isNotCheckAddShortcut()) {
                DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                if (B != null && (B.getUrl().endsWith(".apk") || "androidobb".equals(B.getRomType()) || "46".equals(B.getRomType()))) {
                    String packageName = B.getPackageName();
                    if (!d2.h(packageName) && com.join.mgps.Util.g.d(context, packageName) && !t1.c(context, downloadTask.getCrc_link_type_val())) {
                        a0.c0(context).J(context, downloadTask, true, str);
                        return;
                    }
                } else if (!t1.c(context, downloadTask.getCrc_link_type_val())) {
                    a0.c0(context).J(context, downloadTask, true, str);
                    return;
                }
            }
            downloadTask.setNotCheckAddShortcut(false);
        }
        e3(context, downloadTask, 0, str);
    }

    public static String g(long j4) {
        String sb;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j4 < 1000) {
            sb = decimalFormat.format(j4) + "B";
        } else if (j4 < 1000000) {
            StringBuilder sb2 = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb2.append(decimalFormat.format(d4 / 1000.0d));
            sb2.append("KB");
            sb = sb2.toString();
        } else if (j4 < com.squareup.wire.internal.k.f56834a) {
            StringBuilder sb3 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb3.append(decimalFormat.format(d5 / 1000000.0d));
            sb3.append("M");
            sb = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d6 = j4;
            Double.isNaN(d6);
            sb4.append(decimalFormat.format(d6 / 1.0E9d));
            sb4.append("GB");
            sb = sb4.toString();
        }
        return (sb.equals(".0B") || sb.equals(".00B")) ? "0B" : sb;
    }

    public static boolean g0(List<TipBean> list) {
        try {
            for (TipBean tipBean : list) {
                if (tipBean.getId().equals("41")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static void g1(DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
        if (downloadTask == null || gamedetialModleFourBean == null) {
            return;
        }
        downloadTask.setDownload_source_url(gamedetialModleFourBean.getDownload_source_url());
        downloadTask.setDownload_outside_url(gamedetialModleFourBean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(gamedetialModleFourBean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(gamedetialModleFourBean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(gamedetialModleFourBean.getDownload_source_switch_v2());
    }

    public static void g2(DownloadTask downloadTask, int i2) {
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        B.setStatus(i2);
        B.setVer(downloadTask.getVer());
        downloadTask.setStatus(i2);
        g1.f.G().update(B);
        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
        if (f4 != null) {
            f4.setStatus(B.getStatus());
            f4.setVer(B.getVer());
        }
        if (i2 == 5) {
            com.join.android.app.common.servcie.a.e().k(downloadTask.getCrc_link_type_val());
        }
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.l(downloadTask, i2));
    }

    public static void g3(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
        String v3 = v3(downloadTask.getGameZipPath());
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        if (B != null) {
            downloadTask.setLock_sp(B.getLock_sp());
        }
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            int i2 = 33;
            try {
                i2 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(v3);
            startGameMeta.setStartMode(7);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setType(i2);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            v(context, startGameMeta, N);
            N1(context, startGameMeta, 1);
        }
    }

    public static void h(EMUApkTable eMUApkTable, DownloadTask downloadTask, Context context, int i2) {
        i(eMUApkTable, downloadTask, context, i2, "");
    }

    public static boolean h0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (!TextUtils.isEmpty(downloadTask.getPlugin_num()) && H1(Integer.parseInt(downloadTask.getPlugin_num()))) {
            if ("1".equals(MApplication.I.getDown_load_cfg_simulator_speed_limit().getCfg_switch_express())) {
                return false;
            }
        } else {
            boolean z3 = false;
            for (TipBean tipBean : downloadTask.getTipBeans()) {
                if ("23".equals(tipBean.getId())) {
                    z3 = true;
                }
            }
            if (z3) {
                if ("1".equals(MApplication.I.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch_express())) {
                    return false;
                }
            } else if ("1".equals(MApplication.I.getDown_load_cfg_net_game_speed_limit().getCfg_switch_express())) {
                return false;
            }
        }
        return true;
    }

    public static void h1(DownloadTask downloadTask, TodayWufunBroadcast todayWufunBroadcast) {
        if (downloadTask == null || todayWufunBroadcast == null) {
            return;
        }
        downloadTask.setDownload_source_url(todayWufunBroadcast.getDownload_source_url());
        downloadTask.setDownload_outside_url(todayWufunBroadcast.getDownload_outside_url());
        downloadTask.setDownload_original_switch(todayWufunBroadcast.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(todayWufunBroadcast.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(todayWufunBroadcast.getDownload_source_switch_v2());
    }

    public static void h2(DownloadTask downloadTask, Context context) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        int uid = accountData != null ? accountData.getUid() : 0;
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        l4.j(crc_link_type_val, uid + "", null);
        downloadTask.setStatus(5);
        downloadTask.setFileType(Dtype.H5.name());
        downloadTask.setPlugin_num(ConstantIntEnum.H5.value() + "");
        downloadTask.setIsOpen(true);
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        if (B != null) {
            downloadTask.setLastTime(System.currentTimeMillis());
            downloadTask.setOpenTime(System.currentTimeMillis());
            g1.f.G().update(B);
            return;
        }
        downloadTask.setFinishTime(System.currentTimeMillis());
        downloadTask.setLastTime(System.currentTimeMillis());
        downloadTask.setOpenTime(System.currentTimeMillis());
        g1.f.G().k(downloadTask);
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.l(downloadTask, 5));
    }

    public static void h3(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask, String str) {
        String v3 = v3(downloadTask.getGameZipPath());
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            int i2 = 33;
            try {
                i2 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(v3);
            startGameMeta.setStartMode(8);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setType(i2);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetState(str);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            v(context, startGameMeta, N);
            N1(context, startGameMeta, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
        if (r1.equals(com.join.mgps.enums.ConstantIntEnum.PS2.value() + "") != false) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void i(com.join.mgps.db.tables.EMUApkTable r9, com.github.snowdream.android.app.downloader.DownloadTask r10, android.content.Context r11, int r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.i(com.join.mgps.db.tables.EMUApkTable, com.github.snowdream.android.app.downloader.DownloadTask, android.content.Context, int, java.lang.String):void");
    }

    public static boolean i0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (downloadTask.getPlugin_num() != null && H1(Integer.parseInt(downloadTask.getPlugin_num()))) {
            if ("1".equals(MApplication.I.getDown_load_cfg_simulator_speed_limit().getCfg_switch_express())) {
                return false;
            }
        } else {
            boolean z3 = false;
            for (TipBean tipBean : downloadTask.getTipBeans()) {
                if ("23".equals(tipBean.getId())) {
                    z3 = true;
                }
            }
            if (z3) {
                if ("1".equals(MApplication.I.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch_express())) {
                    return false;
                }
            } else if ("1".equals(MApplication.I.getDown_load_cfg_net_game_speed_limit().getCfg_switch_express())) {
                return false;
            }
        }
        return true;
    }

    public static void i1(DownloadTask downloadTask, TodayWufunEverday todayWufunEverday) {
        if (downloadTask == null || todayWufunEverday == null) {
            return;
        }
        downloadTask.setDownload_source_url(todayWufunEverday.getDownload_source_url());
        downloadTask.setDownload_outside_url(todayWufunEverday.getDownload_outside_url());
        downloadTask.setDownload_original_switch(todayWufunEverday.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(todayWufunEverday.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(todayWufunEverday.getDownload_source_switch_v2());
    }

    public static void i2(PrefDef_ prefDef_, Context context) {
        j2(prefDef_, context, false);
    }

    public static void i3(Context context, String str, String str2, String str3, int i2, String str4, long j4, DownloadTask downloadTask) {
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        if (B != null) {
            downloadTask.setLock_sp(B.getLock_sp());
        }
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(v3(str2));
            startGameMeta.setStartMode(i2);
            startGameMeta.setServerIP(str4);
            startGameMeta.setGameID(str);
            startGameMeta.setType(Integer.parseInt(N.getTag_id()));
            startGameMeta.setPlugin_area_val(j4);
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(1);
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            v(context, startGameMeta, N);
            M1(context, startGameMeta);
        }
    }

    public static void j(DownloadTask downloadTask, Context context, int i2, String str, int i4, String str2, int i5) {
        k(downloadTask, context, i2, str, i4, str2, i5, "");
    }

    public static EMUApkTable j0(String str) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("tag_id", str);
            List<EMUApkTable> h4 = n1.p.o().h(hashMap);
            if (h4 == null || h4.size() <= 0) {
                return null;
            }
            Iterator<EMUApkTable> it2 = h4.iterator();
            if (it2.hasNext()) {
                return it2.next();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void j1(DownloadTask downloadTask, TodayWufunTodayNew todayWufunTodayNew) {
        if (downloadTask == null || todayWufunTodayNew == null) {
            return;
        }
        downloadTask.setDownload_source_url(todayWufunTodayNew.getDownload_source_url());
        downloadTask.setDownload_outside_url(todayWufunTodayNew.getDownload_outside_url());
        downloadTask.setDownload_original_switch(todayWufunTodayNew.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(todayWufunTodayNew.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(todayWufunTodayNew.getDownload_source_switch_v2());
    }

    public static void j2(PrefDef_ prefDef_, Context context, boolean z3) {
        if (Build.VERSION.SDK_INT > 29 || z3) {
            prefDef_.sdcardisFirst().g(Boolean.TRUE);
            List<Filepath> a4 = q1.a(context);
            String str = com.join.mgps.Util.u.f27847f;
            String str2 = "";
            if (d2.i(com.join.mgps.pref.h.n(context).h())) {
                String str3 = "";
                for (Filepath filepath : a4) {
                    if (filepath.isIslocal()) {
                        str3 = filepath.getPathHome();
                    } else {
                        str2 = filepath.getPathHome();
                    }
                }
                if (d2.i(str2)) {
                    com.join.mgps.pref.h.n(context).W(str2);
                } else if (d2.i(str3)) {
                    com.join.mgps.pref.h.n(context).W(str3);
                } else {
                    com.join.mgps.pref.h.n(context).W(str);
                }
            } else {
                String str4 = "";
                long j4 = 0;
                for (Filepath filepath2 : a4) {
                    if (filepath2.isIslocal()) {
                        str4 = filepath2.getPathHome();
                    } else {
                        str2 = filepath2.getPathHome();
                        j4 = filepath2.getAvailable();
                    }
                }
                if (d2.i(str2) && j4 != 0) {
                    com.join.mgps.pref.h.n(context).W(str2);
                } else if (d2.i(str4)) {
                    com.join.mgps.pref.h.n(context).W(str4);
                } else {
                    com.join.mgps.pref.h.n(context).W(str);
                }
            }
            for (Filepath filepath3 : a4) {
                File file = new File(filepath3.getPathHome());
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(filepath3.getPathHome() + File.separator + ".nomedia");
                if (!file2.exists()) {
                    try {
                        file2.createNewFile();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public static void j3(DownloadTask downloadTask, Context context) {
        String gameZipPath = downloadTask.getGameZipPath();
        if (gameZipPath == null || gameZipPath.equals("")) {
            return;
        }
        if (new File(gameZipPath).exists()) {
            com.join.android.app.common.utils.a.g0(context).y(context, gameZipPath);
            return;
        }
        downloadTask.setStatus(0);
        if (T0(context, downloadTask)) {
            return;
        }
        if (downloadTask.getDown_status() == 5) {
            R0(context, downloadTask);
        } else {
            com.php25.PDownload.d.c(downloadTask, context);
        }
    }

    public static void k(DownloadTask downloadTask, Context context, int i2, String str, int i4, String str2, int i5, String str3) {
        EMUApkTable n4 = n1.p.o().n(downloadTask.getPlugin_num());
        StartGameMeta startGameMeta = new StartGameMeta();
        F3(context, downloadTask, startGameMeta);
        startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
        startGameMeta.setPackageName(n4.getPackage_name());
        startGameMeta.setActivityName(n4.getLaunch_name());
        startGameMeta.setRomPath(v3(downloadTask.getGameZipPath()));
        startGameMeta.setStartMode(9);
        startGameMeta.setServerIP(str);
        startGameMeta.setServerPort(i4 + "");
        startGameMeta.setFastIP(str2);
        startGameMeta.setGameID(downloadTask.getCrc_link_type_val());
        startGameMeta.setType(Integer.parseInt(n4.getTag_id()));
        startGameMeta.setRoomSilent(i2);
        startGameMeta.setNetPlayers(0);
        startGameMeta.setGamePlayers(i5);
        startGameMeta.setRamCheck(downloadTask.getSync_memory());
        startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
        startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
        startGameMeta.setCore(str3);
        v(context, startGameMeta, n4);
        M1(context, startGameMeta);
    }

    public static boolean k0(List<TipBean> list) {
        if (list != null) {
            for (TipBean tipBean : list) {
                if (tipBean.getId().equals("7")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String k1(Context context, int i2) {
        List<BaiduAdDataMain> list = (List) JsonMapper.getInstance().fromJson(com.join.mgps.pref.h.n(context).b(), JsonMapper.getInstance().createCollectionType(List.class, BaiduAdDataMain.class));
        if (list == null) {
            return "";
        }
        for (BaiduAdDataMain baiduAdDataMain : list) {
            if (baiduAdDataMain.getType_id() == i2) {
                return baiduAdDataMain.getAd_id();
            }
        }
        return "";
    }

    public static void k2(TextView textView, int i2, int i4, String str) {
        textView.setTextColor(-12802819);
        boolean z3 = l0(i4, str) > 0;
        if (i2 == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (i2 == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (i2 == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (i4 > 0) {
                Resources resources = textView.getResources();
                textView.setText(resources.getString(R.string.pay_game_amount, i4 + ""));
            } else {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void k3(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask, int i2) {
        String gameZipPath = downloadTask.getGameZipPath();
        String substring = gameZipPath.substring(0, gameZipPath.lastIndexOf(g0.f27568a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            int i4 = 33;
            try {
                i4 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(substring);
            startGameMeta.setStartMode(i2);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setType(i4);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetMode(1);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setNetPlayers(netBattleStartGameDto.getNetPlayers());
            startGameMeta.setGamePlayers(netBattleStartGameDto.getGamePlayers());
            startGameMeta.setSp(0);
            startGameMeta.setGroupId(netBattleStartGameDto.getGroupId());
            startGameMeta.setArea(netBattleStartGameDto.getArea());
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            v(context, startGameMeta, N);
            N1(context, startGameMeta, 1);
        }
    }

    public static void l(DownloadTask downloadTask, Context context, String str) {
        EMUApkTable n4 = n1.p.o().n(downloadTask.getPlugin_num());
        StartGameMeta startGameMeta = new StartGameMeta();
        F3(context, downloadTask, startGameMeta);
        startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
        startGameMeta.setPackageName(n4.getPackage_name());
        startGameMeta.setActivityName(n4.getLaunch_name());
        startGameMeta.setRomPath(v3(downloadTask.getGameZipPath()));
        startGameMeta.setStartMode(0);
        startGameMeta.setNetState(str);
        startGameMeta.setServerIP(null);
        startGameMeta.setGameID(downloadTask.getCrc_link_type_val());
        startGameMeta.setType(Integer.parseInt(n4.getTag_id()));
        startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
        startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
        startGameMeta.setIntentFrom(1);
        v(context, startGameMeta, n4);
        M1(context, startGameMeta);
    }

    public static int l0(int i2, String str) {
        if (i2 <= 0 || n1.e0.o().p(str)) {
            return 0;
        }
        return i2;
    }

    public static String l1() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String str = "";
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                str = readLine;
            }
            if (str.contains("Hardware")) {
                return str.split(":\\s+", 2)[1];
            }
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return Build.HARDWARE;
    }

    public static void l2(TextView textView, View view, DownloadTask downloadTask) {
        int down_status = downloadTask.getDown_status();
        int pay_game_amount = downloadTask.getPay_game_amount();
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        downloadTask.getDownload_source_switch_v2();
        view.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = l0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            view.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_game_amount > 0) {
                Resources resources = textView.getResources();
                textView.setText(resources.getString(R.string.pay_game_amount, pay_game_amount + ""));
            } else {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void l3(Context context, String str, DownloadTask downloadTask, int i2, String str2, int i4, int i5, String str3, int i6) {
        String gameZipPath = downloadTask.getGameZipPath();
        String substring = gameZipPath.substring(0, gameZipPath.lastIndexOf(g0.f27568a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            int i7 = 33;
            try {
                i7 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(substring);
            startGameMeta.setStartMode(i2);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setRankingID(str2);
            startGameMeta.setUserID(str);
            startGameMeta.setGamePlayers(i4);
            startGameMeta.setType(i7);
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetMode(1);
            startGameMeta.setSp(0);
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            startGameMeta.setRankMiniTime(i5);
            startGameMeta.setRolesJson(str3);
            startGameMeta.setRankAutoUpload(i6);
            v(context, startGameMeta, N);
            M1(context, startGameMeta);
        }
    }

    public static int m0(PayTagInfo payTagInfo, String str) {
        if (payTagInfo != null) {
            if (payTagInfo.getPay_game_amount() > 0 && n1.e0.o().p(str)) {
                payTagInfo.setAmount_check(0);
                return 0;
            }
            payTagInfo.setAmount_check(payTagInfo.getPay_game_amount());
            return payTagInfo.getAmount_check();
        }
        return 0;
    }

    public static int m1(Context context) {
        List<UserPurchaseInfo> o3 = n1.m0.p().o(AccountUtil_.getInstance_(context).getUid(), com.papa.sim.statistic.p.f55578i);
        if (o3 != null && o3.size() > 0) {
            UserPurchaseInfo userPurchaseInfo = o3.get(0);
            String isOpenCheat = userPurchaseInfo.getIsOpenCheat();
            String cheatExpireTime = userPurchaseInfo.getCheatExpireTime();
            if (cheatExpireTime != null && !cheatExpireTime.equals("")) {
                try {
                    cheatExpireTime = new String(Base64Utils.decode(cheatExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
            if (isOpenCheat != null && isOpenCheat.equals("true") && cheatExpireTime != null && Long.parseLong(cheatExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                return 2;
            }
        }
        return 1;
    }

    public static void m2(TextView textView, View view, AppBean appBean) {
        int down_status = appBean.getDown_status();
        PayTagInfo pay_tag_info = appBean.getPay_tag_info();
        String game_id = appBean.getGame_id();
        appBean.getDownload_source_switch_v2();
        view.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            view.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void m3(Context context, String str) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null && accountData.getAccount_type() != 2) {
            ((CommonService_.u1) CommonService_.d2(context).extra("paygameid", str)).a();
        } else {
            IntentUtil.getInstance().goMyAccountLoginActivity(context);
        }
    }

    public static int n0(int i2, String str) {
        return i2;
    }

    public static long n1(File file) {
        if (file == null) {
            return 0L;
        }
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles == null) {
                        return 0L;
                    }
                    long j4 = 0;
                    for (File file2 : listFiles) {
                        j4 += n1(file2);
                    }
                    return j4;
                }
                return file.length();
            }
            System.out.println("文件或者文件夹不存在，请检查路径是否正确！");
            return 0L;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    public static void n2(TextView textView, View view, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        view.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            view.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void n3(Context context, String str, String str2) {
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null && accountData.getAccount_type() != 2) {
            ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(context).extra("paygameid", str)).extra("fromSdk", true)).extra("appkey", str2)).a();
        } else {
            IntentUtil.getInstance().goMyAccountLoginActivity(context);
        }
    }

    public static int o0(PayTagInfo payTagInfo, String str) {
        if (payTagInfo != null) {
            return payTagInfo.getPay_game_amount();
        }
        return 0;
    }

    public static String o1(TipNew tipNew, List<TipBean> list) {
        TipBean model;
        if (tipNew == null || (model = tipNew.getModel()) == null) {
            return "";
        }
        if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
            TipBean tipBean = null;
            if (list != null) {
                Iterator<TipBean> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    TipBean next = it2.next();
                    if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                        tipBean = next;
                        break;
                    }
                }
            }
            if (tipBean != null) {
                return tipBean.getName();
            }
            return tipNew.getModel().getName();
        } else if (list != null) {
            ArrayList<TipBean> arrayList = new ArrayList();
            for (TipBean tipBean2 : list) {
                if (tipBean2.getId() != null && !tipBean2.getId().equals("") && !tipBean2.getId().equals("44") && !tipBean2.getId().equals("45") && !tipBean2.getId().equals("47") && !tipBean2.getId().equals("48")) {
                    arrayList.add(tipBean2);
                }
            }
            if (arrayList.size() == 1) {
                TipBean tipBean3 = (TipBean) arrayList.get(0);
                return tipBean3 != null ? tipBean3.getName() : "";
            }
            for (TipBean tipBean4 : arrayList) {
                if (!"7".equals(tipBean4.getId())) {
                    return tipBean4.getName();
                }
            }
            return "";
        } else {
            return "";
        }
    }

    public static void o2(TextView textView, View view, GInfoBean gInfoBean) {
        int intValue = gInfoBean.getDown_state().intValue();
        PayTagInfo pay_tag_info = gInfoBean.getPay_tag_info();
        String id = gInfoBean.getId();
        view.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, id) > 0;
        if (intValue == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (intValue == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            view.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (intValue == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    private static void o3(String str, Context context) {
        new b(str, context).start();
    }

    public static void p0(Context context, int i2, String str, String str2, GameRoomActivity.x xVar) {
        Activity activity;
        if (System.currentTimeMillis() - f27405d < 600) {
            return;
        }
        f27405d = System.currentTimeMillis();
        boolean booleanValue = new PrefDef_(context).launch_game_switch().d().booleanValue();
        boolean booleanValue2 = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (i2 == 2) {
            if (!booleanValue2) {
                xVar.onSuccess(i2, 0);
                return;
            }
        } else if (!booleanValue) {
            xVar.onSuccess(i2, 0);
            return;
        }
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = MApplication.f9223q.getActivity();
            if (activity == null) {
                return;
            }
        }
        Activity activity2 = activity;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(activity2);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        if (i2 == 4) {
            luckHistoryrequest.setType(13);
        } else if (i2 == 5) {
            luckHistoryrequest.setType(15);
        } else {
            luckHistoryrequest.setType(10);
        }
        if (i2 == 1 || i2 == 3 || i2 == 4) {
            luckHistoryrequest.setAction(2);
        } else if (i2 == 2) {
            luckHistoryrequest.setAction(1);
        } else {
            luckHistoryrequest.setAction(1);
        }
        AccountBean accountData = AccountUtil_.getInstance_(activity2).getAccountData();
        luckHistoryrequest.setUserToken(accountData.getToken());
        luckHistoryrequest.setUid(accountData.getUid());
        luckHistoryrequest.setGameType(str2);
        luckHistoryrequest.setGameId(str);
        requestModel.setArgs(luckHistoryrequest);
        if (f27404c) {
            return;
        }
        f27404c = true;
        com.join.mgps.rpc.impl.h.L().J().d0(requestModel.makeSign()).enqueue(new v(activity2, str, xVar, i2, accountData, luckHistoryrequest));
    }

    public static String p1(TipNew tipNew, List<TipBean> list) {
        TipBean model;
        String str;
        TipBean tipBean;
        TipBean tipBean2;
        if (tipNew == null || (model = tipNew.getModel()) == null) {
            return "";
        }
        if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
            TipBean tipBean3 = null;
            if (list != null) {
                Iterator<TipBean> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    TipBean next = it2.next();
                    if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                        tipBean3 = next;
                        break;
                    }
                }
            }
            if (tipBean3 != null) {
                return tipNew.getModel().getName() + "·" + tipBean3.getName();
            }
            return tipNew.getModel().getName();
        }
        str = "安卓";
        if (list != null) {
            ArrayList<TipBean> arrayList = new ArrayList();
            for (TipBean tipBean4 : list) {
                if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                    arrayList.add(tipBean4);
                }
            }
            int i2 = 0;
            if (arrayList.size() == 2) {
                TipBean tipBean5 = (TipBean) arrayList.get(0);
                str = tipBean5 != null ? tipBean5.getName() : "安卓";
                if (arrayList.size() <= 1 || (tipBean2 = (TipBean) arrayList.get(1)) == null) {
                    return str;
                }
                return str + "·" + tipBean2.getName();
            } else if (arrayList.size() == 1) {
                if (((TipBean) arrayList.get(0)) != null) {
                    return "安卓·" + tipBean.getName();
                }
                return "安卓";
            } else {
                for (TipBean tipBean6 : arrayList) {
                    if (!"7".equals(tipBean6.getId())) {
                        str = i2 == 0 ? tipBean6.getName() : str + "·" + tipBean6.getName();
                        i2++;
                        if (i2 == 2) {
                            return str;
                        }
                    }
                }
                return str;
            }
        }
        return "安卓";
    }

    public static void p2(TextView textView, DownloadTask downloadTask) {
        int down_status = downloadTask.getDown_status();
        int pay_game_amount = downloadTask.getPay_game_amount();
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        downloadTask.getDownload_source_switch_v2();
        textView.setTextColor(-12802819);
        boolean z3 = l0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setEnabled(false);
            textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            textView.setTextColor(-7763575);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_game_amount > 0) {
                Resources resources = textView.getResources();
                textView.setText(resources.getString(R.string.pay_game_amount, pay_game_amount + ""));
            } else {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            }
            textView.setTextSize(2, 13.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void p3(Context context, String str, DownloadTask downloadTask, int i2, String str2) {
        String gameZipPath = downloadTask.getGameZipPath();
        String substring = gameZipPath.substring(0, gameZipPath.lastIndexOf(g0.f27568a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable N = N(context, downloadTask);
        if (N != null) {
            int i4 = 33;
            try {
                i4 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(N.getPackage_name());
            startGameMeta.setActivityName(N.getLaunch_name());
            startGameMeta.setRomPath(substring);
            startGameMeta.setStartMode(i2);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setUserID(str);
            startGameMeta.setNetState(str2);
            startGameMeta.setType(i4);
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            F3(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetMode(1);
            startGameMeta.setSp(0);
            startGameMeta.setGametype(T1(downloadTask.getTipBeans()));
            v(context, startGameMeta, N);
            M1(context, startGameMeta);
        }
    }

    public static boolean q0(Context context, EMUApkTable eMUApkTable) {
        if (eMUApkTable == null) {
            return false;
        }
        try {
            if (eMUApkTable.getDown_type() == 2) {
                return com.join.android.app.common.utils.h.z(eMUApkTable);
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(eMUApkTable.getPackage_name(), 0);
                if (packageInfo == null) {
                    return false;
                }
                try {
                    int i2 = packageInfo.versionCode;
                    String ver_compatible = eMUApkTable.getVer_compatible();
                    String ver = eMUApkTable.getVer();
                    String[] split = ver_compatible.split("_");
                    String[] split2 = ver.split("_");
                    if (split.length != 2 || i2 >= Integer.parseInt(split[0])) {
                        if (split2.length != 2 || i2 >= Integer.parseInt(split2[0])) {
                            return split.length == 1 && i2 < Integer.parseInt(split[0]);
                        }
                        eMUApkTable.setCanUpdate(true);
                        return false;
                    }
                    return true;
                } catch (Exception unused) {
                }
            } catch (Exception e4) {
                e4.getLocalizedMessage();
                return false;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return false;
    }

    public static String q1(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return "";
        }
        if (d2.h(downloadTask.getRomType())) {
            downloadTask.setRomType(downloadTask.getPlugin_num());
        }
        String romType = downloadTask.getRomType();
        StringBuilder sb = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb.append(constantIntEnum.value());
        sb.append("");
        if (romType.equals(sb.toString())) {
            return constantIntEnum.nickName();
        }
        String romType2 = downloadTask.getRomType();
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb2.append(constantIntEnum2.value());
        sb2.append("");
        if (romType2.equals(sb2.toString())) {
            return constantIntEnum2.nickName();
        }
        String romType3 = downloadTask.getRomType();
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb3.append(constantIntEnum3.value());
        sb3.append("");
        if (romType3.equals(sb3.toString())) {
            return constantIntEnum3.nickName();
        }
        String romType4 = downloadTask.getRomType();
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb4.append(constantIntEnum4.value());
        sb4.append("");
        if (romType4.equals(sb4.toString())) {
            return constantIntEnum4.nickName();
        }
        String romType5 = downloadTask.getRomType();
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb5.append(constantIntEnum5.value());
        sb5.append("");
        if (romType5.equals(sb5.toString())) {
            return constantIntEnum5.nickName();
        }
        String romType6 = downloadTask.getRomType();
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb6.append(constantIntEnum6.value());
        sb6.append("");
        if (romType6.equals(sb6.toString())) {
            return constantIntEnum6.nickName();
        }
        String romType7 = downloadTask.getRomType();
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.GBC;
        sb7.append(constantIntEnum7.value());
        sb7.append("");
        if (romType7.equals(sb7.toString())) {
            return constantIntEnum7.nickName();
        }
        String romType8 = downloadTask.getRomType();
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.MD;
        sb8.append(constantIntEnum8.value());
        sb8.append("");
        if (romType8.equals(sb8.toString())) {
            return constantIntEnum8.nickName();
        }
        String romType9 = downloadTask.getRomType();
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.PS;
        sb9.append(constantIntEnum9.value());
        sb9.append("");
        if (romType9.equals(sb9.toString())) {
            return constantIntEnum9.nickName();
        }
        String romType10 = downloadTask.getRomType();
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.SFC;
        sb10.append(constantIntEnum10.value());
        sb10.append("");
        if (romType10.equals(sb10.toString())) {
            return constantIntEnum10.nickName();
        }
        String romType11 = downloadTask.getRomType();
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.WSC;
        sb11.append(constantIntEnum11.value());
        sb11.append("");
        if (romType11.equals(sb11.toString())) {
            return constantIntEnum11.nickName();
        }
        String romType12 = downloadTask.getRomType();
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.N64;
        sb12.append(constantIntEnum12.value());
        sb12.append("");
        if (romType12.equals(sb12.toString())) {
            return constantIntEnum12.nickName();
        }
        String romType13 = downloadTask.getRomType();
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.ONS;
        sb13.append(constantIntEnum13.value());
        sb13.append("");
        if (romType13.equals(sb13.toString())) {
            return constantIntEnum13.nickName();
        }
        String romType14 = downloadTask.getRomType();
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.DC;
        sb14.append(constantIntEnum14.value());
        sb14.append("");
        if (romType14.equals(sb14.toString())) {
            return constantIntEnum14.nickName();
        }
        String romType15 = downloadTask.getRomType();
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum15 = ConstantIntEnum.H5;
        sb15.append(constantIntEnum15.value());
        sb15.append("");
        if (romType15.equals(sb15.toString())) {
            return constantIntEnum15.nickName();
        }
        Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
        while (it2.hasNext()) {
            TipBean next = it2.next();
            String name = next.getName();
            ConstantIntEnum constantIntEnum16 = ConstantIntEnum.GAMEOL;
            if (name.indexOf(constantIntEnum16.nickName()) != -1) {
                return constantIntEnum16.nickName();
            }
            String name2 = next.getName();
            ConstantIntEnum constantIntEnum17 = ConstantIntEnum.CONSOLEGAME;
            if (name2.indexOf(constantIntEnum17.nickName()) != -1) {
                return constantIntEnum17.nickName();
            }
            String id = next.getId();
            StringBuilder sb16 = new StringBuilder();
            ConstantIntEnum constantIntEnum18 = ConstantIntEnum.CHOICENESS;
            sb16.append(constantIntEnum18.value());
            sb16.append("");
            if (id.equals(sb16.toString())) {
                return constantIntEnum18.value() + "";
            }
        }
        return LocalGameActivity.f32927r;
    }

    public static void q2(TextView textView, AppBean appBean) {
        int down_status = appBean.getDown_status();
        PayTagInfo pay_tag_info = appBean.getPay_tag_info();
        String game_id = appBean.getGame_id();
        appBean.getDownload_source_switch_v2();
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setTextSize(2, 11.0f);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(2, 10.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextColor(-12802819);
            textView.setTextSize(2, 12.0f);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void q3(com.github.snowdream.android.app.downloader.DownloadTask r5, android.content.Context r6, com.join.mgps.dto.UpdateIntentDataBean r7) {
        /*
            boolean r0 = com.join.android.app.common.utils.f.k(r6)
            if (r0 == 0) goto Lb
            Y0(r6, r7)
            goto Lcd
        Lb:
            boolean r0 = com.join.android.app.common.utils.f.i(r6)
            if (r0 == 0) goto Lb7
            com.join.mgps.pref.PrefDef_ r0 = new com.join.mgps.pref.PrefDef_
            r0.<init>(r6)
            org.androidannotations.api.sharedpreferences.i r0 = r0.gprsNoticeInfo()
            java.lang.Object r0 = r0.d()
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r1 = 0
            com.join.mgps.enums.Dtype r2 = com.join.mgps.enums.Dtype.chajian
            java.lang.String r2 = r2.name()
            java.lang.String r3 = r5.getFileType()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L3d
            java.lang.String r1 = r5.getRomType()
            com.join.mgps.db.tables.EMUApkTable r1 = a0(r6, r1)
        L3d:
            r2 = 1120403456(0x42c80000, float:100.0)
            java.lang.String r3 = r5.getShowSize()     // Catch: java.lang.Exception -> L56
            float r3 = java.lang.Float.parseFloat(r3)     // Catch: java.lang.Exception -> L56
            if (r1 != 0) goto L4a
            goto L5c
        L4a:
            java.lang.String r4 = r1.getSize()     // Catch: java.lang.Exception -> L54
            float r4 = java.lang.Float.parseFloat(r4)     // Catch: java.lang.Exception -> L54
            float r3 = r3 + r4
            goto L5c
        L54:
            r4 = move-exception
            goto L59
        L56:
            r4 = move-exception
            r3 = 1120403456(0x42c80000, float:100.0)
        L59:
            r4.printStackTrace()
        L5c:
            if (r0 == 0) goto Lb1
            r4 = 1
            if (r0 == r4) goto L9c
            r4 = 2
            if (r0 == r4) goto L87
            r4 = 3
            if (r0 == r4) goto L74
            r5 = 4
            if (r0 == r5) goto L6b
            goto Lcd
        L6b:
            Y0(r6, r7)
            if (r1 == 0) goto Lcd
            W0(r1, r6)
            goto Lcd
        L74:
            int r0 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r0 >= 0) goto L81
            Y0(r6, r7)
            if (r1 == 0) goto Lcd
            W0(r1, r6)
            goto Lcd
        L81:
            java.lang.String r0 = "更新资源大于100M，确认使用数据流量吗？"
            Q2(r5, r0, r6, r1, r7)
            goto Lcd
        L87:
            r0 = 1112014848(0x42480000, float:50.0)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 >= 0) goto L96
            Y0(r6, r7)
            if (r1 == 0) goto Lcd
            W0(r1, r6)
            goto Lcd
        L96:
            java.lang.String r0 = "更新资源大于50M，确认使用数据流量吗？"
            Q2(r5, r0, r6, r1, r7)
            goto Lcd
        L9c:
            r0 = 1106247680(0x41f00000, float:30.0)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 >= 0) goto Lab
            Y0(r6, r7)
            if (r1 == 0) goto Lcd
            W0(r1, r6)
            goto Lcd
        Lab:
            java.lang.String r0 = "更新资源大于30M，确认使用数据流量吗？"
            Q2(r5, r0, r6, r1, r7)
            goto Lcd
        Lb1:
            java.lang.String r0 = "游戏资源有更新，确认使用数据流量更新吗？"
            Q2(r5, r0, r6, r1, r7)
            goto Lcd
        Lb7:
            boolean r5 = com.join.android.app.common.utils.f.j(r6)
            if (r5 != 0) goto Lca
            Y0(r6, r7)
            com.join.mgps.Util.i2 r5 = com.join.mgps.Util.i2.a(r6)
            java.lang.String r6 = "无网络连接"
            r5.b(r6)
            goto Lcd
        Lca:
            Y0(r6, r7)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.q3(com.github.snowdream.android.app.downloader.DownloadTask, android.content.Context, com.join.mgps.dto.UpdateIntentDataBean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if ((com.join.mgps.enums.ConstantIntEnum.VA64.value() + "").equals(r7.getTag_id()) != false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean r0(android.content.Context r6, com.join.mgps.db.tables.EMUApkTable r7) {
        /*
            java.lang.String r0 = ""
            r1 = 0
            if (r7 != 0) goto L6
            return r1
        L6:
            int r2 = r7.getDown_type()     // Catch: java.lang.Exception -> L91
            r3 = 2
            if (r2 != r3) goto L12
            boolean r6 = com.join.android.app.common.utils.h.x(r7)     // Catch: java.lang.Exception -> L91
            return r6
        L12:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L91
            r2.<init>()     // Catch: java.lang.Exception -> L91
            com.join.mgps.enums.ConstantIntEnum r4 = com.join.mgps.enums.ConstantIntEnum.VA32     // Catch: java.lang.Exception -> L91
            int r4 = r4.value()     // Catch: java.lang.Exception -> L91
            r2.append(r4)     // Catch: java.lang.Exception -> L91
            r2.append(r0)     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L91
            java.lang.String r4 = r7.getTag_id()     // Catch: java.lang.Exception -> L91
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L91
            r4 = 1
            if (r2 != 0) goto L51
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L91
            r2.<init>()     // Catch: java.lang.Exception -> L91
            com.join.mgps.enums.ConstantIntEnum r5 = com.join.mgps.enums.ConstantIntEnum.VA64     // Catch: java.lang.Exception -> L91
            int r5 = r5.value()     // Catch: java.lang.Exception -> L91
            r2.append(r5)     // Catch: java.lang.Exception -> L91
            r2.append(r0)     // Catch: java.lang.Exception -> L91
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r7.getTag_id()     // Catch: java.lang.Exception -> L91
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L58
        L51:
            boolean r0 = com.join.android.app.common.utils.APKUtils.J(r6, r7)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L58
            return r4
        L58:
            java.lang.String r0 = r7.getPackage_name()     // Catch: java.lang.Exception -> L91
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Exception -> L8c
            android.content.pm.PackageInfo r6 = r6.getPackageInfo(r0, r1)     // Catch: java.lang.Exception -> L8c
            if (r6 != 0) goto L67
            return r1
        L67:
            int r6 = r6.versionCode     // Catch: java.lang.Exception -> L95
            java.lang.String r7 = r7.getVer()     // Catch: java.lang.Exception -> L95
            java.lang.String r0 = "_"
            java.lang.String[] r7 = r7.split(r0)     // Catch: java.lang.Exception -> L95
            int r0 = r7.length     // Catch: java.lang.Exception -> L95
            if (r0 != r3) goto L7f
            r0 = r7[r1]     // Catch: java.lang.Exception -> L95
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L95
            if (r6 >= r0) goto L7f
            return r4
        L7f:
            int r0 = r7.length     // Catch: java.lang.Exception -> L95
            if (r0 != r4) goto L95
            r7 = r7[r1]     // Catch: java.lang.Exception -> L95
            int r7 = java.lang.Integer.parseInt(r7)     // Catch: java.lang.Exception -> L95
            if (r6 >= r7) goto L8b
            r1 = 1
        L8b:
            return r1
        L8c:
            r6 = move-exception
            r6.getLocalizedMessage()     // Catch: java.lang.Exception -> L91
            return r1
        L91:
            r6 = move-exception
            r6.printStackTrace()
        L95:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.r0(android.content.Context, com.join.mgps.db.tables.EMUApkTable):boolean");
    }

    public static String r1() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void r2(TextView textView, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setTextSize(2, 11.0f);
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(2, 10.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextColor(-12802819);
            textView.setTextSize(2, 12.0f);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void r3(Context context, String str) {
        Intent intent = new Intent("com.tools.AdBroadcast");
        intent.putExtra("action", 6);
        intent.putExtra("gameId", str);
        context.sendBroadcast(intent);
    }

    public static void s(List<GameDetialBookTag> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            for (int i2 = 0; i2 < list.size(); i2++) {
                GameDetialBookTag gameDetialBookTag = list.get(i2);
                View inflate = LayoutInflater.from(context).inflate(R.layout.detial_tag_item_layout, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(R.id.tipText);
                LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.itemBack);
                if (i2 == 0) {
                    linearLayout2.setBackgroundResource(R.drawable.detial_tip_first);
                }
                textView.setText(gameDetialBookTag.getTitle());
                linearLayout.addView(inflate);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean s0(String str, String str2, String str3, String str4) {
        if (str != null && str3 != null && str2 != null && str4 != null) {
            try {
                if (!str.equals("") && !"".equals(str3) && !"".equals(str2) && !"".equals(str4)) {
                    if (Integer.parseInt(str) > Integer.parseInt(str3)) {
                        return true;
                    }
                    return !str2.equals(str4);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    public static String s1(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "#348FD8";
            }
            int parseColor = Color.parseColor(str);
            int red = Color.red(parseColor);
            int green = Color.green(parseColor);
            int blue = Color.blue(parseColor);
            double d4 = red;
            Double.isNaN(d4);
            double d5 = green;
            Double.isNaN(d5);
            double d6 = blue;
            Double.isNaN(d6);
            return ((d4 * 0.299d) + (d5 * 0.587d)) + (d6 * 0.114d) < 192.0d ? str : "#348FD8";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "#348FD8";
        }
    }

    public static void s2(TextView textView, GInfoBean gInfoBean) {
        int intValue = gInfoBean.getDown_state().intValue();
        PayTagInfo pay_tag_info = gInfoBean.getPay_tag_info();
        String id = gInfoBean.getId();
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        boolean z3 = m0(pay_tag_info, id) > 0;
        if (intValue == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setTextSize(2, 11.0f);
        } else if (intValue == 2 && !z3) {
            textView.setText("即将开放");
            textView.setTextSize(2, 10.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
        } else if (intValue == 6 && !z3) {
            textView.setText("预约");
            textView.setTextSize(2, 12.0f);
            textView.setTextColor(-12802819);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextColor(-12802819);
            textView.setTextSize(2, 12.0f);
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
        }
    }

    public static void s3(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if ((downloadTask.getModInfoBean() != null && downloadTask.getModInfoBean().isIncompatible()) || ((downloadTask.getSingleGameModInfoBean() != null && downloadTask.getSingleGameModInfoBean().isIncompatible()) || (downloadTask.getModInfoBean() == null && downloadTask.getSingleGameModInfoBean() == null))) {
            ModPromptNormalDialog modPromptNormalDialog = new ModPromptNormalDialog(context);
            Resources resources = context.getResources();
            String string = resources.getString(R.string.mod_prompt_tips);
            modPromptNormalDialog.show(string, resources.getString(R.string.mod_prompt_game_incompatible, "" + downloadTask.getShowName(), "" + Build.VERSION.RELEASE), resources.getString(R.string.game_start_continue), resources.getString(R.string.game_start_standard), new y(downloadTask, context, modPromptNormalDialog));
            return;
        }
        t3(context, downloadTask);
    }

    public static void t(List<GameDetialBookTag> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            for (int i2 = 0; i2 < list.size(); i2++) {
                GameDetialBookTag gameDetialBookTag = list.get(i2);
                View inflate = LayoutInflater.from(context).inflate(R.layout.detial_tag_item_modlethree_layout, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(R.id.tipText);
                LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.itemBack);
                if (i2 == 0) {
                    linearLayout2.setBackgroundResource(R.drawable.detial_tip_first_modlethree);
                }
                textView.setText(gameDetialBookTag.getTitle());
                linearLayout.addView(inflate);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean t0(String str, String str2) {
        if (str != null) {
            try {
                if (!str.equals("") && !"1".equals(str) && !"0".equals(str)) {
                    if (str2 != null && !"".equals(str2)) {
                        if (Integer.parseInt(str) > Integer.parseInt(str2)) {
                        }
                    }
                    return true;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    public static String t1(String str) {
        try {
            int parseColor = Color.parseColor(str);
            int red = Color.red(parseColor);
            int green = Color.green(parseColor);
            int blue = Color.blue(parseColor);
            int parseColor2 = Color.parseColor("#F7F8F9");
            int red2 = Color.red(parseColor2);
            int green2 = Color.green(parseColor2);
            int blue2 = Color.blue(parseColor2);
            int i2 = red - red2;
            int i4 = green - green2;
            int i5 = (i2 * i2) + (i4 * i4);
            int i6 = blue - blue2;
            int i7 = i5 + (i6 * i6);
            StringBuilder sb = new StringBuilder();
            sb.append("getNotSimilarColor: ");
            sb.append(red);
            sb.append(" ");
            sb.append(red2);
            sb.append(" ");
            sb.append(green);
            sb.append(" ");
            sb.append(green2);
            sb.append(" ");
            sb.append(blue);
            sb.append(" ");
            sb.append(blue2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getNotSimilarColor: ");
            sb2.append(i7);
            return i7 > 10000 ? str : "#348FD8";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "#348FD8";
        }
    }

    public static void t2(TextView textView, View view, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        view.setEnabled(true);
        boolean z3 = m0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z3) {
            textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
        } else if (down_status == 2 && !z3) {
            textView.setText("即将开放");
            view.setEnabled(false);
        } else if (down_status == 6 && !z3) {
            textView.setText("预约");
        } else {
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
            } else {
                textView.setText(textView.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            textView.setTextSize(2, 13.0f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void t3(android.content.Context r13, com.github.snowdream.android.app.downloader.DownloadTask r14) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.UtilsMy.t3(android.content.Context, com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    public static void u(List<GameTagInfoV2_2Bean> list, String str, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (GameTagInfoV2_2Bean gameTagInfoV2_2Bean : list) {
                if (gameTagInfoV2_2Bean.getId() != null && !gameTagInfoV2_2Bean.getId().equals("") && !gameTagInfoV2_2Bean.getId().equals("44") && !gameTagInfoV2_2Bean.getId().equals("45") && !gameTagInfoV2_2Bean.getId().equals("47") && !gameTagInfoV2_2Bean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(gameTagInfoV2_2Bean.getName() + "");
                    textView.setTextColor(Color.parseColor(gameTagInfoV2_2Bean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(context.getResources().getDimension(R.dimen.wdp8));
                    textView.setBackgroundDrawable(h2.a(context, gameTagInfoV2_2Bean.getColor() + ""));
                    linearLayout.addView(textView);
                }
            }
            TextView textView2 = new TextView(context);
            textView2.setLayoutParams(layoutParams);
            textView2.setGravity(17);
            textView2.setText(str + "");
            textView2.setTextColor(Color.parseColor("#81dfce"));
            textView2.setPadding(0, 0, 0, 0);
            textView2.setSingleLine(true);
            textView2.setTextSize(context.getResources().getDimension(R.dimen.wdp8));
            textView2.setBackgroundDrawable(h2.a(context, "#81dfce"));
            linearLayout.addView(textView2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void u0(Context context, String str, String str2) throws IOException {
        File file = new File(str2);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            Boolean valueOf = Boolean.valueOf(parentFile.mkdirs());
            StringBuilder sb = new StringBuilder();
            sb.append(valueOf);
            sb.append("创建文件是否成功");
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[1024];
        for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
            fileOutputStream.write(bArr, 0, read);
        }
        fileOutputStream.flush();
        open.close();
        fileOutputStream.close();
    }

    public static boolean u1(Context context, String str, DownloadTask downloadTask, EMUApkTable eMUApkTable, boolean z3) {
        EMUUpdateTable n4 = n1.q.o().n(str);
        if (n4 == null) {
            return false;
        }
        downloadTask.setUrl(n4.getDown_url_remote());
        downloadTask.setCfg_down_url(n4.getCfg_down_url());
        if (n4.getScreenshot_pic() != null && !n4.getScreenshot_pic().equals("")) {
            downloadTask.setScreenshot_pic(n4.getScreenshot_pic());
        }
        boolean t02 = t0(n4.getRom_lowest_ver(), downloadTask.getVer());
        boolean t03 = t0(n4.getVer(), downloadTask.getVer());
        boolean t04 = t0(n4.getCfg_lowest_ver(), downloadTask.getCfg_ver());
        boolean t05 = t0(n4.getCfg_ver(), downloadTask.getCfg_ver());
        boolean t06 = t0(n4.getSource_lowest_ver(), downloadTask.getSource_ver());
        boolean t07 = t0(n4.getSource_ver(), downloadTask.getSource_ver());
        int parseInt = Integer.parseInt(downloadTask.getPlugin_num());
        if ((Build.VERSION.SDK_INT > 29 && (parseInt == ConstantIntEnum.DC.value() || parseInt == ConstantIntEnum.N64.value() || parseInt == ConstantIntEnum.NDS.value() || parseInt == ConstantIntEnum.ONS.value() || parseInt == ConstantIntEnum.VA32.value() || parseInt == ConstantIntEnum.VA64.value())) || parseInt == ConstantIntEnum.PS2.value()) {
            DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
            boolean contains = downloadTask.getGameZipPath().contains(context.getPackageName());
            boolean contains2 = B.getGameZipPath().contains(context.getPackageName());
            if (contains && contains2) {
                if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    c2(context, "android.permission.WRITE_EXTERNAL_STORAGE");
                    return true;
                }
                Intent intent = new Intent(context, CopyDialogActivity.class);
                intent.putExtra("gameid", downloadTask.getCrc_link_type_val());
                context.startActivity(intent);
                return true;
            } else if (contains && !contains2) {
                downloadTask.setGameZipPath(B.getGameZipPath());
            }
        }
        if (t03 || t05 || t07 || t02) {
            q3(downloadTask, context, new UpdateIntentDataBean(t02, t03, t04, t05, t06, t07, downloadTask, eMUApkTable, z3));
            return true;
        }
        return false;
    }

    public static void u2(TipNew tipNew, View view) {
        try {
            TextView textView = (TextView) view.findViewById(R.id.moneyText);
            if (textView == null) {
                return;
            }
            if (tipNew != null && tipNew.getCoin() != null) {
                textView.setText(tipNew.getCoin().getName());
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void u3(Context context, String str, String str2, String str3) {
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(context, str);
        createWXAPI.registerApp(str);
        WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
        req.userName = str2;
        req.path = str3;
        req.miniprogramType = 0;
        createWXAPI.sendReq(req);
    }

    private static void v(Context context, StartGameMeta startGameMeta, EMUApkTable eMUApkTable) {
        startGameMeta.setApkOrSo(eMUApkTable.getDown_type());
        startGameMeta.setAssetspath(eMUApkTable.getApkPath() + "/assets/");
        startGameMeta.setSopath(eMUApkTable.getApkPath() + "/so/");
        if (eMUApkTable.getDown_type() == 2) {
            startGameMeta.setPackageName(context.getPackageName());
        }
        if (context == null) {
            return;
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        startGameMeta.setPspAdShowTime(prefDef_.pspAdShowTime().d().intValue());
        startGameMeta.setPspAdShowTimeSwitch(prefDef_.pspAdShowTimeSwitch().d().intValue());
        startGameMeta.setChannelId(com.papa.sim.statistic.k.a(context));
    }

    public static boolean v0(String str, String str2) {
        try {
            File file = new File(str2);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
            File file2 = new File(str);
            if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (-1 != read) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("copyFile:  Exception");
            sb.append(e4.getMessage());
            e4.printStackTrace();
            return false;
        }
    }

    public static String v1(List<TipBean> list) {
        for (TipBean tipBean : list) {
            if ("46".equals(tipBean.getId())) {
                return tipBean.getId();
            }
            EMUApkTable j02 = j0(tipBean.getId());
            if (j02 != null) {
                return j02.getTag_id();
            }
        }
        return System.currentTimeMillis() + "";
    }

    public static void v2(TipNew tipNew, View view, DownloadTask downloadTask) {
        TextView textView;
        try {
            if (view instanceof TextView) {
                textView = (TextView) view;
            } else {
                textView = (TextView) view.findViewById(R.id.moneyText);
            }
            if (textView == null) {
                return;
            }
            if (downloadTask != null && downloadTask.getStatus() != 0) {
                textView.setVisibility(4);
            } else if (tipNew != null && tipNew.getCoin() != null) {
                textView.setText(tipNew.getCoin().getName());
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String v3(String str) {
        if (str.contains(g0.f27568a)) {
            return !str.contains("/58/") ? str.substring(0, str.lastIndexOf(g0.f27568a)) : str;
        }
        return str;
    }

    public static void w(GameDetailRankingTag gameDetailRankingTag, LinearLayout linearLayout, Context context) {
        if (gameDetailRankingTag == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, linearLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14), 0);
            if (gameDetailRankingTag.getHot_game() != null) {
                View inflate = View.inflate(context, R.layout.item_game_detail_bt_ranking_tag, null);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.iv_icon);
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_game_detail_bt_ranking);
                ((TextView) inflate.findViewById(R.id.tv_title)).setText(Html.fromHtml(gameDetailRankingTag.getHot_game().getTitle()));
                linearLayout.addView(inflate, layoutParams);
                inflate.setOnClickListener(new d(context, gameDetailRankingTag));
            }
            if (gameDetailRankingTag.getTag_game() != null) {
                View inflate2 = View.inflate(context, R.layout.item_game_detail_bt_ranking_tag, null);
                ImageView imageView2 = (ImageView) inflate2.findViewById(R.id.iv_icon);
                imageView2.setImageResource(R.drawable.ic_game_detail_bt_ranking);
                ((TextView) inflate2.findViewById(R.id.tv_title)).setText(Html.fromHtml(gameDetailRankingTag.getTag_game().getTitle()));
                imageView2.setVisibility(0);
                linearLayout.addView(inflate2, layoutParams);
                inflate2.setOnClickListener(new e(context, gameDetailRankingTag));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean w0(Context context, String str, String str2) {
        try {
            InputStream open = context.getAssets().open(str);
            File file = new File(str2);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            } else {
                File file2 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                file.renameTo(file2);
                file2.delete();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    open.close();
                    return true;
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static String w1(int i2) {
        return ConstantIntEnum.FBA.value() == i2 ? "arc" : ConstantIntEnum.NDS.value() == i2 ? "nds" : ConstantIntEnum.PS2.value() == i2 ? "ps2" : ConstantIntEnum.GBA.value() == i2 ? "gba" : ConstantIntEnum.PSP.value() == i2 ? "psp" : ConstantIntEnum.FC.value() == i2 ? "fc" : ConstantIntEnum.AVG.value() == i2 ? "avg" : ConstantIntEnum.FIGHT.value() == i2 ? "fight" : ConstantIntEnum.SFC.value() == i2 ? "sfc" : ConstantIntEnum.WORLD.value() == i2 ? "world" : ConstantIntEnum.NET.value() == i2 ? com.alipay.sdk.app.statistic.c.f9616k : ConstantIntEnum.MGAME.value() == i2 ? "mgame" : ConstantIntEnum.DATA.value() == i2 ? "data" : ConstantIntEnum.OBB.value() == i2 ? "obb" : ConstantIntEnum.MD.value() == i2 ? "md" : ConstantIntEnum.GBA_ENHANCE.value() == i2 ? "gba" : ConstantIntEnum.PS.value() == i2 ? "ps" : ConstantIntEnum.WSC.value() == i2 ? "wsc" : ConstantIntEnum.GBC.value() == i2 ? "gbc" : ConstantIntEnum.N64.value() == i2 ? "n64" : ConstantIntEnum.ONS.value() == i2 ? "ons" : ConstantIntEnum.DC.value() == i2 ? "dc" : "";
    }

    public static void w2(TipNew tipNew, TextView textView) {
        if (textView == null) {
            return;
        }
        if (tipNew != null && tipNew.getCoin() != null) {
            textView.setText(tipNew.getCoin().getName());
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(4);
    }

    public static void w3(Context context, DownloadTask downloadTask) {
        a0.c0(context).a0(context, downloadTask);
    }

    public static void x(String str, int i2, String str2, TipNew tipNew, LinearLayout linearLayout, Context context) {
        if (d2.h(str2)) {
            str2 = "1";
        }
        linearLayout.removeAllViews();
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        TextView textView3 = (TextView) inflate.findViewById(R.id.pingfen);
        TextView textView4 = (TextView) inflate.findViewById(R.id.ad_text);
        textView4.setSingleLine();
        textView4.setVisibility(0);
        textView4.setTextColor(Color.parseColor("#AAAAAA"));
        textView4.setBackgroundResource(R.drawable.stroke_red_tip_butn);
        textView4.setText("BT");
        textView.setText(d2.c(i2));
        ((TextView) inflate.findViewById(R.id.appsize)).setText(Y1((long) (Double.parseDouble(str2) * 1048576.0d)));
        if (tipNew != null) {
            if (tipNew.getModel() != null) {
                textView2.setText(tipNew.getModel().getName());
            } else {
                textView2.setVisibility(8);
            }
            if (tipNew.getDown_res() != null) {
                textView.setText(tipNew.getDown_res().getName());
            }
        } else {
            textView2.setVisibility(8);
        }
        if (d2.i(str) && !"0".equals(str) && !"0.0".equals(str)) {
            textView3.setText(str + "分");
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        linearLayout.addView(inflate);
    }

    private static void x0(String str) {
        try {
            File file = new File(str.replace(com.join.mgps.Util.u.f27845d, Environment.getExternalStorageDirectory().getAbsolutePath()));
            if (file.exists()) {
                boolean delete = delete(file);
                StringBuilder sb = new StringBuilder();
                sb.append(delete);
                sb.append(str);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static int x1(Context context) {
        DownloadTask B = g1.f.G().B(com.papa.sim.statistic.p.f55578i);
        if (B == null) {
            return 1;
        }
        List<UserPurchaseInfo> o3 = n1.m0.p().o(AccountUtil_.getInstance_(context).getUid(), B.getCrc_link_type_val());
        if (B.getLock_sp() == 0) {
            return 0;
        }
        if (o3 != null && o3.size() > 0) {
            UserPurchaseInfo userPurchaseInfo = o3.get(0);
            String isOpenSp = userPurchaseInfo.getIsOpenSp();
            String spExpireTime = userPurchaseInfo.getSpExpireTime();
            if (spExpireTime != null && !spExpireTime.equals("")) {
                try {
                    spExpireTime = new String(Base64Utils.decode(spExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
            if (isOpenSp != null && isOpenSp.equals("true") && spExpireTime != null && Long.parseLong(spExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                return 2;
            }
        }
        return 1;
    }

    public static String x2(double d4) {
        return new DecimalFormat("###.00").format(d4);
    }

    public static void x3(Context context, CommonGameInfoBean commonGameInfoBean) {
        a0.c0(context).K(context, commonGameInfoBean);
    }

    public static void y(String str, int i2, String str2, TipNew tipNew, List<TipBean> list, LinearLayout linearLayout, Context context) {
        String str3;
        TipBean tipBean;
        TipBean tipBean2;
        if (d2.h(str2)) {
            str2 = "1";
        }
        linearLayout.removeAllViews();
        TipBean tipBean3 = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout_similar, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.appsize);
        TextView textView2 = (TextView) inflate.findViewById(R.id.appType);
        if (tipNew != null) {
            TipBean model = tipNew.getModel();
            if (model != null) {
                if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                    str3 = "安卓";
                    if (list != null) {
                        ArrayList<TipBean> arrayList = new ArrayList();
                        for (TipBean tipBean4 : list) {
                            if (tipBean4.getId() != null && !tipBean4.getId().equals("") && !tipBean4.getId().equals("44") && !tipBean4.getId().equals("45") && !tipBean4.getId().equals("47") && !tipBean4.getId().equals("48")) {
                                arrayList.add(tipBean4);
                            }
                        }
                        int i4 = 0;
                        if (arrayList.size() == 2) {
                            TipBean tipBean5 = (TipBean) arrayList.get(0);
                            str3 = tipBean5 != null ? tipBean5.getName() : "安卓";
                            if (arrayList.size() > 1 && (tipBean2 = (TipBean) arrayList.get(1)) != null) {
                                str3 = str3 + " · " + tipBean2.getName();
                            }
                        } else if (arrayList.size() == 1) {
                            if (((TipBean) arrayList.get(0)) != null) {
                                str3 = "安卓 · " + tipBean.getName();
                            }
                        } else {
                            for (TipBean tipBean6 : arrayList) {
                                if (!"7".equals(tipBean6.getId())) {
                                    str3 = i4 == 0 ? tipBean6.getName() : str3 + "·" + tipBean6.getName();
                                    i4++;
                                    if (i4 == 2) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    textView2.setText(str3);
                } else {
                    if (list != null) {
                        Iterator<TipBean> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            TipBean next = it2.next();
                            if (d2.i(next.getId()) && !next.getId().equals(tipNew.getModel().getId())) {
                                tipBean3 = next;
                                break;
                            }
                        }
                    }
                    if (tipBean3 != null) {
                        textView2.setText(tipNew.getModel().getName() + " · " + tipBean3.getName());
                    } else {
                        textView2.setText(tipNew.getModel().getName());
                    }
                }
            } else {
                textView2.setVisibility(8);
            }
        } else {
            textView2.setVisibility(8);
        }
        long parseDouble = (long) (Double.parseDouble(str2) * 1048576.0d);
        if (!d2.i(str) || "0".equals(str) || "0.0".equals(str)) {
            textView.setText(Y1(parseDouble));
        } else {
            textView.setText(Y1(parseDouble) + " · " + str + "分");
        }
        linearLayout.addView(inflate);
    }

    public static void y0(DownloadTask downloadTask) {
        try {
            File file = new File(downloadTask.getPath());
            String gameZipPath = downloadTask.getGameZipPath();
            if (gameZipPath != null && !gameZipPath.equals("")) {
                if (!downloadTask.getFileType().equals(Dtype.android.name())) {
                    String fileType = downloadTask.getFileType();
                    Dtype dtype = Dtype.chajian;
                    if (!fileType.equals(dtype.name()) && !APKUtils.E(downloadTask)) {
                        if (!downloadTask.getFileType().equals(dtype.name())) {
                            delete(new File(gameZipPath).getParentFile());
                        }
                    }
                }
                delete(new File(gameZipPath));
            }
            if (file.exists()) {
                delete(file);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static EMUApkTable y1(String str) {
        EMUApkTable j02;
        if (str == null || (j02 = j0(str)) == null) {
            return null;
        }
        return j02;
    }

    public static void y2(TextView textView, DetailResultBeanV3 detailResultBeanV3) {
        try {
            int down_status = detailResultBeanV3.getDown_status();
            detailResultBeanV3.getPay_tag_info();
            String crc_sign_id = detailResultBeanV3.getCrc_sign_id();
            detailResultBeanV3.getDownload_source_switch_v2();
            textView.setEnabled(true);
            int m02 = m0(detailResultBeanV3.getPay_tag_info(), detailResultBeanV3.getCrc_sign_id());
            boolean z3 = l0(m02, crc_sign_id) > 0;
            if (down_status == 3 && !z3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else if ((down_status == 2 || down_status == 6) && !z3) {
                textView.setText("即将开放");
                textView.setEnabled(false);
                textView.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            } else if (down_status == 6 && !z3) {
                textView.setText("预约");
                textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
                if (m02 > 0) {
                    textView.setText(textView.getResources().getString(R.string.pay_game_amount, d2.l(m02)));
                } else {
                    textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void y3(Context context, String str) {
        new c(str, context).start();
    }

    public static void z(List<RecGameTagBean> list, LinearLayout linearLayout, Context context) {
        if (list == null) {
            return;
        }
        try {
            linearLayout.removeAllViews();
            for (RecGameTagBean recGameTagBean : list) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.rightMargin = (int) context.getResources().getDimension(R.dimen.wdp12);
                View inflate = View.inflate(context, R.layout.item_game_detail_similar_game_tag, null);
                TextView textView = (TextView) inflate.findViewById(R.id.tv_text);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.iv_label);
                if (recGameTagBean.getType() != 1 && recGameTagBean.getType() != 3) {
                    if (recGameTagBean.getType() == 4) {
                        imageView.setVisibility(0);
                        imageView.setImageResource(R.drawable.ic_similar_game_hot);
                    } else {
                        imageView.setVisibility(8);
                    }
                    textView.setText(recGameTagBean.getTitle());
                    linearLayout.addView(inflate, layoutParams);
                }
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_similar_game_rank);
                textView.setText(recGameTagBean.getTitle());
                linearLayout.addView(inflate, layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void z0(Context context, String str, String str2, String str3, String str4) {
        File file;
        File file2;
        List<RomArchived> m4 = f0.m(str, str2);
        boolean z3 = false;
        if (str.equals("31")) {
            boolean z4 = false;
            boolean z5 = false;
            for (RomArchived romArchived : m4) {
                if (romArchived.getFileName().contains("_v2")) {
                    z4 = true;
                } else {
                    z5 = true;
                }
            }
            Iterator<RomArchived> it2 = m4.iterator();
            while (it2.hasNext()) {
                RomArchived next = it2.next();
                if (!z5 || z4) {
                    if (z5 && z4) {
                        if (j1.a(str3)) {
                            if (next.getFileName().contains("_v2")) {
                                it2.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it2.remove();
                        }
                    }
                } else if (!j1.a(str3)) {
                    it2.remove();
                }
            }
        }
        if (str.equals("31")) {
            boolean z6 = false;
            for (RomArchived romArchived2 : m4) {
                if (romArchived2.getFileName().contains("_v2")) {
                    z3 = true;
                } else {
                    z6 = true;
                }
            }
            Iterator<RomArchived> it3 = m4.iterator();
            while (it3.hasNext()) {
                RomArchived next2 = it3.next();
                if (!z6 || z3) {
                    if (z6 && z3) {
                        if (j1.a(str3)) {
                            if (next2.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next2.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                } else if (!j1.a(str3)) {
                    it3.remove();
                }
            }
        }
        if (m4 == null || m4.size() <= 0) {
            return;
        }
        for (RomArchived romArchived3 : m4) {
            String archivedPath = romArchived3.getArchivedPath();
            delete(new File(archivedPath));
            x0(archivedPath);
            String str5 = context.getFilesDir().toString() + "/emus/" + w1(Integer.parseInt(str4)) + net.lingala.zip4j.util.e.F0 + new File(v3(str2)).getName() + net.lingala.zip4j.util.e.F0;
            delete(new File(str5 + file.getName()));
            String replace = romArchived3.getArchivedImagePath().replace("file://", "");
            delete(new File(replace));
            delete(new File(str5 + file2.getName()));
            x0(replace);
        }
    }

    public static boolean z1(Context context, DownloadTask downloadTask) {
        int i2;
        if (downloadTask != null && downloadTask.getMax_an_compatible_ver() > 0 && ((i2 = Build.VERSION.SDK_INT) < downloadTask.getMin_an_compatible_ver() || i2 > downloadTask.getMax_an_compatible_ver())) {
            com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(context, R.style.MyDialog);
            dVar.e(new g(context, downloadTask, dVar));
            dVar.g(new h(dVar));
            dVar.h("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
            dVar.show();
            return true;
        }
        return false;
    }

    public static void z2(TextView textView, GamedetialModleFourBean gamedetialModleFourBean) {
        try {
            int down_status = gamedetialModleFourBean.getDown_status();
            gamedetialModleFourBean.getPay_tag_info();
            String game_id = gamedetialModleFourBean.getGame_id();
            gamedetialModleFourBean.getDownload_source_switch_v2();
            textView.setEnabled(true);
            int m02 = m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id());
            boolean z3 = l0(m02, game_id) > 0;
            if (down_status == 3 && !z3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else if ((down_status == 2 || down_status == 6) && !z3) {
                textView.setText("即将开放");
                textView.setEnabled(false);
                textView.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            } else if (down_status == 6 && !z3) {
                textView.setText("预约");
                textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else {
                textView.setText(textView.getResources().getString(R.string.download_status_download));
                if (m02 > 0) {
                    textView.setText(textView.getResources().getString(R.string.pay_game_amount, d2.l(m02)));
                } else {
                    textView.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void z3(DownloadTask downloadTask) {
        String str;
        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
            return;
        }
        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
        try {
            str = JsonMapper.getInstance().toJson(B);
        } catch (Exception e4) {
            e4.printStackTrace();
            str = "";
        }
        DownlodTaskCopyTable n4 = n1.n.o().n(B.getCrc_link_type_val());
        DownlodTaskCopyTable downlodTaskCopyTable = new DownlodTaskCopyTable();
        if (n4 != null) {
            downlodTaskCopyTable.setId(n4.getId());
        }
        downlodTaskCopyTable.setGameId(B.getCrc_link_type_val());
        downlodTaskCopyTable.setDownloadTask(str);
        n1.n.o().m(downlodTaskCopyTable);
        B.setUrl(B.getCfg_down_url());
        B.setDownloadType(2);
        B.setFileType(Dtype.apk.name());
        g1.f.G().m(B);
        String path = B.getPath();
        if (path != null && !path.equals("")) {
            File file = new File(path);
            if (file.exists()) {
                delete(file);
            }
        }
        com.php25.PDownload.d.c(B, null);
    }
}
