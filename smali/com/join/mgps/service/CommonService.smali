.class public Lcom/join/mgps/service/CommonService;
.super Landroid/app/Service;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/CommonService$l;,
        Lcom/join/mgps/service/CommonService$q;,
        Lcom/join/mgps/service/CommonService$p;,
        Lcom/join/mgps/service/CommonService$o;,
        Lcom/join/mgps/service/CommonService$m;,
        Lcom/join/mgps/service/CommonService$r;,
        Lcom/join/mgps/service/CommonService$k;,
        Lcom/join/mgps/service/CommonService$j;,
        Lcom/join/mgps/service/CommonService$n;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EService;
.end annotation


# static fields
.field private static final F:Ljava/lang/String; = "CommonService"

.field public static G:Z = true

.field public static H:Z = true

.field public static I:Z

.field static J:Z

.field static K:Z


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Ljava/lang/String;

.field E:Lcom/join/mgps/service/CommonService$l;

.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field c:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field d:Landroid/content/Intent;

.field private e:Lcom/join/mgps/dto/RecomDatabean;

.field f:Landroid/content/IntentFilter;

.field g:Landroid/content/IntentFilter;

.field h:Landroid/content/IntentFilter;

.field i:Landroid/content/IntentFilter;

.field j:Landroid/content/IntentFilter;

.field k:Lcom/join/mgps/service/CommonService$o;

.field l:Lcom/join/mgps/service/CommonService$p;

.field private m:Landroid/content/Context;

.field n:Ljava/lang/Thread;

.field private o:Ljava/lang/String;

.field private p:Z

.field q:Landroid/os/Handler;

.field r:Landroid/os/CountDownTimer;

.field private s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field t:Lcom/join/mgps/rpc/j;

.field u:Lcom/papa/controller/core/d;

.field v:Z

.field private w:I

.field x:Ljava/util/concurrent/ScheduledExecutorService;

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.mgps.activity.sendUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/service/CommonService;->p:Z

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/service/CommonService;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/service/CommonService;->v:Z

    const/4 v2, 0x5

    .line 8
    iput v2, p0, Lcom/join/mgps/service/CommonService;->w:I

    .line 9
    iput-object v1, p0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    iput v0, p0, Lcom/join/mgps/service/CommonService;->y:I

    .line 11
    iput v0, p0, Lcom/join/mgps/service/CommonService;->z:I

    const/16 v1, 0x14

    .line 12
    iput v1, p0, Lcom/join/mgps/service/CommonService;->A:I

    .line 13
    iput v0, p0, Lcom/join/mgps/service/CommonService;->B:I

    .line 14
    iput v0, p0, Lcom/join/mgps/service/CommonService;->C:I

    const-string v0, "11111"

    .line 15
    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->D:Ljava/lang/String;

    return-void
.end method

.method private F0()V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/rpc/impl/f;->k(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    move-result-object v1

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->n1(Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i0;->c1(Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 10
    throw v0

    .line 11
    :cond_3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;-><init>()V

    .line 12
    :try_start_1
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfilePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v1}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->H(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    move-result-object v0

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i0;->c1(Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private G0()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v3, v4, v2, v5}, Lcom/join/mgps/rpc/impl/f;->K(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->getUnread()I

    move-result v1

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->o1(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i0;->b1(I)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->o1(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)V

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i0;->b1(I)V

    goto :goto_3

    .line 13
    :goto_2
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->o1(Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;)V

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i0;->b1(I)V

    .line 15
    throw v2

    .line 16
    :cond_4
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfileGetUnreadMessageCount:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->I(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->getUnread()I

    move-result v1

    .line 20
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/j0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i0;->b1(I)V

    :goto_3
    return-void
.end method

.method private J()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "failed  "

    const-string v3, "getEMUVersionForArena"

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    const-wide/16 v5, 0x1388

    const/4 v7, 0x1

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v8, v9}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/join/mgps/rpc/impl/c;->C1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {v8}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 5
    invoke-virtual {v8}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ApkVersionbean;

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v11

    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v11

    .line 8
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v13, "tag_id"

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v13

    invoke-virtual {v13, v12}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 12
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v7, :cond_0

    const/4 v13, 0x0

    .line 13
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 14
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v14

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-virtual {v14, v15}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 15
    :cond_0
    :try_start_2
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApk_name(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_url(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLaunch_name(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLogo(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setPackage_name(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRelease_date(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setSize(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTag_id(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTeam_info(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_compatible(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_info(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_type(I)V

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    .line 30
    invoke-static {v11, v12}, Lcom/join/android/app/common/utils/h;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkArenaTable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v4

    .line 31
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_3
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {v0, v12}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 33
    invoke-static {v12}, Lcom/join/android/app/common/utils/h;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V

    goto/16 :goto_0

    .line 34
    :cond_1
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApk_name(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_url(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLaunch_name(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLogo(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setPackage_name(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRelease_date(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setSize(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTag_id(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTeam_info(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_compatible(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_info(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_type(I)V

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    invoke-virtual {v0, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 50
    invoke-static {v11, v12}, Lcom/join/android/app/common/utils/h;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkArenaTable;)Z

    .line 51
    invoke-static {v12}, Lcom/join/android/app/common/utils/h;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v8

    goto :goto_5

    :catch_2
    move-object v4, v8

    goto :goto_6

    :cond_2
    if-nez v8, :cond_4

    .line 52
    iget v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v0, :cond_4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->e:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    .line 55
    :goto_4
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->J()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_5
    if-nez v4, :cond_3

    .line 57
    iget v4, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v4, :cond_3

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->e:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    .line 60
    :try_start_6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->J()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 62
    :catch_3
    :cond_3
    throw v0

    :catch_4
    :goto_6
    if-nez v4, :cond_4

    .line 63
    iget v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v0, :cond_4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->e:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/join/mgps/service/CommonService;->w:I

    goto :goto_4

    :catch_5
    :cond_4
    :goto_7
    return-void
.end method

.method private N(Lcom/join/mgps/service/CommonService$n;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/join/mgps/service/CommonService$n;->a:Ljava/lang/String;

    .line 2
    iget-boolean v9, p1, Lcom/join/mgps/service/CommonService$n;->b:Z

    .line 3
    iget v6, p1, Lcom/join/mgps/service/CommonService$n;->c:I

    .line 4
    iget v7, p1, Lcom/join/mgps/service/CommonService$n;->d:I

    .line 5
    iget-object v10, p1, Lcom/join/mgps/service/CommonService$n;->e:Ljava/lang/String;

    .line 6
    iget-object v3, p1, Lcom/join/mgps/service/CommonService$n;->f:Ljava/lang/String;

    .line 7
    iget-object v4, p1, Lcom/join/mgps/service/CommonService$n;->g:Ljava/lang/String;

    .line 8
    iget-object v5, p1, Lcom/join/mgps/service/CommonService$n;->h:Ljava/lang/String;

    .line 9
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 11
    new-instance v2, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v8}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameIdList(Ljava/util/List;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lq1/h;->l0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v11, Lcom/join/mgps/service/CommonService$c;

    move-object v1, v11

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/service/CommonService$c;-><init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/service/CommonService$n;ZLjava/lang/String;)V

    invoke-interface {v0, v11}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private N0(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V
    .locals 5

    const/16 v0, 0x31

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->t:Lcom/join/mgps/rpc/j;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/service/CommonService;->t:Lcom/join/mgps/rpc/j;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/service/CommonService;->W0(Ljava/lang/String;I)V

    .line 5
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 7
    new-instance v2, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameIdList(Ljava/util/List;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->t:Lcom/join/mgps/rpc/j;

    new-instance v3, Lcom/join/mgps/service/CommonService$b;

    invoke-direct {v3, p0, p1, p2}, Lcom/join/mgps/service/CommonService$b;-><init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;I)V

    invoke-interface {v2, v1, v3}, Lcom/join/mgps/rpc/j;->I(Lcom/join/mgps/dto/RequestModel;Ll1/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/service/CommonService;->W0(Ljava/lang/String;I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private P0(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/db/tables/JoystickTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/JoystickTable;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JoystickTable;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/JoystickTable;->setMac(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/JoystickTable;->setTime(Ljava/lang/Long;)V

    .line 5
    invoke-static {}, Ln1/a0;->o()Ln1/a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method

.method private R0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->n(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcomeBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    return-void
.end method

.method private S0(Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->p(Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcome:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    return-void
.end method

.method private T0(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;->getPosts_list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;->getPosts_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->q(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 5
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcomePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln1/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private W0(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private X(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Ln1/a0;->o()Ln1/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/a0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/JoystickTable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/JoystickTable;->getTime()Ljava/lang/Long;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result p1

    return p1
.end method

.method private X0(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->Z(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private Y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Z()Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "1"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v3

    invoke-virtual {v3}, Lg1/b;->d()Ljava/util/List;

    move-result-object v3

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 4
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 7
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 8
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    const-wide/16 v13, 0x3e8

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v11

    if-eq v11, v12, :cond_1

    .line 10
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long v10, v10, v13

    .line 11
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    mul-long v15, v15, v13

    cmp-long v12, v5, v10

    if-lez v12, :cond_2

    cmp-long v10, v5, v15

    if-gez v10, :cond_2

    move-object v3, v9

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v10

    if-eq v10, v12, :cond_2

    .line 13
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long v10, v10, v13

    .line 14
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    mul-long v15, v15, v13

    cmp-long v13, v5, v10

    if-lez v13, :cond_2

    cmp-long v10, v5, v15

    if-gez v10, :cond_2

    .line 15
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 16
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v10

    if-eq v10, v12, :cond_2

    move-object v7, v9

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v0, v3}, Lcom/join/mgps/service/CommonService;->b1(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    move-result v1

    return v1

    :cond_4
    if-eqz v7, :cond_5

    .line 18
    invoke-virtual {v0, v7}, Lcom/join/mgps/service/CommonService;->b1(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_5
    return v2
.end method

.method public static synthetic a(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/service/CommonService;->c0(Ljava/lang/String;)V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/service/CommonService;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->j1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/join/mgps/service/CommonService;->b0()V

    return-void
.end method

.method private static synthetic b0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->C()V

    return-void
.end method

.method private synthetic c0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private f0()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    return-object p0
.end method

.method private g0(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    .line 7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 8
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 12
    :goto_1
    new-instance v1, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 13
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/service/CommonService$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/service/CommonService$a;-><init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/service/CommonService;->W0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i(Lcom/join/mgps/service/CommonService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/service/CommonService;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p1
.end method

.method static synthetic k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/service/CommonService;->X(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->u()V

    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsPraise:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0, v1}, Ln1/t;->r(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/ForumTable;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->G(Ljava/lang/String;)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v1

    .line 7
    invoke-static {v2}, Lcom/join/mgps/Util/i0;->F(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getPid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/service/CommonService;->p0(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->v()Ljava/util/List;

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/join/mgps/service/CommonService;->G:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->f0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->n()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->r()V

    return-void
.end method

.method private v(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 13
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 16
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    .line 18
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    .line 19
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 23
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 24
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x0

    .line 25
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 27
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    .line 28
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 29
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 30
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_6
    :goto_3
    return-object v0
.end method

.method private w(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 13
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 16
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    .line 18
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    .line 19
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 23
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 24
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x0

    .line 25
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 27
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    .line 28
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 29
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 30
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p5    # J
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gameendlocalbattle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method A0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->openKeyskill:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method B(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gameout"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    int-to-long v2, p3

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->T0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method B0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->selectLevel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method C(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # J
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.ps2.gameout"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->T0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method C0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->shareScreenshot:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gamestart15"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method D0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->showVippopup:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gamestart160"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/papa/sim/statistic/p;->i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method E0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->uesVippopup:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gamestartbattle15"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->V1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p5    # J
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.gamestartlocalbattle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->B2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method H()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->b0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->I()V

    return-void
.end method

.method H0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.union.ad.action.AdService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method I()V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg1/f;->M(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/service/CommonService;->A:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/service/CommonService;->A:I

    div-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/join/mgps/service/CommonService;->A:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/join/mgps/service/CommonService;->B:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_4
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/join/mgps/service/CommonService;->C:I

    .line 12
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/join/mgps/service/CommonService$h;

    invoke-direct {v3, p0, v1}, Lcom/join/mgps/service/CommonService$h;-><init>(Lcom/join/mgps/service/CommonService;Ljava/util/List;)V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method I0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.appfinish"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_701"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->m1()V

    return-void
.end method

.method K(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object v10, p0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    iget-object v1, v10, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v1, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p1

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameIdList(Ljava/util/List;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->l0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v11, Lcom/join/mgps/service/CommonService$e;

    move-object v1, v11

    move-object v2, p0

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p6

    move v6, p3

    move-object v7, p2

    move/from16 v8, p7

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/service/CommonService$e;-><init>(Lcom/join/mgps/service/CommonService;IILcom/join/mgps/dto/QueryDownloadInfoResponseData;ZLjava/lang/String;ZZ)V

    invoke-interface {v0, v11}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method K0(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.share.image"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/service/CommonService;->i1(Ljava/lang/String;I)V

    return-void
.end method

.method L(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 5
    new-instance v3, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {v4}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v5, v4, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "rec"

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 14
    :goto_1
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setIsRecommend(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lq1/h;->U(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/service/CommonService$i;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/join/mgps/service/CommonService$i;-><init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method L0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange",
            "com.join.android.app.mgsim.wufun.broadcast.refreshPurchasedGame"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->O()V

    return-void
.end method

.method M()V
    .locals 17
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "0"

    const-string v3, "-1"

    .line 1
    iget-object v4, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9e

    sget-boolean v4, Lcom/join/mgps/service/CommonService;->I:Z

    if-eqz v4, :cond_0

    goto/16 :goto_5f

    :cond_0
    const/4 v4, 0x1

    .line 2
    sput-boolean v4, Lcom/join/mgps/service/CommonService;->I:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    const-class v7, Ljava/util/ArrayList;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Lcom/join/mgps/dto/ApkVersionbean;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "getEMUVersion"

    const-string v7, "start"

    .line 6
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "tag_id"

    const-string v9, "31"

    .line 8
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 10
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_2

    .line 11
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 14
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 15
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 16
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v7, :cond_6

    .line 17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz v5, :cond_8

    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 20
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 21
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 22
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_4

    .line 23
    :cond_8
    :goto_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "35"

    .line 24
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 26
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_a

    .line 27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_9

    goto :goto_6

    .line 28
    :cond_9
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v5, :cond_c

    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 30
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 31
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 32
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_7

    :cond_c
    :goto_8
    if-eqz v7, :cond_e

    .line 33
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_d

    goto :goto_9

    .line 34
    :cond_d
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    :goto_9
    if-eqz v5, :cond_10

    .line 35
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 36
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 37
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 38
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_a

    .line 39
    :cond_10
    :goto_b
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "43"

    .line 40
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 42
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_12

    .line 43
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_11

    goto :goto_c

    .line 44
    :cond_11
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    :goto_c
    if-eqz v5, :cond_14

    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_13
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 46
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 47
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 48
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_d

    :cond_14
    :goto_e
    if-eqz v7, :cond_16

    .line 49
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_15

    goto :goto_f

    .line 50
    :cond_15
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_11

    :cond_16
    :goto_f
    if-eqz v5, :cond_18

    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 52
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 53
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 54
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_10

    .line 55
    :cond_18
    :goto_11
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "33"

    .line 56
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 58
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_1a

    .line 59
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_19

    goto :goto_12

    .line 60
    :cond_19
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_14

    :cond_1a
    :goto_12
    if-eqz v5, :cond_1c

    .line 61
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1b
    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 62
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 63
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 64
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_13

    :cond_1c
    :goto_14
    if-eqz v7, :cond_1e

    .line 65
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1d

    goto :goto_15

    .line 66
    :cond_1d
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_17

    :cond_1e
    :goto_15
    if-eqz v5, :cond_20

    .line 67
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 68
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 69
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 70
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_16

    .line 71
    :cond_20
    :goto_17
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "34"

    .line 72
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 74
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_22

    .line 75
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_21

    goto :goto_18

    .line 76
    :cond_21
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1a

    :cond_22
    :goto_18
    if-eqz v5, :cond_24

    .line 77
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_23
    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 78
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 79
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 80
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_19

    :cond_24
    :goto_1a
    if-eqz v7, :cond_26

    .line 81
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_25

    goto :goto_1b

    .line 82
    :cond_25
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1d

    :cond_26
    :goto_1b
    if-eqz v5, :cond_28

    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 84
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 85
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 86
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1c

    .line 87
    :cond_28
    :goto_1d
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "51"

    .line 88
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 90
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_2a

    .line 91
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_29

    goto :goto_1e

    .line 92
    :cond_29
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_20

    :cond_2a
    :goto_1e
    if-eqz v5, :cond_2c

    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2b
    :goto_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 94
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 95
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 96
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_1f

    :cond_2c
    :goto_20
    if-eqz v7, :cond_2e

    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_21

    .line 98
    :cond_2d
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_23

    :cond_2e
    :goto_21
    if-eqz v5, :cond_30

    .line 99
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2f
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 100
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 101
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 102
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_22

    .line 103
    :cond_30
    :goto_23
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "53"

    .line 104
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 106
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_32

    .line 107
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_31

    goto :goto_24

    .line 108
    :cond_31
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_26

    :cond_32
    :goto_24
    if-eqz v5, :cond_34

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_33
    :goto_25
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 110
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 111
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 112
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_25

    :cond_34
    :goto_26
    if-eqz v7, :cond_36

    .line 113
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_35

    goto :goto_27

    .line 114
    :cond_35
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_29

    :cond_36
    :goto_27
    if-eqz v5, :cond_38

    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 116
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 117
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 118
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_28

    .line 119
    :cond_38
    :goto_29
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "54"

    .line 120
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 122
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_3a

    .line 123
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_39

    goto :goto_2a

    .line 124
    :cond_39
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2c

    :cond_3a
    :goto_2a
    if-eqz v5, :cond_3c

    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3b
    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 126
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 127
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 128
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_2b

    :cond_3c
    :goto_2c
    if-eqz v7, :cond_3e

    .line 129
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3d

    goto :goto_2d

    .line 130
    :cond_3d
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2f

    :cond_3e
    :goto_2d
    if-eqz v5, :cond_40

    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3f
    :goto_2e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 132
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 133
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 134
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_2e

    .line 135
    :cond_40
    :goto_2f
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "32"

    .line 136
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 138
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_41

    .line 139
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_43

    :cond_41
    if-eqz v5, :cond_43

    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_42
    :goto_30
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_43

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 141
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 142
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 143
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_30

    :cond_43
    if-eqz v7, :cond_44

    .line 144
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_46

    :cond_44
    if-eqz v5, :cond_46

    .line 145
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_45
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 146
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    .line 147
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 148
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_31

    .line 149
    :cond_46
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "56"

    .line 150
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 152
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_48

    .line 153
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_47

    goto :goto_32

    .line 154
    :cond_47
    invoke-virtual {v1, v5, v11, v9}, Lcom/join/mgps/service/CommonService;->q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_34

    :cond_48
    :goto_32
    if-eqz v5, :cond_4a

    .line 155
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_49
    :goto_33
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 156
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 157
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 158
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_33

    :cond_4a
    :goto_34
    if-eqz v7, :cond_4c

    .line 159
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4b

    goto :goto_35

    .line 160
    :cond_4b
    invoke-virtual {v1, v5, v7, v9}, Lcom/join/mgps/service/CommonService;->r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_37

    :cond_4c
    :goto_35
    if-eqz v5, :cond_4e

    .line 161
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4d
    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 162
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d

    .line 163
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 164
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_36

    .line 165
    :cond_4e
    :goto_37
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "57"

    .line 166
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 168
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v12

    invoke-virtual {v12, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v11, :cond_4f

    .line 169
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_51

    :cond_4f
    if-eqz v5, :cond_51

    .line 170
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_50
    :goto_38
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/ApkVersionbean;

    .line 171
    invoke-virtual {v12}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 172
    new-instance v13, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v13, v12}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 173
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v13}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_38

    :cond_51
    if-eqz v7, :cond_52

    .line 174
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_54

    :cond_52
    if-eqz v5, :cond_54

    .line 175
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_53
    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 176
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 177
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 178
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_39

    .line 179
    :cond_54
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "58"

    .line 180
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v9

    invoke-virtual {v9, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 182
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v9, :cond_55

    .line 183
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_57

    :cond_55
    if-eqz v5, :cond_57

    .line 184
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_56
    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 185
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    const-string v13, "58"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 186
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 187
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3a

    :cond_57
    if-eqz v7, :cond_58

    .line 188
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5a

    :cond_58
    if-eqz v5, :cond_5a

    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_59
    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ApkVersionbean;

    .line 190
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v11

    const-string v12, "58"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 191
    new-instance v11, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v11, v9}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 192
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v9

    invoke-virtual {v9, v11}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3b

    .line 193
    :cond_5a
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "60"

    .line 194
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v9

    invoke-virtual {v9, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 196
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v9, :cond_5b

    .line 197
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5d

    :cond_5b
    if-eqz v5, :cond_5d

    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5c
    :goto_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 199
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    const-string v13, "60"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 200
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 201
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3c

    :cond_5d
    if-eqz v7, :cond_5e

    .line 202
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_60

    :cond_5e
    if-eqz v5, :cond_60

    .line 203
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5f
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ApkVersionbean;

    .line 204
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v11

    const-string v12, "60"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 205
    new-instance v11, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v11, v9}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 206
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v9

    invoke-virtual {v9, v11}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3d

    .line 207
    :cond_60
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "166"

    .line 208
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v9

    invoke-virtual {v9, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 210
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v7}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    if-eqz v9, :cond_61

    .line 211
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_63

    :cond_61
    if-eqz v5, :cond_63

    .line 212
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_62
    :goto_3e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_63

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ApkVersionbean;

    .line 213
    invoke-virtual {v11}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    const-string v13, "166"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 214
    new-instance v12, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 215
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3e

    :cond_63
    if-eqz v7, :cond_64

    .line 216
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_66

    :cond_64
    if-eqz v5, :cond_66

    .line 217
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_65
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/ApkVersionbean;

    .line 218
    invoke-virtual {v7}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v9

    const-string v11, "166"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 219
    new-instance v9, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {v9, v7}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 220
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v7

    invoke-virtual {v7, v9}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_3f

    .line 221
    :cond_66
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9c

    const/4 v5, 0x0

    .line 222
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v7, :cond_67

    .line 223
    :try_start_1
    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_40

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5c

    :cond_67
    const/4 v7, 0x0

    .line 224
    :goto_40
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v11, v10, v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v7

    .line 225
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/join/mgps/rpc/impl/c;->r1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_9a

    .line 226
    :try_start_3
    invoke-virtual {v7}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v9

    if-ne v9, v4, :cond_9a

    const-string v9, "sucess"

    .line 227
    invoke-static {v6, v9}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v6, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v7}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v6, :cond_68

    .line 230
    sput-boolean v10, Lcom/join/mgps/service/CommonService;->I:Z

    return-void

    .line 231
    :cond_68
    :try_start_4
    invoke-virtual {v7}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/APKVersionMainBean;

    if-eqz v6, :cond_82

    .line 232
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getApp()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ApkVersionbean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    :try_start_5
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getSimulator_run_ad_text_cfg()Ljava/util/List;

    move-result-object v12

    sput-object v12, Lcom/MApplication;->s0:Ljava/util/List;

    .line 234
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getSingle_game_run_ad_text_cfg()Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    move-result-object v12

    sput-object v12, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 235
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getPublic_video_cfg()Lcom/join/mgps/dto/PublicVideoCfgBean;

    move-result-object v12

    sput-object v12, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 236
    sget-object v12, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    if-eqz v12, :cond_69

    .line 237
    invoke-virtual {v12}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getCounts()I

    move-result v12

    sput v12, Lcom/MApplication;->v0:I

    .line 238
    :cond_69
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u83b7\u5f97\u914d\u7f6e\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/MApplication;->t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    invoke-virtual {v13}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getCounts()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getCfg()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_81

    .line 240
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_81

    .line 241
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/HomeViewSwich;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_81

    .line 242
    :try_start_6
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6a

    .line 244
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    goto :goto_41

    .line 245
    :cond_6a
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    const-string v14, "300"

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 246
    :goto_41
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 247
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6b

    .line 248
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    goto :goto_42

    .line 249
    :cond_6b
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_size()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    const-string v14, "500"

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 250
    :goto_42
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 251
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6c

    .line 252
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_43

    .line 253
    :cond_6c
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_net_game_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 254
    :goto_43
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 255
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6d

    .line 256
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_44

    .line 257
    :cond_6d
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_simulator_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 258
    :goto_44
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_switch()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 260
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    goto :goto_45

    .line 261
    :cond_6e
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_cfg_stand_alone_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_switch_express(Ljava/lang/String;)V

    .line 262
    :goto_45
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_unrestricted_speed()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/service/CommonService;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_unrestricted_speed()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/DownloadCfg;->setCfg_values_express(Ljava/lang/String;)V

    .line 264
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/join/mgps/pref/h;->N(Lcom/join/mgps/dto/HomeViewSwich;)V

    .line 265
    sput-object v12, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_46

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 266
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    :goto_46
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_number_of_win()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 268
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_6f

    .line 269
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_47

    .line 270
    :cond_6f
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 271
    :goto_47
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_game_size()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 272
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_70

    .line 273
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_48

    .line 274
    :cond_70
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 275
    :goto_48
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 276
    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v2

    if-nez v2, :cond_71

    .line 277
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 278
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 279
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 280
    :cond_71
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getAn_battle_switch()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 281
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v2

    if-ne v2, v4, :cond_72

    .line 282
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_49

    .line 283
    :cond_72
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 284
    :goto_49
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getPsp_ad_show_time()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 285
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 286
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 287
    :cond_73
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getRanking_menu()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 288
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 289
    :cond_74
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_arc_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 290
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_75

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 291
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->adIdArc()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 292
    :cond_75
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_psp_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 293
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_76

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 294
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->adIdPsp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 295
    :cond_76
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_down_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 296
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_77

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 297
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->adIdDownloadSpeedUp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 298
    :cond_77
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_common_s_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 299
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_78

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 300
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->adIdCommonV()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 301
    :cond_78
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getSeep_up_read_only_common_h_ad_id()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 302
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_79

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 303
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->adIdCommonH()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 304
    :cond_79
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getNick_name_modify_title()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 305
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 306
    :cond_7a
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getGame_download_boot()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 307
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_7b

    .line 309
    :try_start_8
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v13, -0x8

    if-ne v3, v13, :cond_7b

    .line 311
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 312
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :cond_7b
    :goto_4a
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getGame_performance_boot()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 314
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_7c

    .line 316
    :try_start_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 317
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v13, -0x8

    if-ne v3, v13, :cond_7c

    .line 318
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4b

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 319
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    :cond_7c
    :goto_4b
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getApp_down_wifi_status()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 321
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_7d

    .line 323
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 324
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_7d

    .line 325
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4c

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 326
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    :cond_7d
    :goto_4c
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getExt_game_upload_type()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 328
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v3, :cond_7e

    .line 330
    :try_start_e
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4d

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 331
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    :cond_7e
    :goto_4d
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getWf_home_page_position()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 333
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_7f

    .line 334
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_4e

    .line 335
    :cond_7f
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->showIndex()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 336
    :goto_4e
    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getMd5_file_tag()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 337
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_switch()I

    move-result v3

    if-ne v3, v4, :cond_80

    .line 338
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v2}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/join/mgps/Util/u;->r:Ljava/lang/String;

    goto :goto_4f

    .line 340
    :cond_80
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 341
    :goto_4f
    :try_start_10
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->emulatorStartAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_start_ad_count()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_50

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 342
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :goto_50
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->emulatorGoldenFingerUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_golden_finger_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 344
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->emulatorOneSkillUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_one_skill_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 345
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->emulatorCheckpointUrl()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v12}, Lcom/join/mgps/dto/HomeViewSwich;->getEmulator_checkpoint_url()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 346
    :cond_81
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getPlay_game_time_lv_cfg()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 347
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_51

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 348
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    :cond_82
    move-object v9, v5

    .line 349
    :goto_51
    invoke-virtual {v7}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const-string v3, "_"

    if-ne v2, v4, :cond_84

    .line 350
    :try_start_13
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->A()[Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v12

    .line 353
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 354
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v14

    .line 355
    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 356
    aget-object v15, v2, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-gt v15, v13, :cond_84

    .line 357
    new-instance v15, Lcom/join/mgps/dto/VersionDto;

    invoke-direct {v15}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    .line 358
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setAndroidUrl(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v10

    .line 360
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setVersionNo(F)V

    .line 361
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setInfo(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getHead_pic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setHead_pic(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setTow_tpl_back_ground_pic(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v9}, Lcom/join/mgps/dto/ApkVersionbean;->getTpl_type()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/join/mgps/dto/VersionDto;->setTpl_type(I)V

    .line 365
    aget-object v5, v2, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v13, :cond_84

    .line 366
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.join.android.app.mgsim.wufun.broadcast.appUpdate"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    aget-object v2, v2, v10

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float v9, v14

    cmpg-float v2, v2, v9

    if-gez v2, :cond_83

    .line 368
    invoke-virtual {v15, v4}, Lcom/join/mgps/dto/VersionDto;->setQiangzhi(Z)V

    const-string v2, "appUpdateBean"

    .line 369
    invoke-virtual {v5, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_52

    .line 370
    :cond_83
    invoke-virtual {v15, v10}, Lcom/join/mgps/dto/VersionDto;->setQiangzhi(Z)V

    const-string v2, "appUpdateBean"

    .line 371
    invoke-virtual {v5, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 372
    :goto_52
    invoke-virtual {v1, v5}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    :cond_84
    invoke-virtual {v6}, Lcom/join/mgps/dto/APKVersionMainBean;->getPlugin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 374
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ApkVersionbean;

    .line 375
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 376
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_85

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 377
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v9

    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v12

    if-eq v9, v12, :cond_85

    .line 378
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v9

    invoke-virtual {v9, v6}, Lg1/b;->delete(Ljava/lang/Object;)I

    const/4 v6, 0x0

    .line 379
    :cond_85
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 380
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v12

    invoke-virtual {v12, v9}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    const/16 v12, 0x9

    const/4 v13, 0x5

    if-eqz v9, :cond_90

    .line 382
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_90

    .line 383
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v4, :cond_86

    const/4 v14, 0x0

    .line 384
    :goto_54
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_86

    .line 385
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v15

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v15, v4}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_54

    .line 386
    :cond_86
    :try_start_14
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/EMUApkTable;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 387
    :try_start_15
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_type(I)V

    .line 400
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v9

    invoke-static {v9}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 401
    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v9

    if-eqz v6, :cond_8c

    .line 402
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_87

    .line 403
    iget-object v14, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v14, v6, v4}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    :cond_87
    if-eqz v9, :cond_89

    .line 404
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v14

    if-ne v14, v13, :cond_89

    .line 405
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_88

    .line 407
    invoke-virtual {v6, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 408
    :cond_88
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    goto :goto_55

    .line 411
    :cond_89
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-nez v5, :cond_8a

    .line 412
    invoke-virtual {v6, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 413
    :cond_8a
    :goto_55
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-eq v5, v12, :cond_8b

    if-eqz v9, :cond_8f

    .line 415
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v13, :cond_8f

    .line 416
    :cond_8b
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_57

    :cond_8c
    if-eqz v9, :cond_8e

    .line 417
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v5

    if-ne v5, v11, :cond_8d

    .line 418
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v5, v4, v10, v6}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 419
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 420
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_57

    .line 421
    :cond_8d
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_57

    .line 422
    :cond_8e
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v5, v4, v10, v6}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 423
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->Z1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_57

    :catch_7
    move-exception v0

    move-object v5, v0

    goto :goto_56

    :catch_8
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x0

    .line 424
    :goto_56
    :try_start_16
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    :cond_8f
    :goto_57
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v5

    invoke-virtual {v5, v4}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 426
    invoke-static {v4}, Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto/16 :goto_59

    .line 427
    :cond_90
    new-instance v4, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {v4}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>()V

    .line 428
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_type(I)V

    .line 441
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object v9

    invoke-static {v9}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v9

    invoke-virtual {v9, v4}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 443
    invoke-static {v4}, Lcom/join/android/app/common/utils/h;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 444
    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v9

    if-eqz v6, :cond_95

    .line 445
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 446
    iget-object v14, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v14, v6, v4}, Lcom/join/android/app/common/utils/h;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    :cond_91
    if-eqz v9, :cond_92

    .line 447
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v14

    if-ne v14, v13, :cond_92

    .line 448
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v5}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 451
    invoke-virtual {v6, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_58

    .line 452
    :cond_92
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-nez v5, :cond_93

    .line 453
    invoke-virtual {v6, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 454
    :cond_93
    :goto_58
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v5

    invoke-virtual {v5, v6}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-eq v5, v12, :cond_94

    if-eqz v9, :cond_98

    .line 456
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v13, :cond_98

    .line 457
    :cond_94
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/join/android/app/common/utils/h;->G(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)V

    goto :goto_59

    :cond_95
    if-eqz v9, :cond_97

    .line 458
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v5

    if-ne v5, v11, :cond_96

    .line 459
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v5, v4, v10, v6}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 460
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_59

    .line 461
    :cond_96
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a2(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto :goto_59

    .line 462
    :cond_97
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v5, v4, v10, v6}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 463
    iget-object v5, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->Z1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    :cond_98
    :goto_59
    const/4 v4, 0x1

    goto/16 :goto_53

    .line 464
    :cond_99
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v4

    invoke-virtual {v4}, Lg1/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/papa/sim/statistic/p;->w2(ZLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_5a

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v7

    goto :goto_5c

    :catch_9
    move-object v5, v7

    goto :goto_5d

    .line 465
    :cond_9a
    :goto_5a
    sput-boolean v10, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v7, :cond_9d

    .line 466
    iget v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v2, :cond_9d

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 467
    iput v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    :goto_5b
    const-wide/16 v2, 0x1388

    .line 468
    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->M()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_5e

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    .line 470
    :goto_5c
    sput-boolean v10, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v5, :cond_9b

    .line 471
    iget v3, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v3, :cond_9b

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 472
    iput v3, v1, Lcom/join/mgps/service/CommonService;->w:I

    const-wide/16 v3, 0x1388

    .line 473
    :try_start_18
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->M()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_a

    .line 475
    :catch_a
    :cond_9b
    throw v2

    :catch_b
    const/4 v5, 0x0

    .line 476
    :catch_c
    :goto_5d
    sput-boolean v10, Lcom/join/mgps/service/CommonService;->I:Z

    if-nez v5, :cond_9d

    .line 477
    iget v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    if-lez v2, :cond_9d

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 478
    iput v2, v1, Lcom/join/mgps/service/CommonService;->w:I

    goto :goto_5b

    .line 479
    :cond_9c
    sput-boolean v10, Lcom/join/mgps/service/CommonService;->I:Z

    const-string v2, "nonet"

    .line 480
    invoke-static {v6, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :catch_d
    :cond_9d
    :goto_5e
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->J()V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->S()V

    :cond_9e
    :goto_5f
    return-void
.end method

.method M0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/service/CommonService$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/CommonService$l;-><init>(Lcom/join/mgps/service/CommonService;)V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    iget-object v1, v1, Lcom/join/mgps/service/CommonService$l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method O()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "uid"

    .line 5
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 6
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->b()Lcom/join/mgps/rpc/impl/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/rpc/impl/e;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->U0(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method O0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 2
    new-instance v1, Lcom/join/mgps/dto/BluetoothHandleBlackListRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/BluetoothHandleBlackListRequestBean;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/BluetoothHandleBlackListRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/BluetoothHandleBlackListRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->W(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BluetoothHandleBlackListData;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/BluetoothHandleBlackListData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/BluetoothHandleBlackListData;->getData_info()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->v1(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method P(Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "fromPkg"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "getMiniGameAdConfigResult"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v1, ""

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    invoke-static {v3}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 11
    invoke-virtual {p1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 12
    new-instance v3, Lcom/join/mgps/dto/MiniGameSdkDtoRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/MiniGameSdkDtoRequestArgs;-><init>()V

    .line 13
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/MiniGameSdkDtoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/MiniGameSdkDtoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/h;->w(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/MiniGameSdkDtoResponseResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MiniGameSdkDtoResponseResponseData;->getAd_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;

    .line 23
    new-instance v5, Ll2/b;

    invoke-direct {v5}, Ll2/b;-><init>()V

    .line 24
    invoke-virtual {v4}, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->getSdk_app_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ll2/b;->b(Ljava/lang/String;)V

    const/4 v6, -0x1

    .line 25
    invoke-virtual {v4}, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->getSdk_type()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    sget-object v4, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v6, v4, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->getSdk_type()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    sget-object v4, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v6, v4, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    .line 27
    :cond_3
    :goto_1
    invoke-virtual {v5, v6}, Ll2/b;->c(I)V

    .line 28
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {p0, v2}, Lcom/wufun/union/ad/AdService;->b(Landroid/content/Context;Ljava/util/List;)V

    :cond_5
    const-string v1, "data"

    .line 30
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->H0(Landroid/os/Bundle;)V

    goto :goto_2

    .line 32
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->H0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->H0(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    const p1, 0x7f110206

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method Q()V
    .locals 17
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x1388L
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getShowViewDatas()Lcom/join/mgps/dto/CommonRequestBean;

    .line 3
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v2

    invoke-interface {v2, v0}, Lq1/h;->Z(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v0, :cond_20

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FirstScreenAdDtoData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FirstScreenAdDtoData;->getWf_ad_list()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/FirstScreenAdDtoData;

    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstScreenAdDtoData;->getTh_ad_switch()Lcom/join/mgps/dto/ThAdSwitchDataBean;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/FirstScreenAdDtoData;

    invoke-virtual {v4}, Lcom/join/mgps/dto/FirstScreenAdDtoData;->getTh_ad_switch()Lcom/join/mgps/dto/ThAdSwitchDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_ad_switch()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 10
    iget-object v4, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    :cond_0
    iget-object v4, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->thAdSwitchCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FirstScreenAdDtoData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstScreenAdDtoData;->getTh_ad_switch()Lcom/join/mgps/dto/ThAdSwitchDataBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->thAdSwitchCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 14
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 20
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 21
    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x0

    .line 22
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ShowViewDataBean;->setNeedDelt(Z)V

    .line 23
    invoke-virtual {v7, v10}, Lcom/join/mgps/dto/ShowViewDataBean;->setNeedDelt(Z)V

    .line 24
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getUp_times()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getUp_times()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "0"

    if-eqz v11, :cond_d

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_6

    .line 25
    :cond_4
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v11

    .line 26
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/SplashIntentBean;

    .line 27
    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_8

    .line 28
    :cond_5
    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v14

    .line 29
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/dto/SplashIntentBean;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    invoke-virtual {v15}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    invoke-virtual {v15}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 32
    invoke-virtual {v15}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/join/mgps/service/CommonService;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 33
    invoke-virtual {v13, v3}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 34
    :cond_6
    invoke-virtual {v15}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 35
    invoke-virtual {v15}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/join/mgps/service/CommonService;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 36
    invoke-virtual {v13, v3}, Lcom/join/mgps/dto/SplashIntentBean;->setPic_remote_local(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_7
    move-object/from16 v6, v16

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v16, v6

    .line 37
    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/io/File;

    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 38
    :cond_9
    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/SplashIntentBean;

    .line 40
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 41
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 42
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/join/mgps/service/CommonService;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 43
    invoke-virtual {v13, v6}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url_local(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v6, v16

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v16, v6

    if-eqz v10, :cond_12

    .line 44
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v3

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 47
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_d
    :goto_6
    move-object/from16 v16, v6

    .line 48
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/ShowViewDataBean;->setId(I)V

    .line 49
    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/SplashIntentBean;

    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 52
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/join/mgps/service/CommonService;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 53
    invoke-virtual {v6, v10}, Lcom/join/mgps/dto/SplashIntentBean;->setPic_remote_local(Ljava/lang/String;)V

    .line 54
    :cond_f
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 55
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/join/mgps/service/CommonService;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 56
    invoke-virtual {v6, v10}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url_local(Ljava/lang/String;)V

    goto :goto_7

    .line 57
    :cond_10
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v3

    invoke-virtual {v7}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 60
    iget-object v3, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    move-object/from16 v16, v6

    :cond_12
    :goto_8
    move-object/from16 v6, v16

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 61
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    .line 63
    :cond_15
    invoke-virtual {v3}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v5

    .line 64
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/SplashIntentBean;

    .line 65
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 66
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/join/mgps/service/CommonService;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 67
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SplashIntentBean;->setPic_remote_local(Ljava/lang/String;)V

    .line 68
    :cond_17
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 69
    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/join/mgps/service/CommonService;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 70
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url_local(Ljava/lang/String;)V

    goto :goto_a

    .line 71
    :cond_18
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v3

    invoke-virtual {v5, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 72
    :cond_19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 73
    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SplashIntentBean;

    .line 76
    invoke-virtual {v4}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 77
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 79
    :cond_1c
    invoke-virtual {v4}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 80
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_c

    .line 82
    :cond_1d
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_b

    .line 83
    :cond_1e
    iget-object v0, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->Z()Z

    move-result v0

    .line 85
    iget-object v2, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_d

    .line 86
    :cond_1f
    iget-object v0, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_d

    .line 87
    :cond_20
    iget-object v0, v1, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_d
    return-void
.end method

.method Q0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hasShowAdInfo()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method R()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/d;->c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getToken"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method S()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "com.join.intent.initAdVideoConfig"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 4
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    new-instance v3, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;->setUid(I)V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/VideoAdCfgRequestArgs;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/rpc/impl/h;->q(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/VideoAdCfgBean;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getArcade_game_ad_cfg()Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSingle_game_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getSwitch_state()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/PspGameAdCfgBean;->getCount_down()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->mod_normal_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getMod_normal_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getMod_enhance_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_path_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_path_cfg()Lcom/join/mgps/dto/SimulatorPathCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_fc_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_fc_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_gba_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_gba_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_psp_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_psp_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 25
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_jj_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_jj_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->simulator_gold_finger_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getSimulator_gold_finger_cfg()Lcom/join/mgps/dto/SimulatorAdCfgBean;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/dto/BaseBean;->toJsonStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSwitch_state()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/VideoAdCfgBean;->getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->getSpeedup_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/service/CommonService;->e1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 34
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/service/CommonService;->e1(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :goto_2
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    throw v1

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->e1(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method T()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->V(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/c;->Z(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;->getFlag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;->getMessages()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessages;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;->getMessages()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessages;->getData()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;->getMessages()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessages;->getData()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/service/CommonService;->R0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method U()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/join/mgps/rpc/impl/f;->i0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/service/CommonService;->S0(Lcom/join/mgps/dto/ForumData$ForumForumWelcomeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method U0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 4
    new-instance v1, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v1, v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>(Lcom/join/mgps/dto/AppBean;)V

    .line 5
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->e2(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->s()V

    return-void
.end method

.method V(I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v2

    sget v4, Lcom/join/mgps/Util/i0;->d:I

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/rpc/impl/f;->V(IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    sget v1, Lcom/join/mgps/Util/i0;->d:I

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/rpc/impl/f;->t0(IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/service/CommonService;->T0(Lcom/join/mgps/dto/ForumData$ForumForumWelcomePostsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ""

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 8
    :cond_4
    sget-object v1, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    sget-object v1, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    sget-object v1, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    if-nez p1, :cond_8

    return-void

    .line 11
    :cond_8
    iget-object p2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3, p2}, Lcom/papa/sim/statistic/p;->q(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method W()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.broadcast.action_insufficient_storage"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u540e\u518d\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method Y0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v1, "msg"

    const-string v2, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method Z0(Lcom/join/mgps/dto/SharePostRequest;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "shareResult "

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/SharePostRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/f;->f(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError_message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u8bf7\u6c42\u62a5\u9519"

    .line 4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method a1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/service/CommonService$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/CommonService$f;-><init>(Lcom/join/mgps/service/CommonService;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    new-instance v1, Lcom/join/mgps/service/CommonService$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/service/CommonService$g;-><init>(Lcom/join/mgps/service/CommonService;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->v(Lcom/papa/controller/core/ControllerManager$d;)V

    :cond_0
    return-void
.end method

.method b1(Lcom/join/mgps/dto/ShowViewDataBean;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageback time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getTag_show()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return v2

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method c()V
    .locals 17
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2}, Lg1/f;->v()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lg1/f;->J(Z)Ljava/util/List;

    move-result-object v3

    const-string v5, ""

    const-string v6, "_"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/16 v10, 0x9

    if-eqz v3, :cond_7

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/UtilsMy;->X(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 9
    invoke-virtual {v13}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v14

    if-ne v14, v7, :cond_1

    .line 10
    invoke-static {v13, v4}, Lcom/join/android/app/common/utils/h;->y(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result v14

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v0, v13}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v14

    :goto_1
    new-array v15, v8, [Ljava/lang/String;

    .line 12
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v0, v13, v4, v15}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_5

    .line 13
    invoke-virtual {v13}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 14
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 15
    invoke-virtual {v12, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 16
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 18
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    if-ne v13, v9, :cond_3

    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 19
    invoke-virtual {v12, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_0

    .line 20
    :cond_3
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 21
    invoke-virtual {v12, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 22
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 23
    :cond_4
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 24
    invoke-virtual {v12, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 25
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-virtual {v12, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 27
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 28
    :cond_6
    invoke-virtual {v12, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    if-eqz v3, :cond_9

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 32
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xb

    invoke-static {v0, v2, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->S2(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_6

    .line 34
    :cond_a
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v8}, Lg1/f;->J(Z)Ljava/util/List;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_c

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 38
    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v11

    if-ne v11, v10, :cond_b

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 42
    :cond_c
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->p()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 48
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->X(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v11

    .line 49
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v12

    if-eqz v11, :cond_e

    .line 50
    invoke-virtual {v11}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v13

    if-ne v13, v7, :cond_e

    .line 51
    invoke-static {v11, v4}, Lcom/join/android/app/common/utils/h;->y(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result v13

    goto :goto_4

    .line 52
    :cond_e
    invoke-static {v0, v11}, Lcom/join/mgps/Util/UtilsMy;->r0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v13

    :goto_4
    new-array v14, v8, [Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v0, v11, v4, v14}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    if-eqz v13, :cond_12

    .line 54
    invoke-virtual {v11}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/join/mgps/Util/UtilsMy;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 55
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 56
    invoke-virtual {v3, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 57
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 59
    :cond_f
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 60
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v11

    if-ne v11, v9, :cond_10

    new-instance v11, Ljava/io/File;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 61
    invoke-virtual {v3, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_5

    .line 62
    :cond_10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 63
    invoke-virtual {v3, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 66
    :cond_11
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 67
    invoke-virtual {v3, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 70
    :cond_12
    invoke-virtual {v3, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 72
    :cond_13
    invoke-virtual {v3, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 73
    :cond_14
    :goto_5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v11

    if-eq v12, v11, :cond_d

    .line 74
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v11

    invoke-static {v3, v11}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto/16 :goto_3

    .line 75
    :cond_15
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 76
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v11

    if-ne v11, v10, :cond_d

    .line 77
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 78
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 79
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 80
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2, v10}, Lcom/join/mgps/Util/UtilsMy;->S2(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_17
    :goto_6
    return-void
.end method

.method c1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method d()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MG=>LOGIN1--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/MApplication;->o0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/rpc/g;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/im/account/login?uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&nickname="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&battleRoomId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/MApplication;->o0:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&token="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    .line 10
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v3, 0xc8

    .line 12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 13
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 17
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    .line 18
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "token"

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "quickMessages"

    .line 20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v3, "type"

    const-string v4, "12"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v3, "msg"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f39\u5e55"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "chatRoomId"

    .line 29
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->D:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->Y0()V

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->K()V

    goto :goto_1

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MG=>LOGIN200!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    sput-boolean v1, Lcom/join/mgps/service/CommonService;->J:Z

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method d0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_local_battle_finish"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->apName()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "papa_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v2

    const-string v3, "12345678"

    invoke-virtual {v2, v0, v3}, Lcom/join/mgps/Util/WifiUtils;->createAPInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/WifiUtils;->createWiFiAP(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method d1(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object v11, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p3

    move-object/from16 v0, p4

    move/from16 v3, p5

    .line 1
    iget-object v4, v11, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isForceShow()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3
    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->setSelectedNextTips(Z)V

    const/4 v4, 0x0

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "open"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isUncheckSelfSupport()Z

    move-result v8

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-nez v4, :cond_5

    if-nez v8, :cond_5

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 8
    :cond_3
    iget-object v4, v11, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->S0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    move-result-object v4

    const/high16 v8, 0x30000000

    invoke-virtual {v4, v8}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    .line 9
    invoke-virtual {v4, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    move-result-object v1

    const-string v4, "data"

    invoke-virtual {v1, v4, v6}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    const-string v4, "ext"

    .line 10
    invoke-virtual {v1, v4, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    const-string v2, "disableShowSpeedUpPrompt"

    .line 11
    invoke-virtual {v1, v2, v9}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    const-string v2, "fromRecomDown"

    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;->a(I)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;->b(I)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    move-result-object v0

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isForceShow()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;->h(Z)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 17
    :cond_5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 18
    invoke-virtual/range {p4 .. p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v3}, Lcom/join/mgps/service/CommonService;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_6

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 20
    :cond_6
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    invoke-static {v4}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 28
    invoke-virtual {v4, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 30
    invoke-static {v4, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    if-eqz v6, :cond_8

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 37
    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p4 .. p5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 39
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    if-eqz v6, :cond_9

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide v4

    goto :goto_2

    :cond_9
    const-wide/16 v4, 0x0

    .line 41
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v10

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p3

    move v7, v9

    move v9, v10

    move v10, v12

    .line 42
    invoke-virtual/range {v0 .. v10}, Lcom/join/mgps/service/CommonService;->K(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V

    :cond_a
    :goto_3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.netbattlematchefficiency"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/papa/sim/statistic/p;->w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method e1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->q:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/service/a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/service/a;-><init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->k:Lcom/join/mgps/service/CommonService$o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->f:Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.loginNim"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/join/mgps/service/CommonService$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/CommonService$o;-><init>(Lcom/join/mgps/service/CommonService;)V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->k:Lcom/join/mgps/service/CommonService$o;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->f:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->l:Lcom/join/mgps/service/CommonService$p;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->j:Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.SendTextMsg"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/join/mgps/service/CommonService$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/CommonService$p;-><init>(Lcom/join/mgps/service/CommonService;)V

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->l:Lcom/join/mgps/service/CommonService$p;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->j:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method f1(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method g1(Lcom/join/mgps/dto/CollectionBeanSub;Z)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/service/CommonService;->h1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method h0(Landroid/content/Intent;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "android.net.wifi.WIFI_STATE_CHANGED",
            "android.net.wifi.STATE_CHANGE",
            "android.net.conn.CONNECTIVITY_CHANGE",
            "android.net.wifi.SCAN_RESULTS"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "android.net.wifi.STATE_CHANGE"

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u72b6\u6001\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iput-boolean v3, p0, Lcom/join/mgps/service/CommonService;->v:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/join/mgps/service/CommonService;->v:Z

    .line 13
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi\u72b6\u6001\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    .line 14
    invoke-static {v5}, Lcom/join/android/app/common/utils/f;->k(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u79fb\u52a8\u7f51\u7edc\u72b6\u6001\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    .line 16
    invoke-static {v5}, Lcom/join/android/app/common/utils/f;->i(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u7c7b\u578b\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    .line 18
    invoke-static {v5}, Lcom/join/android/app/common/utils/f;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "getEMUVersion"

    const-string v5, "net connect"

    .line 19
    invoke-static {v2, v5}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 20
    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->M()V

    :cond_4
    if-eqz v1, :cond_5

    const-string v1, "onConnectivityChanged"

    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wufan/friend/chat/c;->K()V

    :cond_5
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifi_state"

    const/4 v2, -0x1

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "previous_wifi_state"

    .line 30
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 35
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 36
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-void
.end method

.method h1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0, p5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUncheckSelfSupport(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getResourceSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    if-eqz p2, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivityNewTask(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result p2

    if-lez p2, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result p4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result p1

    invoke-static {p2, v0, p3, p4, p1}, Lcom/join/mgps/Util/UtilsMy;->G0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_9

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result p1

    if-lez p1, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result p2

    if-lt p1, p2, :cond_7

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result p2

    if-le p1, p2, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 19
    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.wufun.down.androidversion"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "gameid"

    .line 21
    iget-object p3, p0, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method

.method public i0(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/service/CommonService;->j0(ILjava/util/List;)V

    return-void
.end method

.method i1(Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/Util/r;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public j0(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    return-void

    .line 2
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/controller/core/ControllerManager$c;

    .line 4
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/service/CommonService;->X(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/service/CommonService;->P0(Lcom/papa/controller/core/ControllerManager$c;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/join/mgps/service/CommonService;->X0(Lcom/papa/controller/core/ControllerManager$c;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method j1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa/controller/core/d;->r(Landroid/content/Context;)Lcom/papa/controller/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->a1()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->x(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    invoke-virtual {v0}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method k0(Ljava/lang/String;Lcom/join/mgps/dto/SpValue;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/SpValue;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.overmind.sp.write.mod"
        }
    .end annotation

    :try_start_0
    const-string v0, "PrefDef"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/SpValue;->getValue()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    :cond_4
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method k1(Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/join/mgps/dto/AccountBean;ZLjava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/PapayOrder;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p3

    iput p3, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    const-string p3, ""

    .line 3
    iput-object p3, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getGame_name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getGame_app_key()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getPay_game_amount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 8
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getPay_show_type()I

    move-result p3

    iput p3, v0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getPay_type()I

    move-result p3

    iput p3, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayOrderInfo;->getGame_name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p2, 0x3

    .line 12
    iput p2, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    .line 13
    iput p2, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    :goto_1
    const/high16 p2, 0x10000000

    if-eqz p4, :cond_1

    .line 14
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string p4, "1"

    .line 15
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3, p5}, Lcom/join/mgps/dto/ExtBean;->setFrom_id(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3, p1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayNowActivity_$k;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/PayNowActivity_$k;

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/PayNowActivity_$k;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_2

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayNowActivity_$k;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/PayNowActivity_$k;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_2
    return-void
.end method

.method l0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->t(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->L0()V

    return-void
.end method

.method l1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->u:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->F()V

    :cond_0
    return-void
.end method

.method m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p1, "-1"

    return-object p1
.end method

.method m0(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.overmind.sp.write.introduction.show"
        }
    .end annotation

    const-string v0, "PrefDef"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method m1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/service/CommonService;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v2, "2"

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->c:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-nez v1, :cond_2

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method n0(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_reward_anim"
        }
    .end annotation

    return-void
.end method

.method n1(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->d:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method o(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    .line 4
    :cond_0
    sget-object v1, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/MApplication;->z:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v7, Lcom/join/mgps/dto/RequestAppDetialArgs;

    invoke-direct {v7}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>()V

    .line 6
    invoke-virtual {v7, v1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setDeviceid(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setVersion(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v7, p1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setGame_id(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setUid(I)V

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setToken(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/join/mgps/service/CommonService$d;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/service/CommonService$d;-><init>(Lcom/join/mgps/service/CommonService;ZLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/AccountBean;)V

    invoke-static {v7, v0}, Lcom/join/mgps/rpc/m;->c(Lcom/join/mgps/dto/RequestAppDetialArgs;Lcom/join/android/app/common/http/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.playtime"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ln1/d0;->n()Ln1/d0;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Ln1/d0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->getGamePlayTotalTime()J

    move-result-wide v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayRecentlyTime(J)V

    add-long/2addr v0, p4

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayTotalTime(J)V

    .line 8
    invoke-static {}, Ln1/d0;->n()Ln1/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/papa/sim/statistic/p;->J1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method o1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"content\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"color\":6,\"titlename\":\"\",\"vipType\":-1,\"name\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"userId\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->f()V

    .line 3
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/http/h;->c(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    const-string v0, "FriendPresenter srv login"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->K()V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->M0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->Q()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/service/CommonService;->p:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->l1()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->k:Lcom/join/mgps/service/CommonService$o;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->l:Lcom/join/mgps/service/CommonService$p;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->p1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "channel"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/v0;->C0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u767b\u5f55\u6210\u529f\uff01"

    .line 4
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->T(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->Y0()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/v0;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->q:Landroid/os/Handler;

    sget-object v1, Lcom/join/mgps/service/b;->a:Lcom/join/mgps/service/b;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/y0;->r0()Lcom/wufan/friend/chat/protocol/m;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/m;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->n1(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 21

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 1
    iput-object v12, v12, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz v13, :cond_2

    const-string v1, "action"

    .line 2
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "launchVGame"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "packageName"

    .line 5
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v2

    invoke-virtual {v2, v12, v0, v1}, Lcom/join/mgps/va/overmind/e;->S(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_0
    const-string v2, "getMiniGameConfig"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "fromPkg"

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v12, v1}, Lcom/join/mgps/service/CommonService;->P(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "adStatisticEvent"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    .line 13
    invoke-virtual {v13, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adId"

    .line 14
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v12, v1, v2, v3}, Lcom/join/mgps/service/CommonService;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    const-string v1, "paygameid"

    .line 16
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "fromSdk"

    .line 17
    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "appkey"

    .line 18
    invoke-virtual {v13, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v0, v2}, Lcom/join/mgps/service/CommonService;->o(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v1, "_from_type"

    const-string v2, "_from"

    const-string v3, "fromRecomDown"

    const/4 v4, 0x0

    if-eqz v13, :cond_5

    const-string v5, "downGameId"

    .line 20
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "uncheckSelfSupport"

    .line 21
    invoke-virtual {v13, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "disableShowSpeedUpPrompt"

    .line 22
    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-wide/16 v9, 0x0

    const-string v7, "resourceSize"

    .line 23
    invoke-virtual {v13, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v7, "ext"

    .line 24
    invoke-virtual {v13, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v3, "data"

    .line 26
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    instance-of v14, v14, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v14, :cond_4

    .line 27
    invoke-virtual {v13, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    move-object v14, v3

    goto :goto_1

    :cond_4
    move-object v14, v4

    .line 28
    :goto_1
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v7

    move v4, v6

    move-wide v5, v9

    move-object v7, v14

    move v9, v15

    move v10, v0

    .line 30
    invoke-virtual/range {v1 .. v11}, Lcom/join/mgps/service/CommonService;->K(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V

    goto/16 :goto_4

    :cond_5
    const-string v5, "_downloadArgs"

    if-eqz v13, :cond_7

    const-string v6, "requestAndDownloadGameById"

    .line 31
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 32
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-nez v1, :cond_6

    .line 33
    new-instance v1, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 34
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    .line 35
    :cond_6
    invoke-direct {v12, v1, v0}, Lcom/join/mgps/service/CommonService;->N0(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V

    goto/16 :goto_4

    :cond_7
    if-eqz v13, :cond_9

    const-string v6, "requestAndUpdateGameById"

    .line 36
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 37
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-nez v0, :cond_8

    .line 38
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 39
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x1

    .line 40
    invoke-direct {v12, v0, v1}, Lcom/join/mgps/service/CommonService;->N0(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V

    goto/16 :goto_4

    :cond_9
    if-eqz v13, :cond_b

    const-string v6, "requestAndChoiceUpdateGameById"

    .line 41
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 42
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-nez v0, :cond_a

    .line 43
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 44
    invoke-virtual {v13, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setGameId(Ljava/lang/String;)V

    :cond_a
    const/4 v1, 0x2

    .line 45
    invoke-direct {v12, v0, v1}, Lcom/join/mgps/service/CommonService;->N0(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V

    goto/16 :goto_4

    :cond_b
    if-eqz v13, :cond_c

    const-string v5, "gameDownloadDetail"

    .line 46
    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 47
    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 48
    new-instance v14, Lcom/join/mgps/service/CommonService$n;

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "keyWord"

    .line 50
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "recPosition"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "remarks"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "nodeId"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "volcanoOther"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/service/CommonService$n;-><init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {v12, v14}, Lcom/join/mgps/service/CommonService;->N(Lcom/join/mgps/service/CommonService$n;)V

    goto/16 :goto_4

    :cond_c
    if-eqz v13, :cond_e

    const-string v1, "gameDownloadDetail2"

    .line 52
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 53
    iget-object v0, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    iget-object v0, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 55
    iget-object v0, v12, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    iget-object v1, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->S0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    .line 56
    :cond_d
    iget-object v0, v12, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    iget-object v1, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v3

    iget-object v4, v12, Lcom/join/mgps/service/CommonService;->s:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->G0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_4

    :cond_e
    const-string v1, "downloadTask"

    if-eqz v13, :cond_10

    const-string v2, "downGameIdNotSelfSupport"

    .line 57
    invoke-virtual {v13, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 58
    invoke-virtual {v13, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    instance-of v3, v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_f

    .line 60
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFromRecomDown()Z

    move-result v1

    goto :goto_2

    :cond_f
    const-string v1, ""

    move-object v0, v1

    const/4 v1, 0x0

    .line 63
    :goto_2
    invoke-virtual {v12, v2, v0, v4, v1}, Lcom/join/mgps/service/CommonService;->x(Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto/16 :goto_4

    :cond_10
    if-eqz v13, :cond_11

    const-string v0, "accountloginSuccess"

    .line 64
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->H()V

    goto/16 :goto_4

    :cond_11
    if-eqz v13, :cond_12

    const-string v0, "checkcoin"

    .line 66
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 67
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    invoke-virtual {v12, v0}, Lcom/join/mgps/service/CommonService;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_4

    :cond_12
    if-eqz v13, :cond_13

    const-string v0, "sharePostData"

    .line 69
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 70
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SharePostRequest;

    .line 71
    invoke-virtual {v12, v0}, Lcom/join/mgps/service/CommonService;->Z0(Lcom/join/mgps/dto/SharePostRequest;)V

    goto/16 :goto_4

    :cond_13
    if-eqz v13, :cond_15

    const-string v0, "getDownloadRecomedData"

    .line 72
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 73
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_14

    .line 75
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    :cond_14
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFromRecomDown()Z

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Lcom/join/mgps/service/CommonService;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_15
    if-eqz v13, :cond_16

    const-string v0, "onClickGamebeSpeakGameId"

    .line 77
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 78
    invoke-virtual {v13, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-direct {v12, v0}, Lcom/join/mgps/service/CommonService;->g0(Ljava/lang/String;)V

    goto :goto_4

    .line 80
    :cond_16
    :try_start_0
    invoke-static {}, Lcom/join/mgps/wrapper/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_17
    :goto_3
    iget-object v0, v12, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/u;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/join/mgps/service/CommonService;->o:Ljava/lang/String;

    .line 83
    iget-object v5, v12, Lcom/join/mgps/service/CommonService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/join/mgps/service/CommonService$m;

    invoke-direct {v6, v12}, Lcom/join/mgps/service/CommonService$m;-><init>(Lcom/join/mgps/service/CommonService;)V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x32

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 84
    iget-object v14, v12, Lcom/join/mgps/service/CommonService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v15, Lcom/join/mgps/service/CommonService$j;

    invoke-direct {v15, v12, v4}, Lcom/join/mgps/service/CommonService$j;-><init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/service/CommonService$a;)V

    const-wide/16 v16, 0xa

    const-wide/16 v18, 0x1e

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v14 .. v20}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->H()V

    .line 86
    :cond_18
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/service/CommonService;->L0()V

    .line 87
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method p(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    new-instance v2, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;-><init>()V

    .line 4
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;->setGameList(Ljava/util/List;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;->setUid(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CheckGameVersionRequestArgs;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/h;->m(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CheckGameVersionResponseData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData;->getGameList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 11
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CheckGameVersionResponseData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckGameVersionResponseData;->getGameList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;

    .line 13
    new-instance v2, Lcom/join/mgps/db/tables/EMUUpdateTable;

    invoke-direct {v2, v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;-><init>(Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;)V

    .line 14
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_10

    .line 16
    :cond_1
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getIs_network()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getPlugin_screenshot()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getIs_fight()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getFight_type()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getFight_funv2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSp_tpl_two_position()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getGift_package_switch()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info_str()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v5

    invoke-static {v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info_str()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info_str()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 29
    :cond_3
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info_switch(I)V

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v5

    invoke-static {v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info_str(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_5
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info_switch(I)V

    const/4 v5, 0x0

    .line 33
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 34
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info_str(Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_6

    goto :goto_2

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 36
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getAllow_start_up_ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMax_an_compatible_ver()I

    move-result v4

    if-eqz v4, :cond_7

    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMax_an_compatible_ver()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 40
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMin_an_compatible_ver()I

    move-result v4

    if-eqz v4, :cond_8

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMin_an_compatible_ver()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 42
    :cond_8
    :try_start_0
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 43
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-ne v4, v5, :cond_14

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_e

    .line 45
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v4, v5, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v4, :cond_e

    .line 46
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 47
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/TipBean;

    .line 51
    invoke-virtual {v7}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 52
    sget-object v8, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_4

    .line 53
    :cond_b
    invoke-virtual {v7}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 54
    sget-object v8, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 55
    :cond_c
    :goto_4
    invoke-virtual {v7}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 56
    sget-object v4, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 57
    :cond_d
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :cond_f
    :goto_5
    if-nez v5, :cond_14

    .line 59
    sget-object v4, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TipBean;

    .line 62
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 63
    sget-object v7, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    goto :goto_6

    .line 64
    :cond_11
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 65
    sget-object v7, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 66
    :cond_12
    :goto_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 67
    sget-object v4, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 68
    :cond_13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_14
    :goto_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getLock_sp()I

    move-result v4

    if-ne v4, v1, :cond_16

    .line 72
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v4

    if-eq v4, v1, :cond_17

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLock_sp()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    goto :goto_8

    .line 73
    :cond_15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getLock_sp()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    goto :goto_8

    .line 74
    :cond_16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getLock_sp()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 75
    :cond_17
    :goto_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSync_memory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_0

    .line 77
    :cond_18
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0xb

    const/4 v8, 0x5

    const/16 v9, 0x9

    if-eqz v4, :cond_2a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/16 v10, 0x2a

    if-eq v4, v8, :cond_19

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-eq v4, v9, :cond_19

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v10, :cond_2a

    .line 78
    :cond_19
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getResource_url_remote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getResource_size()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 81
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_1a

    const/4 v6, 0x1

    :cond_1a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVerCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v4, v6, :cond_1c

    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getGame_upgrade_state()I

    move-result v4

    if-ne v4, v1, :cond_1b

    .line 87
    invoke-virtual {v2, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_9

    .line 88
    :cond_1b
    invoke-virtual {v2, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_9

    .line 89
    :cond_1c
    invoke-virtual {v2, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_9

    .line 90
    :cond_1d
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 91
    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 92
    :cond_1e
    :goto_9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 93
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v6

    if-le v4, v6, :cond_20

    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    goto :goto_a

    .line 96
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mod url is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_20
    :goto_a
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 99
    :cond_21
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 100
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->K2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_b

    .line 101
    :cond_22
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_b
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 104
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_24

    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/SingleGameModInfoBean;->setStatus(I)V

    goto :goto_c

    .line 107
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", single mod url is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_24
    :goto_c
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/APKUtils;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 110
    :cond_25
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 112
    :cond_26
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-static {v4}, Lcom/join/android/app/common/utils/APKUtils;->D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 115
    :cond_27
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->K2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_d

    .line 116
    :cond_28
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_d
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 119
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_f

    .line 120
    :cond_29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_2a
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v7, :cond_2c

    .line 123
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_e

    .line 124
    :cond_2b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_2c
    :goto_e
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 126
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 127
    :cond_2d
    :goto_f
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v8, :cond_2f

    .line 128
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 129
    :cond_2f
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 130
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 133
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 134
    :cond_30
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 137
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 138
    :cond_31
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 141
    :cond_32
    :goto_10
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->c()V

    :cond_33
    return-void
.end method

.method p0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object p1

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/f;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method p1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService;->E:Lcom/join/mgps/service/CommonService$l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u94dc\u677f\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getDownDeductCoin(Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/join/mgps/rpc/impl/c;->t1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v5

    if-eqz v5, :cond_b

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/DownDeductCoinResponse;

    if-eqz v3, :cond_d

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownDeductCoinResponse;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 9
    invoke-static {v5}, Lcom/join/mgps/Util/AESUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 11
    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-lez v6, :cond_1

    .line 12
    :try_start_1
    aget-object v6, v5, v1

    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 13
    :goto_1
    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 14
    aget-object v8, v5, v9

    goto :goto_2

    :cond_2
    move-object v8, v7

    .line 15
    :goto_2
    array-length v10, v5

    const/4 v11, 0x2

    if-le v10, v11, :cond_3

    .line 16
    aget-object v10, v5, v11

    goto :goto_3

    :cond_3
    move-object v10, v7

    .line 17
    :goto_3
    array-length v12, v5

    const/4 v13, 0x3

    if-le v12, v13, :cond_4

    .line 18
    aget-object v5, v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 19
    :goto_4
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownDeductCoinResponse;->getNum()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_a

    if-eqz v5, :cond_9

    const-string v4, "\u3011</strong>\u82b1\u8d39<font color=#FFDD1C>"

    const-string v6, "\u6b63\u5728\u4e0b\u8f7d<strong>\u3010"

    const-string v7, "</font>"

    if-eq v5, v9, :cond_8

    if-eq v5, v11, :cond_7

    if-eq v5, v13, :cond_6

    const/4 v3, 0x6

    if-eq v5, v3, :cond_5

    goto/16 :goto_5

    .line 20
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 21
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/php25/PDownload/d;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u9700\u8981<font color=#F47500>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownDeductCoinResponse;->getBalance()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->a(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_5

    .line 23
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/php25/PDownload/d;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 24
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 25
    iget-object v3, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/php25/PDownload/d;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_5

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_5

    .line 27
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_5

    .line 28
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;->c(I)Lcom/join/mgps/activity/NoticeTopAnimActivityDialog_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_5

    :cond_c
    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 31
    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method q0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.psp.countdown"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->OnClickPSPCutDown:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method q1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/EMUApkTable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    const/16 v1, 0x83

    if-lt v0, v1, :cond_3

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ApkVersionbean;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {p1, p2}, Lcom/join/mgps/db/tables/EMUApkTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 7
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 8
    :cond_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p2

    if-eq p2, v0, :cond_4

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->exitVippopup:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method r1(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    const/16 v1, 0x83

    if-lt v0, v1, :cond_3

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getDown_type()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ApkVersionbean;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    invoke-direct {p1, p2}, Lcom/join/mgps/db/tables/EMUApkArenaTable;-><init>(Lcom/join/mgps/dto/ApkVersionbean;)V

    .line 7
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 8
    :cond_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p2

    if-eq p2, v0, :cond_4

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method s()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method s0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitmember"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->PSPLimitMember:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s1()V
    .locals 0

    return-void
.end method

.method t(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method t0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitplay"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->PSPLimitPlay:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method t1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_update_user_purchase_info",
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/service/CommonService;->s1()V

    return-void
.end method

.method u0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitpopup"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->PSPLimitPopup:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method u1(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.gamePlayTimes"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liveTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " receive"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    new-array p1, p1, [Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " send"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/service/CommonService;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->gamePlayTimes:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method v0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitquit"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->PSPLimitQuit:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method v1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->getModel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/joystick/map/a;->l(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method w0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->NotpromptVippopup:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method x(Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u83b7\u53d6\u8d44\u6e90\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    invoke-virtual {v3, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 6
    new-instance v4, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 7
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/join/mgps/rpc/impl/h;->j(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/service/CommonService;->d1(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110206

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService;->f1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method x0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickFunction:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    :cond_0
    invoke-static {p4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    :cond_1
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    :cond_2
    sget-object p2, Lcom/papa/sim/statistic/Event;->clickKnowGoRealPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 10
    :cond_3
    sget-object p2, Lcom/papa/sim/statistic/Event;->realNameUpWindows:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 12
    :cond_4
    sget-object p2, Lcom/papa/sim/statistic/Event;->antiAddtionWindowUp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 14
    :cond_5
    sget-object p2, Lcom/papa/sim/statistic/Event;->realNameAuth:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 15
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 16
    :cond_6
    sget-object p2, Lcom/papa/sim/statistic/Event;->nonageAstrictHint:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 18
    :cond_7
    sget-object p2, Lcom/papa/sim/statistic/Event;->realNameClickSubmit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 19
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 20
    :cond_8
    sget-object p2, Lcom/papa/sim/statistic/Event;->clickClosedRealNameWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 21
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 22
    :cond_9
    sget-object p2, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 23
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 24
    :cond_a
    sget-object p2, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 25
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 26
    :cond_b
    sget-object p2, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 27
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 28
    :cond_c
    sget-object p2, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Click:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 29
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 30
    :cond_d
    sget-object p2, Lcom/papa/sim/statistic/Event;->Custom_openGoldfinger:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 31
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 32
    :cond_e
    sget-object p2, Lcom/papa/sim/statistic/Event;->Custom_closeGoldfinger:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 34
    :cond_f
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 35
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 36
    :cond_10
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Vedio:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 37
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 38
    :cond_11
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Buy:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 39
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 40
    :cond_12
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 41
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_1

    .line 42
    :cond_13
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Pop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 43
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 44
    :cond_14
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Vedio:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 45
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 46
    :cond_15
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Buy:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 47
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 48
    :cond_16
    sget-object p2, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Close:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 49
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 50
    :cond_17
    invoke-static {}, Lcom/papa/sim/statistic/Event;->values()[Lcom/papa/sim/statistic/Event;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_19

    aget-object v1, p2, p4

    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 52
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    :cond_18
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_19
    :goto_1
    return-void
.end method

.method y0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickVippopup:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emulogcat"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/EmuErrorDto;

    invoke-direct {v0}, Lcom/join/mgps/dto/EmuErrorDto;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/EmuErrorDto;->setGame_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/EmuErrorDto;->setUid(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/EmuErrorDto;->setPlugin_package_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/EmuErrorDto;->setPlugin_version(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p5}, Lcom/join/mgps/dto/EmuErrorDto;->setError(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/p;->f0(Ljava/lang/String;)V

    return-void
.end method

.method z0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->openGoldfinger:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
