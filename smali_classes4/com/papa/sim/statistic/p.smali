.class public Lcom/papa/sim/statistic/p;
.super Ljava/lang/Object;
.source "StatFactory.java"


# static fields
.field private static g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Lcom/papa/sim/statistic/p;

.field private static k:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/sim/statistic/o;

.field private d:Lcom/papa/sim/statistic/db/b;

.field e:Lcom/papa/sim/statistic/h;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1f4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    const-string v0, "1280*720"

    .line 3
    sput-object v0, Lcom/papa/sim/statistic/p;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/papa/sim/statistic/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/p;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/papa/sim/statistic/p;->f:I

    .line 4
    iput-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/p;->d:Lcom/papa/sim/statistic/db/b;

    .line 6
    invoke-static {p1}, Lcom/papa/sim/statistic/o;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    return-void
.end method

.method private A2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$l3;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/sim/statistic/p;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/p;->m(Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->j:Lcom/papa/sim/statistic/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/p;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/p;->j:Lcom/papa/sim/statistic/p;

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/p;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/p;->j:Lcom/papa/sim/statistic/p;

    return-object p0
.end method

.method private m(Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;
    .locals 5

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatDataCenterReq;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatDataCenterReq;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatDataCenterReq;->setGame_time(J)V

    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setDid(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setAdv_id(Ljava/lang/String;)V

    .line 6
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setOs(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setPhone(Ljava/lang/String;)V

    .line 8
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setModel(Ljava/lang/String;)V

    .line 9
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setMfr(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/papa/sim/statistic/p;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setRes(Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/papa/sim/statistic/p;->f:I

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setIs_test(I)V

    .line 12
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setApp_version(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$e3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$e3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public A0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V
    .locals 17

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v15, Lcom/papa/sim/statistic/p$c2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p13

    move-object/from16 v4, p11

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p2

    move/from16 v13, p12

    move/from16 v14, p9

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v15, p10

    invoke-direct/range {v1 .. v15}, Lcom/papa/sim/statistic/p$c2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;III)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public A1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$y1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/p$y1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v1, v0, p2}, Lcom/papa/sim/statistic/o;->z(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    return-void
.end method

.method public B0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    .line 1
    invoke-virtual/range {v0 .. v14}, Lcom/papa/sim/statistic/p;->C0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public B1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public B2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$q1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$q1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$a1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$a1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V
    .locals 18

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v15, Lcom/papa/sim/statistic/p$d2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p14

    move-object/from16 v4, p12

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-wide/from16 v11, p8

    move-object/from16 v13, p7

    move/from16 v14, p13

    move-object/from16 v17, v0

    move-object v0, v15

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v1 .. v16}, Lcom/papa/sim/statistic/p$d2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;III)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C1(Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$o0;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$o0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Ext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C2(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method updateLiveStat() called.step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->l()Lcom/papa/sim/statistic/pref/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liveStat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/a;->a()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/p;->A2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/papa/sim/statistic/pref/a;

    invoke-direct {p1}, Lcom/papa/sim/statistic/pref/a;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/a;->f(B)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/papa/sim/statistic/pref/a;->g(J)V

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/pref/a;->e(J)V

    .line 10
    iget-object p2, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/pref/b;->E(Lcom/papa/sim/statistic/pref/a;)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    const-string v4, ";liveStat="

    const-string v5, "step="

    if-ne p1, v3, :cond_3

    .line 11
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->l()Lcom/papa/sim/statistic/pref/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/pref/a;->e(J)V

    .line 14
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->E(Lcom/papa/sim/statistic/pref/a;)V

    .line 15
    invoke-direct {p0, v0, p2}, Lcom/papa/sim/statistic/p;->A2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 16
    iget-object v3, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/b;->l()Lcom/papa/sim/statistic/pref/a;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->a()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-lez p1, :cond_4

    .line 19
    invoke-direct {p0, v3, p2}, Lcom/papa/sim/statistic/p;->A2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/papa/sim/statistic/pref/a;

    invoke-direct {p1}, Lcom/papa/sim/statistic/pref/a;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/pref/a;->g(J)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/a;->f(B)V

    .line 23
    iget-object p2, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/pref/b;->E(Lcom/papa/sim/statistic/pref/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$z0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/p$z0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V
    .locals 13

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Lcom/papa/sim/statistic/p$a2;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/papa/sim/statistic/p$a2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuideLoad:Lcom/papa/sim/statistic/Event;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$k3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$k3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$v0;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$v0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;III)V
    .locals 14

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Lcom/papa/sim/statistic/p$b2;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/papa/sim/statistic/p$b2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuidePlay:Lcom/papa/sim/statistic/Event;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$p2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$p2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public F1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuidePlayGame:Lcom/papa/sim/statistic/Event;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$g1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$g1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$e2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$e2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i0;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$i0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$h1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$h1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$g3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$g3;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$t1;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$t1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$g0;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$g0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$u2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$u2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$h2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$h2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$x0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/p$x0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public J0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$z2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$z2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public J1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$j2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$j2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$h4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$h4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public K0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$v2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$v2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$j0;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$j0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$b4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$b4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$q2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$q2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$q0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p5

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$q0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;IILjava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$i4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$w2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$w2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M1(Lcom/papa/sim/statistic/Event;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$k0;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$k0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public N(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$s3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$s3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public N0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$x2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$x2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public N1(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$h3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/p$h3;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$g4;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$g4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public O0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$s2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$s2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public O1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$v3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$v3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$r3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$r3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$j3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$j3;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P1(Ljava/lang/String;III)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$w3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$w3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;III)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$c4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$c4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$b3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$b3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$h0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$h0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$h;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$h;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$o2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$o2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$k;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$k;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$e;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public S0(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/o;->G(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public S1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->startApp2:Lcom/papa/sim/statistic/Event;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$f;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$u1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$u1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$j4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$j4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$e0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$e0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$j1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$j1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$g;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$g;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$d0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa/sim/statistic/p$d0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$p1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$p1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public W(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$p0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$p0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public W0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/p;->X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public W1(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$u3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$u3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$r0;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$r0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/papa/sim/statistic/p$f0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/p$f0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$w1;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$w1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$q3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$q3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$d1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$d1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$i2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$o3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$o3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$m1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$m1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$n3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$n3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$y0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/p$y0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b2(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;BB)V
    .locals 11

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/papa/sim/statistic/p$t3;

    move-object v1, v10

    move-object v2, p0

    move v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    move-object v6, p1

    move v7, p2

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/papa/sim/statistic/p$t3;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZBB)V

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/papa/sim/statistic/p$v1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    move-object v6, p5

    move/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/p$v1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$w;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$w;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 11

    if-nez p2, :cond_0

    const-string v0, "/mgpapa/aidlservice"

    goto :goto_0

    :cond_0
    const-string v0, "/wufan91/aidlservice"

    .line 1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    .line 5
    :cond_1
    array-length v7, v6

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 6
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_start15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "_"

    if-eqz v1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 10
    invoke-virtual {p0, v1, v0, p1}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "game_startbattle15"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/papa/sim/statistic/p;->V1(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "game_start160"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    .line 18
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/papa/sim/statistic/p;->i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v10, "play_time_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/papa/sim/statistic/p;->J1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v10, "game_out_"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v5

    .line 33
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->T0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$k1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$k1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/papa/sim/statistic/p$v;

    move-object v1, v9

    move-object v2, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/p$v;-><init>(Lcom/papa/sim/statistic/p;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d2(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/papa/sim/statistic/p;->h2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->d:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/b;->b()V

    return-void
.end method

.method public e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$x1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$x1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameUnlockSp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/o;->D(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V

    return-void
.end method

.method public e2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$u;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$u;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->joystickConfigChanged:Lcom/papa/sim/statistic/Event;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$p3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$p3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$y;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$y;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/JoyStickConfig;->setType(I)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/JoyStickConfig;->setFile(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/o;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/o;->D(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V

    return-void
.end method

.method public g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$w0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/p$w0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$c0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/p$c0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/papa/sim/statistic/p$t;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/p$t;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$r1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$r1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$l0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$m0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$m0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$x;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$x;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$m3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$m3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$j;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$j;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$n0;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$n0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$t2;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$t2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$b1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$b1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$y3;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$y3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$s1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$s1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j2(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$n1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$n1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$n;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$n;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$l1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/papa/sim/statistic/p;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$x3;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$x3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->insufficientStorage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/papa/sim/statistic/p$o1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/papa/sim/statistic/p$o1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$i;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$t0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$t0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$a4;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$a4;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()Lcom/papa/sim/statistic/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->e:Lcom/papa/sim/statistic/h;

    return-object v0
.end method

.method public n0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$l;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$e1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$e1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$e4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$e4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$m;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$m;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$c1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$c1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$d4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$d4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$l4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$r;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$r;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$c;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$c;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$u0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$u0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$q;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$q;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/papa/sim/statistic/p$f1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/p$f1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$k4;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$k4;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r(Lcom/papa/sim/statistic/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$l2;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$l2;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$o;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$o;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i1;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$i1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$a;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$a;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$k2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$k2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$p;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$p;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s1(Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->z(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    return-void
.end method

.method public s2(ILjava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$f4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/p$f4;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$n2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$n2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$i3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/p$i3;-><init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$z3;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$z3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$b;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$b;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$f2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$f2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$a3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$a3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u1(Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->z(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    return-void
.end method

.method public u2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$d;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/p$d;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Lcom/papa/sim/statistic/e;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$m2;

    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/p$m2;-><init>(Lcom/papa/sim/statistic/p;ZLcom/papa/sim/statistic/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$r2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$r2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/papa/sim/statistic/p$s0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p6

    move-object v6, p4

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/p$s0;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v2(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$d3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$d3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$b0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$b0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$y2;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$y2;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/papa/sim/statistic/StatJsonRawData;

    invoke-virtual {v0, p2, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 3
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$g2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/p$g2;-><init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/StatJsonRawData;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w2(ZLjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/o;->l0(Z)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, ""

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/p;->d:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/b;->a()V

    .line 4
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p1

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/papa/sim/statistic/db/EMUApkTable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/papa/sim/statistic/p;->d:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/db/b;->u(Ljava/util/List;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$s;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa/sim/statistic/p$s;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$c3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$c3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x1(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/o;->G(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public x2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/o;->m0(Z)V

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$z;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$z;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$f3;

    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/p$f3;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y1(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/papa/sim/statistic/p$z1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/p$z1;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/o;->n0(Z)V

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/p;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/papa/sim/statistic/p$a0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/p$a0;-><init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public z0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;I)V
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    .line 1
    invoke-virtual/range {v0 .. v13}, Lcom/papa/sim/statistic/p;->A0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public z1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p;->c:Lcom/papa/sim/statistic/o;

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z2(Lcom/papa/sim/statistic/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p;->e:Lcom/papa/sim/statistic/h;

    return-void
.end method
