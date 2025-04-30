.class public Lcom/join/android/app/common/db/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static F0:Ljava/lang/String; = "helloAndroid.db"

.field private static final G0:I = 0x34


# instance fields
.field private A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppBeanMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudDownRecoderTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PurchasedListTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/RewardBananaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/JPushRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudArchiveTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CacheTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/VideoWatchLogTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/TokenTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ShowViewDataBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/JoystickTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PAPARecentlyTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Order;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Course;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Live;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Notice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/ResourceShare;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/LocalCourse;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/TipBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/BannerAndTablesTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUApkTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/InformatonPointTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppMoreBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppTimeDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/StatisticTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudBackupsDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/SearchRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CategoryRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadFileTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUUpdateTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/LatestGameFileTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadHistoryTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownlodTaskCopyTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumSearchRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/RecomDatabeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GameMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ModleBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/H5GameAccountDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v2, Lcom/join/android/app/common/db/DatabaseHelper;->F0:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x34

    const v5, 0x7f100002

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 4
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 5
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 7
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 8
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 9
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 10
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 11
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 12
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 13
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 14
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 16
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 17
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 18
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 20
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 21
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 22
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 23
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 24
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 25
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 26
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 27
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 28
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 29
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 30
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 31
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 32
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 33
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 34
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 35
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 36
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 37
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 38
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 39
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 40
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 41
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 42
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 43
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 44
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 45
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 46
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 47
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 48
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 49
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 50
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 51
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 52
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 53
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 54
    iput-object p1, p0, Lcom/join/android/app/common/db/DatabaseHelper;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/db/DatabaseHelper;->F0:Ljava/lang/String;

    return-object v0
.end method

.method private g0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "select sql from sqlite_master where type = \'table\' and name = \'%s\'"

    .line 1
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "sql"

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 6
    throw p2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static h0(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/android/app/common/db/DatabaseHelper;->F0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumSearchRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public B()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public C()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GameMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public D()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public E()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public F()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public G()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/InformatonPointTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/InformatonPointTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public H()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/JPushRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/JPushRecordTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public I()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/JoystickTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/JoystickTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public J()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/LatestGameFileTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/LatestGameFileTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public K()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Live;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Live;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public L()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/LocalCourse;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/LocalCourse;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public M()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ModleBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/ModleBeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public N()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Notice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Notice;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public O()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Order;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Order;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public P()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PAPARecentlyTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/PAPARecentlyTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public Q()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public R()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PurchasedListTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public S()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/RecomDatabeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public T()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Reference;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public U()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/ResourceShare;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/ResourceShare;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public V()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/RewardBananaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/RewardBananaTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public W()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/SearchRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public X()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ShowViewDataBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public Y()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/StatisticTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/StatisticTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public a0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/TipBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/TipBeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public b()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Account;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public b0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/TokenTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/TokenTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public c0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 4
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 5
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->f:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 7
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->g:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 8
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->h:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 9
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->i:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 10
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 11
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->k:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 12
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->l:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 13
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 14
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 16
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 17
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 18
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 20
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 21
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 22
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 23
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 24
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 25
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 26
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->F:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 27
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->G:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 28
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->H:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 29
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->I:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 30
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->J:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 31
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->K:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 32
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 33
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 34
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 35
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 36
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 37
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 38
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->v0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 39
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 40
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->y0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 41
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 42
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 43
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 44
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 45
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->C:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 46
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 47
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 48
    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-void
.end method

.method public d()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppBeanMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/AppBeanMainTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public d0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/VideoWatchLogTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public e()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/AppBeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->B:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public e0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public f0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/H5GameAccountDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/H5GameAccountDataTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->z0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public g()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppMoreBeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->p0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public h()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/AppTimeDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/AppTimeDataTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public i()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/BannerAndTablesTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/BannerAndTablesTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->m:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public k()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CacheTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/CacheTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->E:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public m()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CategoryRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/CategoryRecordTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->s0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public n()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Chapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Chapter;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->j:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public o()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudArchiveTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->D0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 1
    :try_start_0
    const-class p1, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 2
    const-class p1, Lcom/join/android/app/common/db/tables/Order;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3
    const-class p1, Lcom/join/android/app/common/db/tables/Account;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 4
    const-class p1, Lcom/join/android/app/common/db/tables/Course;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 5
    const-class p1, Lcom/join/android/app/common/db/tables/Live;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 6
    const-class p1, Lcom/join/android/app/common/db/tables/Notice;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 7
    const-class p1, Lcom/join/android/app/common/db/tables/ResourceShare;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 8
    const-class p1, Lcom/join/android/app/common/db/tables/LocalCourse;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 9
    const-class p1, Lcom/join/android/app/common/db/tables/Chapter;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 10
    const-class p1, Lcom/join/android/app/common/db/tables/Reference;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 11
    const-class p1, Lcom/join/mgps/db/tables/TipBeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 12
    const-class p1, Lcom/join/mgps/db/tables/BannerAndTablesTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 13
    const-class p1, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 14
    const-class p1, Lcom/join/mgps/db/tables/StatisticTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 15
    const-class p1, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 16
    const-class p1, Lcom/join/mgps/db/tables/DownloadFileTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 17
    const-class p1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 18
    const-class p1, Lcom/join/mgps/db/tables/LatestGameFileTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 19
    const-class p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 20
    const-class p1, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 21
    const-class p1, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 22
    const-class p1, Lcom/join/mgps/db/tables/ModleBeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 23
    const-class p1, Lcom/join/mgps/db/tables/AppBeanMainTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 24
    const-class p1, Lcom/join/mgps/db/tables/AppBeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 25
    const-class p1, Lcom/join/mgps/db/tables/JPushRecordTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 26
    const-class p1, Lcom/join/mgps/db/tables/CacheTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 27
    const-class p1, Lcom/join/mgps/db/tables/TokenTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 28
    const-class p1, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 29
    const-class p1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 30
    const-class p1, Lcom/join/mgps/db/tables/JoystickTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 31
    const-class p1, Lcom/join/mgps/db/tables/PAPARecentlyTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 32
    const-class p1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 33
    const-class p1, Lcom/join/mgps/db/tables/InformatonPointTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 34
    const-class p1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 35
    const-class p1, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 36
    const-class p1, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 37
    const-class p1, Lcom/join/mgps/db/tables/CloudBackupsDataTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 38
    const-class p1, Lcom/join/mgps/db/tables/CategoryRecordTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 39
    const-class p1, Lcom/join/mgps/db/tables/FightMainTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 40
    const-class p1, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 41
    const-class p1, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 42
    const-class p1, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 43
    const-class p1, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 44
    const-class p1, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 45
    const-class p1, Lcom/join/mgps/db/tables/H5GameAccountDataTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 46
    const-class p1, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 47
    const-class p1, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 48
    const-class p1, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 49
    const-class p1, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 50
    const-class p1, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 51
    const-class p1, Lcom/join/mgps/db/tables/AppTimeDataTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 52
    const-class p1, Lcom/join/mgps/db/tables/RewardBananaTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 53
    const-class p1, Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 54
    const-class p1, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    const-class p2, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 56
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1
    const-class v6, Lcom/join/mgps/db/tables/ForumTable;

    const-class v7, Lcom/join/mgps/db/tables/TokenTable;

    const-class v8, Lcom/join/mgps/db/tables/PAPARecentlyTable;

    const-class v9, Lcom/join/mgps/db/tables/EMUUpdateTable;

    const-class v10, Lcom/join/mgps/db/tables/CacheTable;

    const-class v11, Lcom/join/mgps/db/tables/JPushRecordTable;

    const-class v12, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    const-class v13, Lcom/join/mgps/db/tables/SearchRecordTable;

    const-class v14, Lcom/join/mgps/db/tables/DownloadFileTable;

    :try_start_0
    const-class v15, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 2
    iget-object v15, v1, Lcom/join/android/app/common/db/DatabaseHelper;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/papa/sim/statistic/pref/b;->G(I)V

    .line 3
    const-class v15, Lcom/join/android/app/common/db/tables/Order;

    move-object/from16 v16, v6

    const/4 v6, 0x1

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 4
    const-class v15, Lcom/join/android/app/common/db/tables/Account;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 5
    const-class v15, Lcom/join/android/app/common/db/tables/Course;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 6
    const-class v15, Lcom/join/android/app/common/db/tables/Live;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 7
    const-class v15, Lcom/join/android/app/common/db/tables/Notice;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 8
    const-class v15, Lcom/join/android/app/common/db/tables/ResourceShare;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 9
    const-class v15, Lcom/join/android/app/common/db/tables/LocalCourse;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 10
    const-class v15, Lcom/join/android/app/common/db/tables/Chapter;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 11
    const-class v15, Lcom/join/android/app/common/db/tables/Reference;

    invoke-static {v3, v15, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_28

    const/4 v15, 0x3

    if-ne v4, v15, :cond_1

    .line 12
    :try_start_1
    invoke-static {v3, v14}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 13
    iget-object v15, v1, Lcom/join/android/app/common/db/DatabaseHelper;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/php25/PDownload/b;->i(Landroid/content/Context;)Lcom/php25/PDownload/b;

    move-result-object v15

    invoke-virtual {v15}, Lcom/php25/PDownload/a;->c()Ljava/util/List;

    move-result-object v15

    .line 14
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/php25/PDownload/DownloadFile;

    move-object/from16 v17, v15

    const/4 v15, 0x1

    .line 15
    invoke-virtual {v6, v15}, Lcom/php25/PDownload/DownloadFile;->d0(Z)V

    .line 16
    invoke-static {v6}, Ln1/m;->b(Lcom/php25/PDownload/DownloadFile;)Lcom/join/mgps/db/tables/DownloadFileTable;

    move-result-object v6

    .line 17
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object v15

    invoke-virtual {v15, v6}, Lg1/b;->k(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v15, v17

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 18
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_28

    .line 19
    :cond_0
    :try_start_3
    invoke-static {v3, v13}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 20
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_28

    .line 21
    :goto_1
    :try_start_5
    invoke-static {v3, v9}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 22
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_28

    .line 23
    :goto_2
    :try_start_7
    const-class v6, Lcom/join/mgps/db/tables/LatestGameFileTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 24
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v6, 0x4

    goto :goto_4

    :cond_1
    move v6, v4

    :goto_4
    const/4 v15, 0x4

    if-ne v6, v15, :cond_3

    if-ge v6, v5, :cond_3

    .line 25
    const-class v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 26
    invoke-static {v3, v12}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 27
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object v6

    invoke-virtual {v6}, Lg1/b;->d()Ljava/util/List;

    move-result-object v6

    .line 28
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/db/tables/DownloadFileTable;

    .line 29
    invoke-static {v15}, Ln1/m;->a(Lcom/join/mgps/db/tables/DownloadFileTable;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v15

    .line 30
    invoke-static {v15}, Ln1/m;->c(Lcom/php25/PDownload/DownloadFile;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v15

    move-object/from16 v18, v6

    .line 31
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v15}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-object/from16 v6, v18

    goto :goto_5

    :cond_2
    const/4 v6, 0x5

    move-object/from16 v18, v12

    const/4 v15, 0x1

    goto :goto_6

    :cond_3
    move-object/from16 v18, v12

    const/4 v15, 0x0

    :goto_6
    const/4 v12, 0x7

    if-ge v6, v12, :cond_4

    const/4 v6, 0x6

    :cond_4
    const/4 v12, 0x6

    if-ne v6, v12, :cond_5

    if-ge v6, v5, :cond_5

    if-nez v15, :cond_5

    const/4 v12, 0x7

    if-ge v5, v12, :cond_5

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_28

    :try_start_9
    const-string v6, "ALTER TABLE downloadtask  ADD COLUMN  keyword TEXT"

    .line 33
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 35
    :goto_7
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_28

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 36
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :goto_8
    const/4 v6, 0x7

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 37
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 38
    throw v3

    :cond_5
    :goto_9
    const/16 v12, 0x8

    const/4 v15, 0x7

    if-ne v6, v15, :cond_6

    if-ge v6, v5, :cond_6

    .line 39
    invoke-static {v3, v11}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0x8

    :cond_6
    const/16 v15, 0xa

    if-ne v6, v12, :cond_7

    if-ge v6, v5, :cond_7

    .line 40
    invoke-static {v3, v10}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 41
    invoke-static {v3, v7}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 42
    const-class v6, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 43
    const-class v6, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0xa

    :cond_7
    if-ne v6, v15, :cond_a

    if-ge v6, v5, :cond_a

    .line 44
    invoke-static {v3, v8}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    move-object/from16 v6, v16

    .line 45
    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 46
    const-class v15, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-static {v3, v15}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 47
    const-class v15, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    invoke-static {v3, v15}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 48
    const-class v15, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-static {v3, v15}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_28

    .line 50
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v15

    iput-object v15, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  fight_screenshot_pic TEXT"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    const/4 v6, 0x0

    :try_start_e
    new-array v8, v6, [Ljava/lang/String;

    .line 51
    invoke-virtual {v15, v12, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  plugin_num TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  is_world INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  is_network INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  source_ver_name TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  source_ver TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  source_down_url TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  source_down_path TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  plugin_screenshot INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  plugin_area INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  plugin_area_val BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  world_shop INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  world_area INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  is_fight INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  fight_type INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  fight_fun TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  duration BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  interrupt INTEGER DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  game_info_tpl_type TEXT"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  currentSize BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  progress BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  ext1 TEXT DEFAULT \'\'"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  zipCost BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  lock_sp BIGINT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  unzip_size TEXT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    iget-object v8, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  sync_memory TEXT DEFAULT 0"

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6}, Lg1/f;->d()Ljava/util/List;

    move-result-object v6

    .line 78
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v12

    .line 80
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v15

    sget-object v21, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :goto_b
    move-object/from16 v6, v22

    goto :goto_a

    :cond_8
    const-string v6, ""
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 81
    :try_start_f
    invoke-static {v12}, Lcom/join/mgps/Util/UtilsMy;->v1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v12, v0

    .line 82
    :try_start_10
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_c
    invoke-virtual {v8, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v8}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 85
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 86
    :goto_d
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_28

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    :goto_e
    move-object v6, v0

    .line 87
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_d

    :goto_f
    move-object/from16 v8, v19

    const/16 v6, 0xd

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 88
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 89
    throw v3

    :cond_a
    move-object/from16 v20, v8

    move-object/from16 v8, v16

    :goto_10
    const/16 v12, 0xb

    if-ne v6, v12, :cond_b

    if-ge v6, v5, :cond_b

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_28

    .line 91
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v6

    iput-object v6, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  zipCost BIGINT DEFAULT 0"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    move-object/from16 v21, v8

    const/4 v15, 0x0

    :try_start_15
    new-array v8, v15, [Ljava/lang/String;

    .line 92
    invoke-virtual {v6, v12, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 94
    :goto_11
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_28

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object v3, v0

    goto :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v21, v8

    :goto_12
    move-object v6, v0

    .line 95
    :try_start_17
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_11

    :goto_13
    const/16 v6, 0xc

    goto :goto_15

    .line 96
    :goto_14
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    throw v3

    :cond_b
    move-object/from16 v21, v8

    :goto_15
    const/16 v8, 0xc

    if-ne v6, v8, :cond_c

    if-ge v6, v5, :cond_c

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_28

    .line 99
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v6

    iput-object v6, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v8, "ALTER TABLE \'downloadtask\' ADD COLUMN  lock_sp BIGINT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 100
    invoke-virtual {v6, v8, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    iget-object v6, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v8, "ALTER TABLE \'downloadtask\' ADD COLUMN  unzip_size TEXT DEFAULT 0"

    new-array v15, v12, [Ljava/lang/String;

    invoke-virtual {v6, v8, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 103
    :goto_16
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_28

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v3, v0

    goto :goto_18

    :catch_7
    move-exception v0

    move-object v6, v0

    .line 104
    :try_start_1b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto :goto_16

    :goto_17
    const/16 v6, 0xd

    goto :goto_19

    .line 105
    :goto_18
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    throw v3

    :cond_c
    :goto_19
    const/16 v8, 0xe

    const/16 v12, 0xd

    if-ne v6, v12, :cond_d

    if-ge v6, v5, :cond_d

    .line 107
    const-class v6, Lcom/join/mgps/db/tables/CloudBackupsDataTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 108
    const-class v6, Lcom/join/mgps/db/tables/CategoryRecordTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0xe

    :cond_d
    if-ne v6, v8, :cond_e

    const/16 v6, 0xf

    :cond_e
    const/16 v8, 0xf

    if-ne v6, v8, :cond_f

    .line 109
    const-class v6, Lcom/join/mgps/db/tables/FightMainTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0x10

    :cond_f
    const/16 v8, 0x10

    if-ne v6, v8, :cond_10

    if-ge v6, v5, :cond_10

    const/16 v8, 0xa

    if-le v4, v8, :cond_10

    .line 110
    const-class v6, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 111
    const-class v6, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v6

    iput-object v6, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v8, "ALTER TABLE \'downloadtask\' ADD COLUMN  sync_memory TEXT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 113
    invoke-virtual {v6, v8, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v6, 0x11

    :cond_10
    const/16 v8, 0x11

    const/16 v12, 0x12

    if-ne v6, v8, :cond_11

    .line 114
    const-class v6, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0x12

    :cond_11
    const/16 v8, 0x13

    if-eq v4, v12, :cond_12

    if-ne v6, v12, :cond_13

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_28

    .line 116
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  startDownloadTime BIGINT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 117
    invoke-virtual {v4, v6, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 119
    :goto_1a
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_28

    goto :goto_1c

    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 120
    :try_start_1f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    goto :goto_1a

    .line 121
    :goto_1b
    :try_start_20
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    throw v3

    :cond_12
    if-gt v4, v12, :cond_13

    :goto_1c
    const/16 v6, 0x13

    :cond_13
    if-ne v6, v8, :cond_14

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_20
    .catch Ljava/sql/SQLException; {:try_start_20 .. :try_end_20} :catch_28

    .line 124
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  gift_package_switch INTEGER DEFAULT 0"

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/String;

    .line 125
    invoke-virtual {v4, v6, v12}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    iget-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  _from INTEGER DEFAULT 0"

    new-array v12, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6, v12}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 128
    :goto_1d
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_22
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_22} :catch_28

    goto :goto_1e

    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_1f

    :catch_9
    move-exception v0

    move-object v4, v0

    .line 129
    :try_start_23
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    goto :goto_1d

    :goto_1e
    const/16 v6, 0x14

    goto :goto_20

    .line 130
    :goto_1f
    :try_start_24
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    throw v3

    :cond_14
    :goto_20
    const/16 v4, 0x14

    if-ne v6, v4, :cond_15

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_24
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_24} :catch_28

    .line 133
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  actual_size BIGINT DEFAULT 0"

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/String;

    .line 134
    invoke-virtual {v4, v6, v12}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_a
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 136
    :goto_21
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_26 .. :try_end_26} :catch_28

    goto :goto_22

    :catchall_9
    move-exception v0

    move-object v3, v0

    goto :goto_23

    :catch_a
    move-exception v0

    move-object v4, v0

    .line 137
    :try_start_27
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    goto :goto_21

    :goto_22
    const/16 v6, 0x15

    goto :goto_24

    .line 138
    :goto_23
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 139
    throw v3

    .line 140
    :cond_15
    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " upgradeVersion1="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x15

    if-eq v6, v4, :cond_16

    const/16 v4, 0x16

    if-ne v6, v4, :cond_18

    :cond_16
    const-string v4, "downloadtask"

    const-string v8, "_from_type"

    .line 141
    invoke-direct {v1, v2, v4, v8}, Lcom/join/android/app/common/db/DatabaseHelper;->g0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " upgradeVersion2="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/sql/SQLException; {:try_start_28 .. :try_end_28} :catch_28

    .line 144
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v8, "ALTER TABLE \'downloadtask\' ADD COLUMN _from_type BIGINT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 145
    invoke-virtual {v4, v8, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_b
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 147
    :goto_25
    :try_start_2a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2a
    .catch Ljava/sql/SQLException; {:try_start_2a .. :try_end_2a} :catch_28

    goto :goto_27

    :catchall_a
    move-exception v0

    move-object v3, v0

    goto :goto_26

    :catch_b
    move-exception v0

    move-object v4, v0

    .line 148
    :try_start_2b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    goto :goto_25

    .line 149
    :goto_26
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    throw v3

    .line 151
    :cond_17
    :goto_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " upgradeVersion3="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    .line 152
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " upgradeVersion4="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/sql/SQLException; {:try_start_2c .. :try_end_2c} :catch_28

    const/16 v4, 0x17

    const-string v8, " upgradeVersion6="

    if-ne v6, v4, :cond_19

    .line 153
    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " upgradeVersion5="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/sql/SQLException; {:try_start_2d .. :try_end_2d} :catch_28

    .line 154
    :try_start_2e
    const-class v4, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-static {v3, v4}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_c

    goto :goto_28

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 155
    :try_start_2f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " upgradeVersion7="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    :cond_19
    const/16 v4, 0x18

    if-ne v6, v4, :cond_1a

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " upgradeVersion5="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2f
    .catch Ljava/sql/SQLException; {:try_start_2f .. :try_end_2f} :catch_28

    .line 159
    :try_start_30
    const-class v4, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-static {v3, v4}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d

    goto :goto_29

    :catch_d
    move-exception v0

    move-object v4, v0

    .line 160
    :try_start_31
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    :goto_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " upgradeVersion7="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x19

    :cond_1a
    const/16 v4, 0x19

    if-ne v6, v4, :cond_1b

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_31
    .catch Ljava/sql/SQLException; {:try_start_31 .. :try_end_31} :catch_28

    .line 164
    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  game_info_top_pic BIGINT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 165
    invoke-virtual {v4, v6, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e
    .catchall {:try_start_32 .. :try_end_32} :catchall_b

    .line 167
    :goto_2a
    :try_start_33
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_33
    .catch Ljava/sql/SQLException; {:try_start_33 .. :try_end_33} :catch_28

    goto :goto_2b

    :catchall_b
    move-exception v0

    move-object v3, v0

    goto :goto_2c

    :catch_e
    move-exception v0

    move-object v4, v0

    .line 168
    :try_start_34
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    goto :goto_2a

    :goto_2b
    const/16 v6, 0x1a

    goto :goto_2d

    .line 169
    :goto_2c
    :try_start_35
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 170
    throw v3

    :cond_1b
    :goto_2d
    const/16 v4, 0x1a

    if-ne v6, v4, :cond_1c

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_35
    .catch Ljava/sql/SQLException; {:try_start_35 .. :try_end_35} :catch_28

    .line 172
    :try_start_36
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  sp_tpl_two_position TEXT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 173
    invoke-virtual {v4, v6, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_f
    .catchall {:try_start_36 .. :try_end_36} :catchall_c

    .line 175
    :goto_2e
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_37
    .catch Ljava/sql/SQLException; {:try_start_37 .. :try_end_37} :catch_28

    goto :goto_2f

    :catchall_c
    move-exception v0

    move-object v3, v0

    goto :goto_30

    :catch_f
    move-exception v0

    move-object v4, v0

    .line 176
    :try_start_38
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    goto :goto_2e

    :goto_2f
    const/16 v6, 0x1b

    goto :goto_31

    .line 177
    :goto_30
    :try_start_39
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    throw v3

    :cond_1c
    :goto_31
    const/16 v4, 0x1b

    if-ne v6, v4, :cond_1d

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_39
    .catch Ljava/sql/SQLException; {:try_start_39 .. :try_end_39} :catch_28

    .line 180
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v6, "ALTER TABLE \'downloadtask\' ADD COLUMN  down_count BIGINT DEFAULT 0"

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/String;

    .line 181
    invoke-virtual {v4, v6, v15}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_10
    .catchall {:try_start_3a .. :try_end_3a} :catchall_d

    .line 183
    :goto_32
    :try_start_3b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3b
    .catch Ljava/sql/SQLException; {:try_start_3b .. :try_end_3b} :catch_28

    goto :goto_33

    :catchall_d
    move-exception v0

    move-object v3, v0

    goto :goto_35

    :catch_10
    move-exception v0

    move-object v4, v0

    .line 184
    :try_start_3c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_d

    goto :goto_32

    .line 185
    :goto_33
    :try_start_3d
    const-class v4, Lcom/join/mgps/db/tables/H5GameAccountDataTable;

    invoke-static {v3, v4}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_11

    goto :goto_34

    :catch_11
    move-exception v0

    move-object v4, v0

    .line 186
    :try_start_3e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    const/16 v6, 0x1c

    goto :goto_36

    .line 187
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    throw v3
    :try_end_3e
    .catch Ljava/sql/SQLException; {:try_start_3e .. :try_end_3e} :catch_28

    :cond_1d
    :goto_36
    const/16 v4, 0x1c

    if-ne v6, v4, :cond_1e

    .line 189
    :try_start_3f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v4

    iput-object v4, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v12, "ALTER TABLE \'downloadtask\' ADD COLUMN  sp_tag_info_s BIGINT DEFAULT 0"

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v12, v2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_12
    .catchall {:try_start_3f .. :try_end_3f} :catchall_e

    .line 193
    :goto_37
    :try_start_40
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_40
    .catch Ljava/sql/SQLException; {:try_start_40 .. :try_end_40} :catch_28

    goto :goto_38

    :catchall_e
    move-exception v0

    move-object v2, v0

    goto :goto_3a

    :catch_12
    move-exception v0

    move-object v2, v0

    .line 194
    :try_start_41
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_e

    goto :goto_37

    .line 195
    :goto_38
    :try_start_42
    const-class v2, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    goto :goto_39

    :catch_13
    move-exception v0

    move-object v2, v0

    .line 196
    :try_start_43
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_39
    const/16 v6, 0x1d

    goto :goto_3b

    .line 198
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    throw v2
    :try_end_43
    .catch Ljava/sql/SQLException; {:try_start_43 .. :try_end_43} :catch_28

    :cond_1e
    :goto_3b
    const/16 v2, 0x1d

    if-ne v6, v2, :cond_1f

    const/16 v6, 0x1e

    :cond_1f
    const/16 v2, 0x1e

    if-ne v6, v2, :cond_20

    .line 200
    :try_start_44
    const-class v2, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_14

    goto :goto_3c

    :catch_14
    move-exception v0

    move-object v2, v0

    .line 201
    :try_start_45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/sql/SQLException; {:try_start_45 .. :try_end_45} :catch_28

    :goto_3c
    const/16 v6, 0x1f

    :cond_20
    const/16 v2, 0x1f

    if-ne v6, v2, :cond_21

    .line 203
    :try_start_46
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 205
    const-class v2, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 206
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  score BIGINT DEFAULT 0"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'warmatchandlocaltable\' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'fightmaintable\' ADD COLUMN  pay_game_amount BIGINT DEFAULT 0"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_15
    .catchall {:try_start_46 .. :try_end_46} :catchall_f

    .line 211
    :goto_3d
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_47
    .catch Ljava/sql/SQLException; {:try_start_47 .. :try_end_47} :catch_28

    goto :goto_3e

    :catchall_f
    move-exception v0

    move-object v2, v0

    goto :goto_3f

    :catch_15
    move-exception v0

    move-object v2, v0

    .line 212
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_f

    goto :goto_3d

    :goto_3e
    const/16 v6, 0x20

    goto :goto_40

    .line 213
    :goto_3f
    :try_start_49
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    throw v2
    :try_end_49
    .catch Ljava/sql/SQLException; {:try_start_49 .. :try_end_49} :catch_28

    :cond_21
    :goto_40
    const/16 v2, 0x20

    if-ne v6, v2, :cond_22

    .line 215
    :try_start_4a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'fightmaintable\' ADD COLUMN  down_status BIGINT DEFAULT 0"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    .line 217
    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'warmatchandlocaltable\' ADD COLUMN  down_status BIGINT DEFAULT 0"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  down_status BIGINT DEFAULT 0"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_16
    .catchall {:try_start_4a .. :try_end_4a} :catchall_10

    .line 221
    :goto_41
    :try_start_4b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catch Ljava/sql/SQLException; {:try_start_4b .. :try_end_4b} :catch_28

    goto :goto_42

    :catchall_10
    move-exception v0

    move-object v2, v0

    goto :goto_43

    :catch_16
    move-exception v0

    move-object v2, v0

    .line 222
    :try_start_4c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_10

    goto :goto_41

    :goto_42
    const/16 v6, 0x21

    goto :goto_44

    .line 223
    :goto_43
    :try_start_4d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 224
    throw v2

    :cond_22
    :goto_44
    const/16 v2, 0x21

    if-ne v6, v2, :cond_23

    .line 225
    const-class v2, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/16 v6, 0x22

    :cond_23
    const/16 v2, 0x22

    if-ne v6, v2, :cond_24

    .line 226
    const-class v2, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_4d
    .catch Ljava/sql/SQLException; {:try_start_4d .. :try_end_4d} :catch_28

    const/16 v6, 0x23

    :cond_24
    const/16 v2, 0x23

    if-ne v6, v2, :cond_25

    .line 227
    :try_start_4e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_1b
    .catchall {:try_start_4e .. :try_end_4e} :catchall_11

    :try_start_4f
    const-string v4, "ALTER TABLE \'emuapktable\' ADD COLUMN  down_type BIGINT DEFAULT 1"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_17
    .catchall {:try_start_4f .. :try_end_4f} :catchall_11

    goto :goto_45

    :catch_17
    move-exception v0

    move-object v2, v0

    .line 230
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_1b
    .catchall {:try_start_50 .. :try_end_50} :catchall_11

    .line 231
    :goto_45
    :try_start_51
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'emuapkarenatable\' ADD COLUMN  down_type BIGINT DEFAULT 1"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_18
    .catchall {:try_start_51 .. :try_end_51} :catchall_11

    goto :goto_46

    :catch_18
    move-exception v0

    move-object v2, v0

    .line 232
    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1b
    .catchall {:try_start_52 .. :try_end_52} :catchall_11

    .line 233
    :goto_46
    :try_start_53
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'emuupdatetable\' ADD COLUMN  down_type BIGINT DEFAULT 1"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_19
    .catchall {:try_start_53 .. :try_end_53} :catchall_11

    goto :goto_47

    :catch_19
    move-exception v0

    move-object v2, v0

    .line 234
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_1b
    .catchall {:try_start_54 .. :try_end_54} :catchall_11

    .line 235
    :goto_47
    :try_start_55
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  down_type BIGINT DEFAULT 1"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1a
    .catchall {:try_start_55 .. :try_end_55} :catchall_11

    goto :goto_48

    :catch_1a
    move-exception v0

    move-object v2, v0

    .line 236
    :try_start_56
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_48
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1b
    .catchall {:try_start_56 .. :try_end_56} :catchall_11

    .line 238
    :goto_49
    :try_start_57
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_57
    .catch Ljava/sql/SQLException; {:try_start_57 .. :try_end_57} :catch_28

    goto :goto_4a

    :catchall_11
    move-exception v0

    move-object v2, v0

    goto :goto_4b

    :catch_1b
    move-exception v0

    move-object v2, v0

    .line 239
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_11

    goto :goto_49

    :goto_4a
    const/16 v6, 0x24

    goto :goto_4c

    .line 240
    :goto_4b
    :try_start_59
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 241
    throw v2
    :try_end_59
    .catch Ljava/sql/SQLException; {:try_start_59 .. :try_end_59} :catch_28

    :cond_25
    :goto_4c
    const/16 v2, 0x24

    if-ne v6, v2, :cond_26

    const/16 v6, 0x25

    :cond_26
    const/16 v2, 0x25

    if-ne v6, v2, :cond_27

    const/16 v6, 0x26

    :cond_27
    const/16 v2, 0x26

    if-ne v6, v2, :cond_28

    .line 242
    :try_start_5a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  allow_start_up_ad TEXT DEFAULT 0"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    .line 244
    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_1c
    .catchall {:try_start_5a .. :try_end_5a} :catchall_12

    .line 246
    :goto_4d
    :try_start_5b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5b
    .catch Ljava/sql/SQLException; {:try_start_5b .. :try_end_5b} :catch_28

    goto :goto_4e

    :catchall_12
    move-exception v0

    move-object v2, v0

    goto :goto_4f

    :catch_1c
    move-exception v0

    move-object v2, v0

    .line 247
    :try_start_5c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_12

    goto :goto_4d

    :goto_4e
    const/16 v6, 0x27

    goto :goto_50

    .line 248
    :goto_4f
    :try_start_5d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 249
    throw v2
    :try_end_5d
    .catch Ljava/sql/SQLException; {:try_start_5d .. :try_end_5d} :catch_28

    :cond_28
    :goto_50
    const/16 v2, 0x27

    if-ne v6, v2, :cond_29

    .line 250
    :try_start_5e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  is_boot_commented BIGINT DEFAULT 0"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v4, v8}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_1d
    .catchall {:try_start_5e .. :try_end_5e} :catchall_13

    .line 254
    :goto_51
    :try_start_5f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5f
    .catch Ljava/sql/SQLException; {:try_start_5f .. :try_end_5f} :catch_28

    goto :goto_52

    :catchall_13
    move-exception v0

    move-object v2, v0

    goto :goto_53

    :catch_1d
    move-exception v0

    move-object v2, v0

    .line 255
    :try_start_60
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_13

    goto :goto_51

    :goto_52
    const/16 v6, 0x28

    goto :goto_54

    .line 256
    :goto_53
    :try_start_61
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 257
    throw v2

    :cond_29
    :goto_54
    const/16 v2, 0x28

    if-ne v6, v2, :cond_2a

    if-ge v6, v5, :cond_2a

    .line 258
    const-class v2, Lcom/join/mgps/db/tables/InformatonPointTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_61
    .catch Ljava/sql/SQLException; {:try_start_61 .. :try_end_61} :catch_28

    const/16 v6, 0x29

    :cond_2a
    const/16 v2, 0x29

    if-ne v6, v2, :cond_2b

    .line 259
    :try_start_62
    const-class v2, Lcom/join/mgps/db/tables/AppTimeDataTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_1e

    goto :goto_55

    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 260
    :try_start_63
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catch Ljava/sql/SQLException; {:try_start_63 .. :try_end_63} :catch_28

    :goto_55
    const/16 v6, 0x2a

    :cond_2b
    const/16 v2, 0x2a

    if-ne v6, v2, :cond_2c

    .line 261
    :try_start_64
    const-class v2, Lcom/join/mgps/db/tables/RewardBananaTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_1f

    goto :goto_56

    :catch_1f
    move-exception v0

    move-object v2, v0

    .line 262
    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catch Ljava/sql/SQLException; {:try_start_65 .. :try_end_65} :catch_28

    :goto_56
    const/16 v6, 0x2b

    :cond_2c
    const/16 v2, 0x2b

    if-ne v6, v2, :cond_2d

    .line 263
    :try_start_66
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  ext TEXT DEFAULT \'\'"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 265
    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  resource_url_remote TEXT DEFAULT \'\'"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  resource_path TEXT DEFAULT \'\'"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  res_actual_size BIGINT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  res_currentSize BIGINT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_20
    .catchall {:try_start_66 .. :try_end_66} :catchall_14

    .line 271
    :goto_57
    :try_start_67
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_67
    .catch Ljava/sql/SQLException; {:try_start_67 .. :try_end_67} :catch_28

    goto :goto_58

    :catchall_14
    move-exception v0

    move-object v2, v0

    goto :goto_59

    :catch_20
    move-exception v0

    move-object v2, v0

    .line 272
    :try_start_68
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_14

    goto :goto_57

    :goto_58
    const/16 v6, 0x2c

    goto :goto_5a

    .line 273
    :goto_59
    :try_start_69
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 274
    throw v2
    :try_end_69
    .catch Ljava/sql/SQLException; {:try_start_69 .. :try_end_69} :catch_28

    :cond_2d
    :goto_5a
    const/16 v2, 0x2c

    if-ne v6, v2, :cond_2e

    .line 275
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  mod_info TEXT DEFAULT \'\'"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 277
    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  task_down_type INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  ref_crc_sign_id TEXT DEFAULT \'\'"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_21
    .catchall {:try_start_6a .. :try_end_6a} :catchall_15

    .line 281
    :goto_5b
    :try_start_6b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6b
    .catch Ljava/sql/SQLException; {:try_start_6b .. :try_end_6b} :catch_28

    goto :goto_5c

    :catchall_15
    move-exception v0

    move-object v2, v0

    goto :goto_5d

    :catch_21
    move-exception v0

    move-object v2, v0

    .line 282
    :try_start_6c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_15

    goto :goto_5b

    :goto_5c
    const/16 v6, 0x2d

    goto :goto_5e

    .line 283
    :goto_5d
    :try_start_6d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    throw v2
    :try_end_6d
    .catch Ljava/sql/SQLException; {:try_start_6d .. :try_end_6d} :catch_28

    :cond_2e
    :goto_5e
    const/16 v2, 0x2d

    if-ne v6, v2, :cond_2f

    .line 285
    :try_start_6e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  single_game_mod_info TEXT DEFAULT \'\'"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  install_type  INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  game_run_state  INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_22
    .catchall {:try_start_6e .. :try_end_6e} :catchall_16

    .line 291
    :goto_5f
    :try_start_6f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6f
    .catch Ljava/sql/SQLException; {:try_start_6f .. :try_end_6f} :catch_28

    goto :goto_60

    :catchall_16
    move-exception v0

    move-object v2, v0

    goto :goto_61

    :catch_22
    move-exception v0

    move-object v2, v0

    .line 292
    :try_start_70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_16

    goto :goto_5f

    :goto_60
    const/16 v6, 0x2e

    goto :goto_62

    .line 293
    :goto_61
    :try_start_71
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    throw v2
    :try_end_71
    .catch Ljava/sql/SQLException; {:try_start_71 .. :try_end_71} :catch_28

    :cond_2f
    :goto_62
    const/16 v2, 0x2e

    if-ne v6, v2, :cond_30

    .line 295
    :try_start_72
    const-class v2, Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_23

    goto :goto_63

    :catch_23
    move-exception v0

    move-object v2, v0

    .line 296
    :try_start_73
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catch Ljava/sql/SQLException; {:try_start_73 .. :try_end_73} :catch_28

    :goto_63
    const/16 v6, 0x2f

    :cond_30
    const/16 v2, 0x2f

    if-ne v6, v2, :cond_31

    .line 297
    :try_start_74
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'gamepaiweiuptasktable\' ADD COLUMN  cost_coin INT DEFAULT 0"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'gamepaiweiuptasktable\' ADD COLUMN  role_id  INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'gamepaiweiuptasktable\' ADD COLUMN  rank_auto_upload  INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'gamepaiweiuptasktable\' ADD COLUMN  rank_play_time  INT DEFAULT 0"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_24
    .catchall {:try_start_74 .. :try_end_74} :catchall_17

    .line 304
    :goto_64
    :try_start_75
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_75
    .catch Ljava/sql/SQLException; {:try_start_75 .. :try_end_75} :catch_28

    goto :goto_65

    :catchall_17
    move-exception v0

    move-object v2, v0

    goto :goto_66

    :catch_24
    move-exception v0

    move-object v2, v0

    .line 305
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_17

    goto :goto_64

    :goto_65
    const/16 v6, 0x30

    goto :goto_67

    .line 306
    :goto_66
    :try_start_77
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 307
    throw v2
    :try_end_77
    .catch Ljava/sql/SQLException; {:try_start_77 .. :try_end_77} :catch_28

    :cond_31
    :goto_67
    const/16 v2, 0x30

    if-ne v6, v2, :cond_32

    .line 308
    :try_start_78
    const-class v2, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-static {v3, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_25

    goto :goto_68

    :catch_25
    move-exception v0

    move-object v2, v0

    .line 309
    :try_start_79
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catch Ljava/sql/SQLException; {:try_start_79 .. :try_end_79} :catch_28

    :goto_68
    const/16 v6, 0x31

    :cond_32
    const/16 v2, 0x31

    if-ne v6, v2, :cond_33

    .line 310
    :try_start_7a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  ad_info_switch INT DEFAULT 1"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 312
    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  ad_info_str TEXT"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    iget-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  vm_device_switch INT DEFAULT 1"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_26
    .catchall {:try_start_7a .. :try_end_7a} :catchall_18

    .line 316
    :goto_69
    :try_start_7b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7b
    .catch Ljava/sql/SQLException; {:try_start_7b .. :try_end_7b} :catch_28

    goto :goto_6a

    :catchall_18
    move-exception v0

    move-object v2, v0

    goto :goto_6b

    :catch_26
    move-exception v0

    move-object v2, v0

    .line 317
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_18

    goto :goto_69

    :goto_6a
    const/16 v6, 0x32

    goto :goto_6c

    .line 318
    :goto_6b
    :try_start_7d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 319
    throw v2
    :try_end_7d
    .catch Ljava/sql/SQLException; {:try_start_7d .. :try_end_7d} :catch_28

    :cond_33
    :goto_6c
    const/16 v2, 0x32

    if-ne v6, v2, :cond_34

    .line 320
    :try_start_7e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/common/db/DatabaseHelper;->Z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v2

    iput-object v2, v1, Lcom/join/android/app/common/db/DatabaseHelper;->w:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v4, "ALTER TABLE \'downloadtask\' ADD COLUMN  cost_type INT DEFAULT 0"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 322
    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_27
    .catchall {:try_start_7e .. :try_end_7e} :catchall_19

    .line 324
    :goto_6d
    :try_start_7f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7f
    .catch Ljava/sql/SQLException; {:try_start_7f .. :try_end_7f} :catch_28

    goto :goto_6e

    :catchall_19
    move-exception v0

    move-object v2, v0

    goto :goto_6f

    :catch_27
    move-exception v0

    move-object v2, v0

    .line 325
    :try_start_80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_19

    goto :goto_6d

    :goto_6e
    const/16 v6, 0x33

    goto :goto_70

    .line 326
    :goto_6f
    :try_start_81
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    throw v2

    :cond_34
    :goto_70
    const/16 v2, 0x33

    if-ne v6, v2, :cond_35

    const/16 v6, 0x34

    .line 328
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " upgradeVersion8="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2}, Lg1/f;->d()Ljava/util/List;

    move-result-object v2

    .line 330
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v4

    invoke-virtual {v4}, Lg1/b;->d()Ljava/util/List;

    move-result-object v4

    .line 331
    const-class v5, Lcom/join/mgps/db/tables/UserPurchaseInfo;

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 332
    const-class v5, Lcom/join/mgps/db/tables/TipBeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 333
    const-class v5, Lcom/join/mgps/db/tables/BannerAndTablesTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 334
    const-class v5, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 335
    const-class v5, Lcom/join/mgps/db/tables/StatisticTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 336
    invoke-static {v3, v13, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 337
    invoke-static {v3, v11, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 338
    invoke-static {v3, v14, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 339
    invoke-static {v3, v9, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 340
    const-class v5, Lcom/join/mgps/db/tables/LatestGameFileTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 341
    const-class v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    move-object/from16 v5, v18

    .line 342
    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 343
    const-class v5, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 344
    const-class v5, Lcom/join/mgps/db/tables/ModleBeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 345
    const-class v5, Lcom/join/mgps/db/tables/AppBeanMainTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 346
    const-class v5, Lcom/join/mgps/db/tables/AppBeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 347
    invoke-static {v3, v10, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 348
    invoke-static {v3, v7, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 349
    const-class v5, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 350
    const-class v5, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 351
    const-class v5, Lcom/join/mgps/db/tables/JoystickTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    move-object/from16 v5, v20

    .line 352
    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    move-object/from16 v5, v21

    .line 353
    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 354
    const-class v5, Lcom/join/mgps/db/tables/InformatonPointTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 355
    const-class v5, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 356
    const-class v5, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 357
    const-class v5, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 358
    const-class v5, Lcom/join/mgps/db/tables/CloudBackupsDataTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 359
    const-class v5, Lcom/join/mgps/db/tables/CategoryRecordTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 360
    const-class v5, Lcom/join/mgps/db/tables/FightMainTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 361
    const-class v5, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 362
    const-class v5, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 363
    const-class v5, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 364
    const-class v5, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 365
    const-class v5, Lcom/join/mgps/db/tables/H5GameAccountDataTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 366
    const-class v5, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 367
    const-class v5, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 368
    const-class v5, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 369
    const-class v5, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 370
    const-class v5, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 371
    const-class v5, Lcom/join/mgps/db/tables/AppTimeDataTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 372
    const-class v5, Lcom/join/mgps/db/tables/RewardBananaTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 373
    const-class v5, Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 374
    const-class v5, Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-static {v3, v5, v6}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 375
    invoke-virtual/range {p0 .. p2}, Lcom/join/android/app/common/db/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    if-eqz v2, :cond_36

    .line 376
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_36

    .line 377
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 378
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    goto :goto_71

    :cond_36
    if-eqz v4, :cond_37

    .line 379
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 380
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 381
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_72

    .line 382
    :cond_37
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2}, Lg1/f;->d()Ljava/util/List;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/sql/SQLException; {:try_start_81 .. :try_end_81} :catch_28

    return-void

    :catch_28
    move-exception v0

    move-object v2, v0

    .line 384
    const-class v3, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 385
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_74

    :goto_73
    throw v3

    :goto_74
    goto :goto_73
.end method

.method public p()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudBackupsDataTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->r0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public q()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudDownRecoderTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->A0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public r()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Course;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/android/app/common/db/tables/Course;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->e:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public s()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadFileTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/DownloadFileTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public t()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadHistoryTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->w0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public u()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->q0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public v()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/DownlodTaskCopyTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->x:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public w()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUUpdateTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/EMUUpdateTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->u:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public x()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->o:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public y()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUApkTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->n:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method

.method public z()Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/db/DatabaseHelper;->t0:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-object v0
.end method
