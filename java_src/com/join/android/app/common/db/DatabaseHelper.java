package com.join.android.app.common.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import com.join.android.app.common.db.tables.Account;
import com.join.android.app.common.db.tables.Chapter;
import com.join.android.app.common.db.tables.Course;
import com.join.android.app.common.db.tables.Live;
import com.join.android.app.common.db.tables.LocalCourse;
import com.join.android.app.common.db.tables.Notice;
import com.join.android.app.common.db.tables.Order;
import com.join.android.app.common.db.tables.Reference;
import com.join.android.app.common.db.tables.ResourceShare;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.db.tables.AppBeanMainTable;
import com.join.mgps.db.tables.AppBeanTable;
import com.join.mgps.db.tables.AppMoreBeanTable;
import com.join.mgps.db.tables.AppTimeDataTable;
import com.join.mgps.db.tables.BannerAndTablesTable;
import com.join.mgps.db.tables.CacheTable;
import com.join.mgps.db.tables.CategoryRecordTable;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.db.tables.DownloadFileTable;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.ForumSearchRecordTable;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.db.tables.HeadPortraitTable;
import com.join.mgps.db.tables.InformatonPointTable;
import com.join.mgps.db.tables.JPushRecordTable;
import com.join.mgps.db.tables.JoystickTable;
import com.join.mgps.db.tables.LatestGameFileTable;
import com.join.mgps.db.tables.ModleBeanTable;
import com.join.mgps.db.tables.PAPARecentlyTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.RecomDatabeanTable;
import com.join.mgps.db.tables.RewardBananaTable;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.db.tables.StatisticTable;
import com.join.mgps.db.tables.TipBeanTable;
import com.join.mgps.db.tables.TokenTable;
import com.join.mgps.db.tables.UserPurchaseInfo;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import java.sql.SQLException;
/* loaded from: classes.dex */
public class DatabaseHelper extends OrmLiteSqliteOpenHelper {
    private static String F0 = "helloAndroid.db";
    private static final int G0 = 52;
    private RuntimeExceptionDao<AppBeanMainTable, Integer> A;
    private RuntimeExceptionDao<CloudDownRecoderTable, Integer> A0;
    private RuntimeExceptionDao<AppBeanTable, Integer> B;
    private RuntimeExceptionDao<PlayGameTimeTable, Integer> B0;
    private RuntimeExceptionDao<PurchasedListTable, Integer> C;
    private RuntimeExceptionDao<RewardBananaTable, Integer> C0;
    private RuntimeExceptionDao<JPushRecordTable, Integer> D;
    private RuntimeExceptionDao<CloudArchiveTable, Integer> D0;
    private RuntimeExceptionDao<CacheTable, Integer> E;
    private RuntimeExceptionDao<VideoWatchLogTable, Integer> E0;
    private RuntimeExceptionDao<TokenTable, Integer> F;
    private RuntimeExceptionDao<HandShankTable, Integer> G;
    private RuntimeExceptionDao<ShowViewDataBeanTable, Integer> H;
    private RuntimeExceptionDao<JoystickTable, Integer> I;
    private RuntimeExceptionDao<PAPARecentlyTable, Integer> J;
    private RuntimeExceptionDao<ForumTable, Integer> K;

    /* renamed from: a  reason: collision with root package name */
    String f16861a;

    /* renamed from: b  reason: collision with root package name */
    private Context f16862b;

    /* renamed from: c  reason: collision with root package name */
    private RuntimeExceptionDao<Order, Integer> f16863c;

    /* renamed from: d  reason: collision with root package name */
    private RuntimeExceptionDao<Account, Integer> f16864d;

    /* renamed from: e  reason: collision with root package name */
    private RuntimeExceptionDao<Course, Integer> f16865e;

    /* renamed from: f  reason: collision with root package name */
    private RuntimeExceptionDao<Live, Integer> f16866f;

    /* renamed from: g  reason: collision with root package name */
    private RuntimeExceptionDao<Notice, Integer> f16867g;

    /* renamed from: h  reason: collision with root package name */
    private RuntimeExceptionDao<ResourceShare, Integer> f16868h;

    /* renamed from: i  reason: collision with root package name */
    private RuntimeExceptionDao<LocalCourse, Integer> f16869i;

    /* renamed from: j  reason: collision with root package name */
    private RuntimeExceptionDao<Chapter, Integer> f16870j;

    /* renamed from: k  reason: collision with root package name */
    private RuntimeExceptionDao<Reference, Integer> f16871k;

    /* renamed from: l  reason: collision with root package name */
    private RuntimeExceptionDao<TipBeanTable, Integer> f16872l;

    /* renamed from: m  reason: collision with root package name */
    private RuntimeExceptionDao<BannerAndTablesTable, Integer> f16873m;

    /* renamed from: n  reason: collision with root package name */
    private RuntimeExceptionDao<EMUApkTable, Integer> f16874n;

    /* renamed from: n0  reason: collision with root package name */
    private RuntimeExceptionDao<InformatonPointTable, Integer> f16875n0;

    /* renamed from: o  reason: collision with root package name */
    private RuntimeExceptionDao<EMUApkArenaTable, Integer> f16876o;

    /* renamed from: o0  reason: collision with root package name */
    private RuntimeExceptionDao<WarMatchAndLocalTable, Integer> f16877o0;

    /* renamed from: p  reason: collision with root package name */
    private RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> f16878p;

    /* renamed from: p0  reason: collision with root package name */
    private RuntimeExceptionDao<AppMoreBeanTable, Integer> f16879p0;

    /* renamed from: q  reason: collision with root package name */
    private RuntimeExceptionDao<AppTimeDataTable, Integer> f16880q;

    /* renamed from: q0  reason: collision with root package name */
    private RuntimeExceptionDao<DownloadUrlTable, Integer> f16881q0;

    /* renamed from: r  reason: collision with root package name */
    private RuntimeExceptionDao<StatisticTable, Integer> f16882r;

    /* renamed from: r0  reason: collision with root package name */
    private RuntimeExceptionDao<CloudBackupsDataTable, Integer> f16883r0;

    /* renamed from: s  reason: collision with root package name */
    private RuntimeExceptionDao<SearchRecordTable, Integer> f16884s;

    /* renamed from: s0  reason: collision with root package name */
    private RuntimeExceptionDao<CategoryRecordTable, Integer> f16885s0;

    /* renamed from: t  reason: collision with root package name */
    private RuntimeExceptionDao<DownloadFileTable, Integer> f16886t;

    /* renamed from: t0  reason: collision with root package name */
    private RuntimeExceptionDao<FightMainTable, Integer> f16887t0;

    /* renamed from: u  reason: collision with root package name */
    private RuntimeExceptionDao<EMUUpdateTable, Integer> f16888u;

    /* renamed from: u0  reason: collision with root package name */
    private RuntimeExceptionDao<UserPurchaseInfo, Integer> f16889u0;

    /* renamed from: v  reason: collision with root package name */
    private RuntimeExceptionDao<LatestGameFileTable, Integer> f16890v;

    /* renamed from: v0  reason: collision with root package name */
    private RuntimeExceptionDao<HeadPortraitTable, Integer> f16891v0;

    /* renamed from: w  reason: collision with root package name */
    private RuntimeExceptionDao<DownloadTask, Integer> f16892w;

    /* renamed from: w0  reason: collision with root package name */
    private RuntimeExceptionDao<DownloadHistoryTable, Integer> f16893w0;

    /* renamed from: x  reason: collision with root package name */
    private RuntimeExceptionDao<DownlodTaskCopyTable, Integer> f16894x;

    /* renamed from: x0  reason: collision with root package name */
    private RuntimeExceptionDao<ForumSearchRecordTable, Integer> f16895x0;

    /* renamed from: y  reason: collision with root package name */
    private RuntimeExceptionDao<RecomDatabeanTable, Integer> f16896y;

    /* renamed from: y0  reason: collision with root package name */
    private RuntimeExceptionDao<GameMainTable, Integer> f16897y0;

    /* renamed from: z  reason: collision with root package name */
    private RuntimeExceptionDao<ModleBeanTable, Integer> f16898z;

    /* renamed from: z0  reason: collision with root package name */
    private RuntimeExceptionDao<H5GameAccountDataTable, Integer> f16899z0;

    public DatabaseHelper(Context context) {
        super(context, F0, (SQLiteDatabase.CursorFactory) null, 52, (int) R.raw.ormlite_config);
        this.f16861a = getClass().getSimpleName();
        this.f16863c = null;
        this.f16864d = null;
        this.f16865e = null;
        this.f16866f = null;
        this.f16867g = null;
        this.f16868h = null;
        this.f16869i = null;
        this.f16870j = null;
        this.f16871k = null;
        this.f16872l = null;
        this.f16873m = null;
        this.f16874n = null;
        this.f16876o = null;
        this.f16878p = null;
        this.f16880q = null;
        this.f16882r = null;
        this.f16884s = null;
        this.f16886t = null;
        this.f16888u = null;
        this.f16890v = null;
        this.f16892w = null;
        this.f16894x = null;
        this.f16896y = null;
        this.f16898z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.f16875n0 = null;
        this.f16877o0 = null;
        this.f16879p0 = null;
        this.f16885s0 = null;
        this.f16887t0 = null;
        this.f16889u0 = null;
        this.f16891v0 = null;
        this.f16893w0 = null;
        this.f16895x0 = null;
        this.f16897y0 = null;
        this.f16899z0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        this.D0 = null;
        this.E0 = null;
        this.f16862b = context;
    }

    public static String a() {
        return F0;
    }

    private boolean g0(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        String str3 = null;
        Cursor rawQuery = sQLiteDatabase.rawQuery(String.format("select sql from sqlite_master where type = 'table' and name = '%s'", str), null);
        if (rawQuery != null) {
            try {
                if (rawQuery.moveToFirst()) {
                    str3 = rawQuery.getString(rawQuery.getColumnIndex("sql"));
                }
            } finally {
                rawQuery.close();
            }
        }
        if (rawQuery != null) {
        }
        return str3 != null && str3.contains(str2);
    }

    public static void h0(String str) {
        F0 = str;
    }

    public RuntimeExceptionDao<ForumSearchRecordTable, Integer> A() {
        if (this.f16895x0 == null) {
            this.f16895x0 = getRuntimeExceptionDao(ForumSearchRecordTable.class);
        }
        return this.f16895x0;
    }

    public RuntimeExceptionDao<ForumTable, Integer> B() {
        if (this.K == null) {
            this.K = getRuntimeExceptionDao(ForumTable.class);
        }
        return this.K;
    }

    public RuntimeExceptionDao<GameMainTable, Integer> C() {
        if (this.f16897y0 == null) {
            this.f16897y0 = getRuntimeExceptionDao(GameMainTable.class);
        }
        return this.f16897y0;
    }

    public RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> D() {
        if (this.f16878p == null) {
            try {
                this.f16878p = getRuntimeExceptionDao(GamePaiWeiUpTaskTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.f16878p;
    }

    public RuntimeExceptionDao<HandShankTable, Integer> E() {
        if (this.G == null) {
            this.G = getRuntimeExceptionDao(HandShankTable.class);
        }
        return this.G;
    }

    public RuntimeExceptionDao<HeadPortraitTable, Integer> F() {
        if (this.f16891v0 == null) {
            this.f16891v0 = getRuntimeExceptionDao(HeadPortraitTable.class);
        }
        return this.f16891v0;
    }

    public RuntimeExceptionDao<InformatonPointTable, Integer> G() {
        if (this.f16875n0 == null) {
            this.f16875n0 = getRuntimeExceptionDao(InformatonPointTable.class);
        }
        return this.f16875n0;
    }

    public RuntimeExceptionDao<JPushRecordTable, Integer> H() {
        if (this.D == null) {
            this.D = getRuntimeExceptionDao(JPushRecordTable.class);
        }
        return this.D;
    }

    public RuntimeExceptionDao<JoystickTable, Integer> I() {
        if (this.I == null) {
            this.I = getRuntimeExceptionDao(JoystickTable.class);
        }
        return this.I;
    }

    public RuntimeExceptionDao<LatestGameFileTable, Integer> J() {
        if (this.f16890v == null) {
            this.f16890v = getRuntimeExceptionDao(LatestGameFileTable.class);
        }
        return this.f16890v;
    }

    public RuntimeExceptionDao<Live, Integer> K() {
        if (this.f16866f == null) {
            this.f16866f = getRuntimeExceptionDao(Live.class);
        }
        return this.f16866f;
    }

    public RuntimeExceptionDao<LocalCourse, Integer> L() {
        if (this.f16869i == null) {
            this.f16869i = getRuntimeExceptionDao(LocalCourse.class);
        }
        return this.f16869i;
    }

    public RuntimeExceptionDao<ModleBeanTable, Integer> M() {
        if (this.f16898z == null) {
            this.f16898z = getRuntimeExceptionDao(ModleBeanTable.class);
        }
        return this.f16898z;
    }

    public RuntimeExceptionDao<Notice, Integer> N() {
        if (this.f16867g == null) {
            this.f16867g = getRuntimeExceptionDao(Notice.class);
        }
        return this.f16867g;
    }

    public RuntimeExceptionDao<Order, Integer> O() {
        if (this.f16863c == null) {
            this.f16863c = getRuntimeExceptionDao(Order.class);
        }
        return this.f16863c;
    }

    public RuntimeExceptionDao<PAPARecentlyTable, Integer> P() {
        if (this.J == null) {
            this.J = getRuntimeExceptionDao(PAPARecentlyTable.class);
        }
        return this.J;
    }

    public RuntimeExceptionDao<PlayGameTimeTable, Integer> Q() {
        if (this.B0 == null) {
            try {
                this.B0 = getRuntimeExceptionDao(PlayGameTimeTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.B0;
    }

    public RuntimeExceptionDao<PurchasedListTable, Integer> R() {
        if (this.C == null) {
            this.C = getRuntimeExceptionDao(PurchasedListTable.class);
        }
        return this.C;
    }

    public RuntimeExceptionDao<RecomDatabeanTable, Integer> S() {
        if (this.f16896y == null) {
            this.f16896y = getRuntimeExceptionDao(RecomDatabeanTable.class);
        }
        return this.f16896y;
    }

    public RuntimeExceptionDao<Reference, Integer> T() {
        if (this.f16871k == null) {
            this.f16871k = getRuntimeExceptionDao(Reference.class);
        }
        return this.f16871k;
    }

    public RuntimeExceptionDao<ResourceShare, Integer> U() {
        if (this.f16868h == null) {
            this.f16868h = getRuntimeExceptionDao(ResourceShare.class);
        }
        return this.f16868h;
    }

    public RuntimeExceptionDao<RewardBananaTable, Integer> V() {
        if (this.C0 == null) {
            try {
                this.C0 = getRuntimeExceptionDao(RewardBananaTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.C0;
    }

    public RuntimeExceptionDao<SearchRecordTable, Integer> W() {
        if (this.f16884s == null) {
            this.f16884s = getRuntimeExceptionDao(SearchRecordTable.class);
        }
        return this.f16884s;
    }

    public RuntimeExceptionDao<ShowViewDataBeanTable, Integer> X() {
        if (this.H == null) {
            this.H = getRuntimeExceptionDao(ShowViewDataBeanTable.class);
        }
        return this.H;
    }

    public RuntimeExceptionDao<StatisticTable, Integer> Y() {
        if (this.f16882r == null) {
            this.f16882r = getRuntimeExceptionDao(StatisticTable.class);
        }
        return this.f16882r;
    }

    public RuntimeExceptionDao<DownloadTask, Integer> Z() {
        if (this.f16892w == null) {
            this.f16892w = getRuntimeExceptionDao(DownloadTask.class);
        }
        return this.f16892w;
    }

    public RuntimeExceptionDao<TipBeanTable, Integer> a0() {
        if (this.f16872l == null) {
            this.f16872l = getRuntimeExceptionDao(TipBeanTable.class);
        }
        return this.f16872l;
    }

    public RuntimeExceptionDao<Account, Integer> b() {
        if (this.f16864d == null) {
            this.f16864d = getRuntimeExceptionDao(Account.class);
        }
        return this.f16864d;
    }

    public RuntimeExceptionDao<TokenTable, Integer> b0() {
        if (this.F == null) {
            this.F = getRuntimeExceptionDao(TokenTable.class);
        }
        return this.F;
    }

    public RuntimeExceptionDao<UserPurchaseInfo, Integer> c0() {
        if (this.f16889u0 == null) {
            this.f16889u0 = getRuntimeExceptionDao(UserPurchaseInfo.class);
        }
        return this.f16889u0;
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper, android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.f16889u0 = null;
        this.f16863c = null;
        this.f16864d = null;
        this.f16865e = null;
        this.f16866f = null;
        this.f16867g = null;
        this.f16868h = null;
        this.f16869i = null;
        this.f16870j = null;
        this.f16871k = null;
        this.f16872l = null;
        this.f16873m = null;
        this.f16874n = null;
        this.f16876o = null;
        this.f16882r = null;
        this.f16884s = null;
        this.D = null;
        this.f16892w = null;
        this.f16894x = null;
        this.f16896y = null;
        this.f16898z = null;
        this.A = null;
        this.B = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.f16877o0 = null;
        this.f16879p0 = null;
        this.f16881q0 = null;
        this.f16883r0 = null;
        this.f16885s0 = null;
        this.f16887t0 = null;
        this.f16891v0 = null;
        this.f16895x0 = null;
        this.f16897y0 = null;
        this.f16899z0 = null;
        this.f16878p = null;
        this.B0 = null;
        this.C0 = null;
        this.C = null;
        this.A0 = null;
        this.f16880q = null;
        this.D0 = null;
    }

    public RuntimeExceptionDao<AppBeanMainTable, Integer> d() {
        if (this.A == null) {
            this.A = getRuntimeExceptionDao(AppBeanMainTable.class);
        }
        return this.A;
    }

    public RuntimeExceptionDao<VideoWatchLogTable, Integer> d0() {
        if (this.E0 == null) {
            try {
                this.E0 = getRuntimeExceptionDao(VideoWatchLogTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.E0;
    }

    public RuntimeExceptionDao<AppBeanTable, Integer> e() {
        if (this.B == null) {
            this.B = getRuntimeExceptionDao(AppBeanTable.class);
        }
        return this.B;
    }

    public RuntimeExceptionDao<WarMatchAndLocalTable, Integer> e0() {
        if (this.f16877o0 == null) {
            this.f16877o0 = getRuntimeExceptionDao(WarMatchAndLocalTable.class);
        }
        return this.f16877o0;
    }

    public RuntimeExceptionDao<H5GameAccountDataTable, Integer> f0() {
        if (this.f16899z0 == null) {
            this.f16899z0 = getRuntimeExceptionDao(H5GameAccountDataTable.class);
        }
        return this.f16899z0;
    }

    public RuntimeExceptionDao<AppMoreBeanTable, Integer> g() {
        if (this.f16879p0 == null) {
            this.f16879p0 = getRuntimeExceptionDao(AppMoreBeanTable.class);
        }
        return this.f16879p0;
    }

    public RuntimeExceptionDao<AppTimeDataTable, Integer> h() {
        if (this.f16880q == null) {
            try {
                this.f16880q = getRuntimeExceptionDao(AppTimeDataTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.f16880q;
    }

    public RuntimeExceptionDao<BannerAndTablesTable, Integer> i() {
        if (this.f16873m == null) {
            this.f16873m = getRuntimeExceptionDao(BannerAndTablesTable.class);
        }
        return this.f16873m;
    }

    public RuntimeExceptionDao<CacheTable, Integer> k() {
        if (this.E == null) {
            this.E = getRuntimeExceptionDao(CacheTable.class);
        }
        return this.E;
    }

    public RuntimeExceptionDao<CategoryRecordTable, Integer> m() {
        if (this.f16885s0 == null) {
            this.f16885s0 = getRuntimeExceptionDao(CategoryRecordTable.class);
        }
        return this.f16885s0;
    }

    public RuntimeExceptionDao<Chapter, Integer> n() {
        if (this.f16870j == null) {
            this.f16870j = getRuntimeExceptionDao(Chapter.class);
        }
        return this.f16870j;
    }

    public RuntimeExceptionDao<CloudArchiveTable, Integer> o() {
        if (this.D0 == null) {
            this.D0 = getRuntimeExceptionDao(CloudArchiveTable.class);
        }
        return this.D0;
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource) {
        try {
            TableUtils.createTable(connectionSource, Order.class);
            TableUtils.createTable(connectionSource, Account.class);
            TableUtils.createTable(connectionSource, Course.class);
            TableUtils.createTable(connectionSource, Live.class);
            TableUtils.createTable(connectionSource, Notice.class);
            TableUtils.createTable(connectionSource, ResourceShare.class);
            TableUtils.createTable(connectionSource, LocalCourse.class);
            TableUtils.createTable(connectionSource, Chapter.class);
            TableUtils.createTable(connectionSource, Reference.class);
            TableUtils.createTable(connectionSource, TipBeanTable.class);
            TableUtils.createTable(connectionSource, BannerAndTablesTable.class);
            TableUtils.createTable(connectionSource, EMUApkTable.class);
            TableUtils.createTable(connectionSource, StatisticTable.class);
            TableUtils.createTable(connectionSource, SearchRecordTable.class);
            TableUtils.createTable(connectionSource, DownloadFileTable.class);
            TableUtils.createTable(connectionSource, EMUUpdateTable.class);
            TableUtils.createTable(connectionSource, LatestGameFileTable.class);
            TableUtils.createTable(connectionSource, DownloadTask.class);
            TableUtils.createTable(connectionSource, DownlodTaskCopyTable.class);
            TableUtils.createTable(connectionSource, RecomDatabeanTable.class);
            TableUtils.createTable(connectionSource, ModleBeanTable.class);
            TableUtils.createTable(connectionSource, AppBeanMainTable.class);
            TableUtils.createTable(connectionSource, AppBeanTable.class);
            TableUtils.createTable(connectionSource, JPushRecordTable.class);
            TableUtils.createTable(connectionSource, CacheTable.class);
            TableUtils.createTable(connectionSource, TokenTable.class);
            TableUtils.createTable(connectionSource, HandShankTable.class);
            TableUtils.createTable(connectionSource, ShowViewDataBeanTable.class);
            TableUtils.createTable(connectionSource, JoystickTable.class);
            TableUtils.createTable(connectionSource, PAPARecentlyTable.class);
            TableUtils.createTable(connectionSource, ForumTable.class);
            TableUtils.createTable(connectionSource, InformatonPointTable.class);
            TableUtils.createTable(connectionSource, WarMatchAndLocalTable.class);
            TableUtils.createTable(connectionSource, AppMoreBeanTable.class);
            TableUtils.createTable(connectionSource, DownloadUrlTable.class);
            TableUtils.createTable(connectionSource, CloudBackupsDataTable.class);
            TableUtils.createTable(connectionSource, CategoryRecordTable.class);
            TableUtils.createTable(connectionSource, FightMainTable.class);
            TableUtils.createTable(connectionSource, UserPurchaseInfo.class);
            TableUtils.createTable(connectionSource, HeadPortraitTable.class);
            TableUtils.createTable(connectionSource, DownloadHistoryTable.class);
            TableUtils.createTable(connectionSource, ForumSearchRecordTable.class);
            TableUtils.createTable(connectionSource, GameMainTable.class);
            TableUtils.createTable(connectionSource, H5GameAccountDataTable.class);
            TableUtils.createTable(connectionSource, EMUApkArenaTable.class);
            TableUtils.createTable(connectionSource, GamePaiWeiUpTaskTable.class);
            TableUtils.createTable(connectionSource, PurchasedListTable.class);
            TableUtils.createTable(connectionSource, CloudDownRecoderTable.class);
            TableUtils.createTable(connectionSource, PlayGameTimeTable.class);
            TableUtils.createTable(connectionSource, AppTimeDataTable.class);
            TableUtils.createTable(connectionSource, RewardBananaTable.class);
            TableUtils.createTable(connectionSource, CloudArchiveTable.class);
            TableUtils.createTable(connectionSource, VideoWatchLogTable.class);
        } catch (SQLException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i4) {
        super.onDowngrade(sQLiteDatabase, i2, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x03a9, code lost:
        if (r26 <= 18) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02f7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0330 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0346 A[Catch: SQLException -> 0x0a68, TryCatch #55 {SQLException -> 0x0a68, blocks: (B:3:0x001c, B:18:0x0098, B:23:0x00a1, B:28:0x00ac, B:34:0x00b7, B:35:0x00cb, B:37:0x00d1, B:49:0x0101, B:51:0x010c, B:65:0x0125, B:69:0x0130, B:72:0x0146, B:89:0x029e, B:107:0x02c3, B:111:0x02d9, B:129:0x02f9, B:131:0x0316, B:145:0x0332, B:150:0x0346, B:156:0x0357, B:159:0x0377, B:163:0x0384, B:165:0x0398, B:178:0x03af, B:180:0x03cc, B:193:0x03e4, B:195:0x03f8, B:206:0x040c, B:225:0x046c, B:228:0x047f, B:234:0x04a2, B:233:0x0494, B:237:0x04b5, B:243:0x04d8, B:242:0x04ca, B:246:0x04eb, B:248:0x04ff, B:261:0x0517, B:263:0x052b, B:276:0x0543, B:278:0x0557, B:290:0x056c, B:297:0x058e, B:309:0x05a3, B:327:0x0614, B:341:0x0652, B:354:0x066a, B:357:0x0675, B:383:0x06ca, B:403:0x0702, B:417:0x072e, B:431:0x0748, B:452:0x07ad, B:466:0x07eb, B:480:0x0829, B:502:0x0881, B:524:0x08d0, B:538:0x08fc, B:552:0x0916, B:554:0x0a09, B:556:0x0a0f, B:557:0x0a13, B:559:0x0a19, B:561:0x0a29, B:563:0x0a2f, B:564:0x0a33, B:566:0x0a39, B:567:0x0a47, B:519:0x08a1, B:497:0x0849, B:447:0x076c, B:439:0x075b, B:322:0x05ca, B:210:0x0421, B:212:0x042b, B:214:0x044c, B:224:0x045d, B:13:0x008f, B:443:0x0764, B:286:0x0564, B:479:0x0803, B:486:0x0832, B:262:0x051a, B:269:0x0534, B:451:0x0775, B:458:0x07b6, B:416:0x071a, B:423:0x0737, B:96:0x02aa, B:435:0x0753, B:6:0x005a, B:7:0x006b, B:9:0x0071, B:14:0x0092, B:361:0x0680, B:362:0x0689, B:367:0x0697, B:371:0x06a4, B:372:0x06a7, B:376:0x06b4, B:377:0x06b7, B:381:0x06c4, B:382:0x06c7, B:366:0x0694, B:389:0x06d3, B:229:0x048c, B:213:0x043b, B:220:0x0455, B:179:0x03b2, B:186:0x03d5, B:523:0x08aa, B:530:0x08d9, B:340:0x062c, B:347:0x065b, B:277:0x0546, B:284:0x0560, B:108:0x02c6, B:110:0x02d1, B:120:0x02e6, B:24:0x00a4, B:465:0x07c5, B:472:0x07f4, B:515:0x0899, B:19:0x009b, B:194:0x03e7, B:201:0x0401, B:305:0x059b, B:537:0x08e8, B:544:0x0905, B:247:0x04ee, B:254:0x0508, B:501:0x0852, B:508:0x088a, B:402:0x06ee, B:409:0x070b, B:50:0x0104, B:296:0x057a, B:303:0x0597, B:326:0x05de, B:333:0x061d, B:318:0x05c2, B:238:0x04c2, B:493:0x0841, B:130:0x02fc, B:137:0x031f, B:164:0x0387, B:171:0x03a1), top: B:639:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0351 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0377 A[Catch: SQLException -> 0x0a68, TryCatch #55 {SQLException -> 0x0a68, blocks: (B:3:0x001c, B:18:0x0098, B:23:0x00a1, B:28:0x00ac, B:34:0x00b7, B:35:0x00cb, B:37:0x00d1, B:49:0x0101, B:51:0x010c, B:65:0x0125, B:69:0x0130, B:72:0x0146, B:89:0x029e, B:107:0x02c3, B:111:0x02d9, B:129:0x02f9, B:131:0x0316, B:145:0x0332, B:150:0x0346, B:156:0x0357, B:159:0x0377, B:163:0x0384, B:165:0x0398, B:178:0x03af, B:180:0x03cc, B:193:0x03e4, B:195:0x03f8, B:206:0x040c, B:225:0x046c, B:228:0x047f, B:234:0x04a2, B:233:0x0494, B:237:0x04b5, B:243:0x04d8, B:242:0x04ca, B:246:0x04eb, B:248:0x04ff, B:261:0x0517, B:263:0x052b, B:276:0x0543, B:278:0x0557, B:290:0x056c, B:297:0x058e, B:309:0x05a3, B:327:0x0614, B:341:0x0652, B:354:0x066a, B:357:0x0675, B:383:0x06ca, B:403:0x0702, B:417:0x072e, B:431:0x0748, B:452:0x07ad, B:466:0x07eb, B:480:0x0829, B:502:0x0881, B:524:0x08d0, B:538:0x08fc, B:552:0x0916, B:554:0x0a09, B:556:0x0a0f, B:557:0x0a13, B:559:0x0a19, B:561:0x0a29, B:563:0x0a2f, B:564:0x0a33, B:566:0x0a39, B:567:0x0a47, B:519:0x08a1, B:497:0x0849, B:447:0x076c, B:439:0x075b, B:322:0x05ca, B:210:0x0421, B:212:0x042b, B:214:0x044c, B:224:0x045d, B:13:0x008f, B:443:0x0764, B:286:0x0564, B:479:0x0803, B:486:0x0832, B:262:0x051a, B:269:0x0534, B:451:0x0775, B:458:0x07b6, B:416:0x071a, B:423:0x0737, B:96:0x02aa, B:435:0x0753, B:6:0x005a, B:7:0x006b, B:9:0x0071, B:14:0x0092, B:361:0x0680, B:362:0x0689, B:367:0x0697, B:371:0x06a4, B:372:0x06a7, B:376:0x06b4, B:377:0x06b7, B:381:0x06c4, B:382:0x06c7, B:366:0x0694, B:389:0x06d3, B:229:0x048c, B:213:0x043b, B:220:0x0455, B:179:0x03b2, B:186:0x03d5, B:523:0x08aa, B:530:0x08d9, B:340:0x062c, B:347:0x065b, B:277:0x0546, B:284:0x0560, B:108:0x02c6, B:110:0x02d1, B:120:0x02e6, B:24:0x00a4, B:465:0x07c5, B:472:0x07f4, B:515:0x0899, B:19:0x009b, B:194:0x03e7, B:201:0x0401, B:305:0x059b, B:537:0x08e8, B:544:0x0905, B:247:0x04ee, B:254:0x0508, B:501:0x0852, B:508:0x088a, B:402:0x06ee, B:409:0x070b, B:50:0x0104, B:296:0x057a, B:303:0x0597, B:326:0x05de, B:333:0x061d, B:318:0x05c2, B:238:0x04c2, B:493:0x0841, B:130:0x02fc, B:137:0x031f, B:164:0x0387, B:171:0x03a1), top: B:639:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03a9  */
    @Override // com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r24, com.j256.ormlite.support.ConnectionSource r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 2676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.db.DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, com.j256.ormlite.support.ConnectionSource, int, int):void");
    }

    public RuntimeExceptionDao<CloudBackupsDataTable, Integer> p() {
        if (this.f16883r0 == null) {
            this.f16883r0 = getRuntimeExceptionDao(CloudBackupsDataTable.class);
        }
        return this.f16883r0;
    }

    public RuntimeExceptionDao<CloudDownRecoderTable, Integer> q() {
        if (this.A0 == null) {
            this.A0 = getRuntimeExceptionDao(CloudDownRecoderTable.class);
        }
        return this.A0;
    }

    public RuntimeExceptionDao<Course, Integer> r() {
        if (this.f16865e == null) {
            this.f16865e = getRuntimeExceptionDao(Course.class);
        }
        return this.f16865e;
    }

    public RuntimeExceptionDao<DownloadFileTable, Integer> s() {
        if (this.f16886t == null) {
            this.f16886t = getRuntimeExceptionDao(DownloadFileTable.class);
        }
        return this.f16886t;
    }

    public RuntimeExceptionDao<DownloadHistoryTable, Integer> t() {
        if (this.f16893w0 == null) {
            this.f16893w0 = getRuntimeExceptionDao(DownloadHistoryTable.class);
        }
        return this.f16893w0;
    }

    public RuntimeExceptionDao<DownloadUrlTable, Integer> u() {
        if (this.f16881q0 == null) {
            this.f16881q0 = getRuntimeExceptionDao(DownloadUrlTable.class);
        }
        return this.f16881q0;
    }

    public RuntimeExceptionDao<DownlodTaskCopyTable, Integer> v() {
        if (this.f16894x == null) {
            this.f16894x = getRuntimeExceptionDao(DownlodTaskCopyTable.class);
        }
        return this.f16894x;
    }

    public RuntimeExceptionDao<EMUUpdateTable, Integer> w() {
        if (this.f16888u == null) {
            try {
                this.f16888u = getRuntimeExceptionDao(EMUUpdateTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.f16888u;
    }

    public RuntimeExceptionDao<EMUApkArenaTable, Integer> x() {
        if (this.f16876o == null) {
            try {
                this.f16876o = getRuntimeExceptionDao(EMUApkArenaTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.f16876o;
    }

    public RuntimeExceptionDao<EMUApkTable, Integer> y() {
        if (this.f16874n == null) {
            try {
                this.f16874n = getRuntimeExceptionDao(EMUApkTable.class);
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
        return this.f16874n;
    }

    public RuntimeExceptionDao<FightMainTable, Integer> z() {
        if (this.f16887t0 == null) {
            this.f16887t0 = getRuntimeExceptionDao(FightMainTable.class);
        }
        return this.f16887t0;
    }
}
