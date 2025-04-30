.class public Lcom/papa/sim/statistic/o;
.super Ljava/lang/Object;
.source "StatCore.java"


# static fields
.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field private static o:Lcom/papa/sim/statistic/o;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/papa/sim/statistic/db/b;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/papa/sim/statistic/o;->j:Ljava/util/Map;

    const-string v0, "http://datainterface.5fun.com"

    .line 2
    sput-object v0, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    const-string v0, "http://cjapi.5fun.com"

    .line 3
    sput-object v0, Lcom/papa/sim/statistic/o;->l:Ljava/lang/String;

    const-string v0, "http://anv9.ctapi.5fun.com"

    .line 4
    sput-object v0, Lcom/papa/sim/statistic/o;->m:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/papa/sim/statistic/o;->n:Ljava/lang/String;

    const-string v0, ""

    .line 6
    sput-object v0, Lcom/papa/sim/statistic/o;->p:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/papa/sim/statistic/o;->q:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/papa/sim/statistic/o;->r:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatCore"

    .line 2
    iput-object v0, p0, Lcom/papa/sim/statistic/o;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->g:Z

    .line 6
    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->i:Z

    .line 8
    iput-object p1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    return-void
.end method

.method private X(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    .line 4
    sget-object v3, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAllData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-direct {p0, v3, v2}, Lcom/papa/sim/statistic/o;->g(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    if-nez v3, :cond_3

    .line 9
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v3

    iget-object v4, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 10
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    iget-object v4, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v4

    iget-object v5, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v1, ""

    .line 13
    invoke-static {v0, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/batch/v3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/papa/sim/statistic/o$e;

    invoke-direct {v3, p0, p1}, Lcom/papa/sim/statistic/o$e;-><init>(Lcom/papa/sim/statistic/o;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/http/c;->g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V

    return-void
.end method

.method static synthetic a(Lcom/papa/sim/statistic/o;Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/o;->g(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/papa/sim/statistic/o;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/papa/sim/statistic/o;)Lcom/papa/sim/statistic/db/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    return-object p0
.end method

.method static synthetic d(Lcom/papa/sim/statistic/o;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/papa/sim/statistic/o;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/o;->f:Z

    return p1
.end method

.method private f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/o;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/http/c;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/papa/sim/statistic/o;->e:Z

    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;
    .locals 16

    move-object/from16 v1, p1

    .line 1
    const-class v2, Lcom/papa/sim/statistic/StatJsonRawData;

    const-class v3, Lcom/papa/sim/statistic/StatRequest;

    const-class v4, Lcom/papa/sim/statistic/Ext;

    const-string v5, ""

    const/4 v6, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    const-string v8, "_"

    const-string v9, "0.3"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v7, v10, :cond_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->clickFunGameMainBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->clickGameMainBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->gameRecovery:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->inviteBattleShareSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fRequestTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v7, :cond_2

    .line 13
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v2, :cond_1

    .line 14
    :try_start_3
    new-instance v3, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 15
    :try_start_4
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-object v6, v2

    goto :goto_1

    :catch_2
    :cond_1
    :goto_0
    move-object v6, v2

    goto :goto_2

    .line 16
    :catch_3
    :goto_1
    :try_start_5
    new-instance v2, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v2}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    .line 17
    :try_start_6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 18
    :goto_2
    :try_start_7
    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    .line 19
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    .line 20
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setBrand(Ljava/lang/String;)V

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setSdkInt(I)V

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setAndroidId(Ljava/lang/String;)V

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setOaid(Ljava/lang/String;)V

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setWfuuid(Ljava/lang/String;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setImei(Ljava/lang/String;)V

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setGdevid(Ljava/lang/String;)V

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setUmengid(Ljava/lang/String;)V

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setMac(Ljava/lang/String;)V

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/q;->p()[Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    .line 30
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 32
    :catch_4
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v11

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v10

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setAppVersion(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v6, v9}, Lcom/papa/sim/statistic/StatRequest;->setVersion(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/papa/sim/statistic/StatRequest;->setId(I)V

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/papa/sim/statistic/StatRequest;->setMac(Ljava/lang/String;)V

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/papa/sim/statistic/StatRequest;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 38
    :cond_2
    new-instance v7, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v7}, Lcom/papa/sim/statistic/StatRequest;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    .line 39
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 40
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    if-eqz v13, :cond_3

    goto :goto_3

    .line 41
    :cond_3
    :try_start_b
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v12, v0

    .line 42
    :try_start_c
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    goto :goto_4

    .line 44
    :cond_4
    :goto_3
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 45
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setId(I)V

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v12

    invoke-virtual {v12}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setDeviceId(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7, v9}, Lcom/papa/sim/statistic/StatRequest;->setVersion(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v9

    if-nez v9, :cond_5

    .line 49
    new-instance v9, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v9}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 50
    :cond_5
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v12

    invoke-virtual {v12}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setMac(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 53
    :try_start_d
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v12, v0

    .line 54
    :try_start_e
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 55
    :goto_5
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->a()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 56
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_6

    .line 57
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V

    goto :goto_7

    .line 58
    :cond_7
    :goto_6
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v12, v0

    .line 59
    :try_start_10
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 60
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 62
    :goto_7
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->d()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 63
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V

    .line 64
    :cond_9
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v12, v0

    .line 65
    :try_start_12
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 66
    invoke-virtual {v7, v11}, Lcom/papa/sim/statistic/StatRequest;->setCountType(I)V

    .line 67
    :goto_8
    new-instance v12, Lcom/papa/sim/statistic/Data;

    invoke-direct {v12}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 68
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    .line 69
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setBrand(Ljava/lang/String;)V

    .line 70
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setSdkInt(I)V

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/papa/sim/statistic/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setAndroidId(Ljava/lang/String;)V

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setOaid(Ljava/lang/String;)V

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setWfuuid(Ljava/lang/String;)V

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setImei(Ljava/lang/String;)V

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setGdevid(Ljava/lang/String;)V

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/papa/sim/statistic/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setUmengid(Ljava/lang/String;)V

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/papa/sim/statistic/Data;->setMac(Ljava/lang/String;)V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v13

    invoke-virtual {v13}, Lcom/papa/sim/statistic/q;->p()[Ljava/lang/String;

    move-result-object v13

    .line 79
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v10

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/papa/sim/statistic/Data;->setAppVersion(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v8

    if-ne v8, v10, :cond_a

    .line 81
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/papa/sim/statistic/Ext;

    .line 82
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 83
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 85
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatRequest;

    if-eqz v2, :cond_33

    .line 86
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 87
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 88
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/papa/sim/statistic/Data;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 89
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 91
    :cond_b
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 92
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 93
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFromTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 94
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 95
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 96
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getLiveTime()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 97
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 98
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatRequest;

    .line 99
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getGameList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 101
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto/16 :goto_15

    .line 102
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->visitSearchPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto/16 :goto_14

    .line 104
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_14

    .line 105
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_12

    .line 106
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_11

    .line 107
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move-object v2, v5

    .line 109
    :cond_13
    invoke-virtual {v12, v2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 110
    sget-object v2, Lcom/papa/sim/statistic/o;->p:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setOaid(Ljava/lang/String;)V

    .line 111
    sget-object v2, Lcom/papa/sim/statistic/o;->q:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setVaid(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/papa/sim/statistic/o;->r:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setAaid(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 113
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->articleClickDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_10

    .line 114
    :cond_15
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_f

    .line 115
    :cond_16
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    if-eqz v3, :cond_17

    .line 116
    :try_start_13
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/papa/sim/statistic/pref/a;

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/pref/a;

    .line 117
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/pref/a;->a()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/papa/sim/statistic/pref/a;->c()J

    move-result-wide v13

    sub-long/2addr v10, v13

    invoke-virtual {v3, v10, v11}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 118
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/sim/statistic/pref/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_14

    .line 119
    :cond_17
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->worldStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 120
    new-instance v9, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v9}, Lcom/papa/sim/statistic/Ext;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    .line 121
    :try_start_15
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_14

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 122
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    invoke-virtual {v9, v11}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 124
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 125
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/papa/sim/statistic/Ext;

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 127
    :cond_19
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_e

    .line 128
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 130
    :try_start_17
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_14

    .line 133
    :cond_1b
    :try_start_18
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 137
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getLogfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setLogFile(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setIp(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getDelay_avg()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setDelayAvg(I)V

    .line 140
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getDelay_max()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setDelayMax(I)V

    .line 141
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 142
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getRoomid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setRoomID(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameId()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    goto/16 :goto_14

    .line 144
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 145
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 146
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_d

    .line 147
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    if-eqz v2, :cond_1f

    .line 148
    :try_start_19
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    goto/16 :goto_14

    .line 151
    :cond_1f
    :try_start_1a
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_c

    .line 154
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_b

    .line 155
    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 157
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 158
    :cond_22
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 159
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 160
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 161
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 162
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 163
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 164
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 165
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 166
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 167
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 168
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 169
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto/16 :goto_a

    .line 170
    :cond_23
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 171
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 172
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 173
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 174
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_9

    .line 175
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 178
    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 180
    :cond_26
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 182
    :cond_27
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 183
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 184
    :cond_28
    :goto_a
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/Ext;

    .line 185
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 186
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 187
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 188
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_14

    .line 190
    :cond_29
    :goto_b
    :try_start_1b
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/Ext;

    .line 191
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPlugVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPlugId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setPlugId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getReMarks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_14

    .line 194
    :cond_2a
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_14

    .line 196
    :cond_2b
    :goto_d
    :try_start_1c
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    .line 197
    :catch_a
    :try_start_1d
    sget-object v2, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 198
    :cond_2c
    :goto_e
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/papa/sim/statistic/Ext;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto/16 :goto_14

    .line 199
    :cond_2d
    :goto_f
    :try_start_1e
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 200
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/Ext;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    .line 201
    :try_start_1f
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 202
    sget-object v3, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    :catch_b
    :cond_2e
    move-object v9, v2

    goto/16 :goto_14

    .line 203
    :cond_2f
    :goto_10
    :try_start_20
    new-instance v9, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v9}, Lcom/papa/sim/statistic/Ext;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f

    .line 204
    :try_start_21
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    .line 205
    :catch_c
    :try_start_22
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto :goto_14

    .line 206
    :cond_30
    :goto_11
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/papa/sim/statistic/Ext;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f

    goto :goto_14

    .line 208
    :cond_31
    :goto_12
    :try_start_23
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 209
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameId()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 210
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getWhere()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    .line 211
    sget-object v3, Lcom/papa/sim/statistic/Where;->default1:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    goto :goto_13

    .line 212
    :cond_32
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 213
    :goto_13
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getUid()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 214
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 215
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getDuration()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 216
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getInterrupt()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 217
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getZipCost()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 218
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 219
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 220
    invoke-virtual {v2}, Lcom/papa/sim/statistic/StatJsonRawData;->getGameFlag()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    .line 221
    :catch_d
    :cond_33
    :goto_14
    :try_start_24
    invoke-virtual {v7, v12}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/papa/sim/statistic/Ext;->setIsdirect(I)V

    .line 223
    invoke-virtual {v7, v9}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    move-object v6, v7

    goto :goto_17

    :catch_e
    return-object v6

    .line 224
    :cond_34
    :goto_15
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/StatRequest;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f

    return-object v2

    :catch_f
    move-exception v0

    move-object v2, v0

    move-object v6, v7

    goto :goto_16

    :catch_10
    move-exception v0

    move-object v2, v0

    .line 225
    :goto_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    :goto_17
    :try_start_25
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/papa/sim/statistic/StatRequest;->setAd(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    goto :goto_18

    :catch_11
    nop

    .line 227
    :goto_18
    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 228
    :try_start_26
    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 229
    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {}, Lcom/papa/sim/statistic/q;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIp(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/papa/sim/statistic/o;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_12

    :catch_12
    :cond_35
    return-object v6
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "UTF-8"

    const-string v1, "9c708c7fce87abaa544b221898769baa"

    const-string v2, "application/json"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://service.kingnetdc.com/mqs"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v6, 0x1388

    .line 3
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 5
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 6
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 7
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "POST"

    .line 8
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Accept"

    .line 9
    invoke-virtual {v5, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    .line 10
    invoke-virtual {v5, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    const-string v7, "papa_plat"

    const-string v8, "Version"

    .line 11
    invoke-virtual {v5, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Topic"

    .line 12
    invoke-virtual {v5, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[{\"key\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\",\"message\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Authorization"

    .line 14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/papa/sim/statistic/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 16
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v8}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 18
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 19
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 20
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 21
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 22
    new-array v6, v6, [B

    const/16 v7, 0x200

    new-array v7, v7, [B

    const/4 v8, 0x0

    .line 23
    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_0

    .line 24
    invoke-static {v7, v3, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v9

    goto :goto_1

    .line 25
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 26
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    const-string p0, "-1"

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static k0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->j:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static l(Landroid/content/Context;)Lcom/papa/sim/statistic/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->o:Lcom/papa/sim/statistic/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa/sim/statistic/o;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/o;->o:Lcom/papa/sim/statistic/o;

    .line 2
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/o;->o:Lcom/papa/sim/statistic/o;

    return-object p0
.end method

.method private o(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private p0(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    const-class v2, Lcom/papa/sim/statistic/StatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_d

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_c

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 10
    :cond_3
    new-instance v0, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->q(I)V

    .line 15
    invoke-static {p1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->isNew()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->q(I)V

    .line 18
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 19
    :cond_5
    sget-object v3, Lcom/papa/sim/statistic/Event;->visitSearchPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_a

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 27
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 28
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 29
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 30
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 31
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 32
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 33
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 34
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 35
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 36
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 37
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_9

    .line 38
    :cond_a
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_8

    .line 39
    :cond_b
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 40
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 41
    :cond_c
    sget-object v3, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_7

    .line 42
    :cond_d
    sget-object v3, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    sget-object v3, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_6

    .line 43
    :cond_e
    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    sget-object v3, Lcom/papa/sim/statistic/Event;->articleClickDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_5

    .line 44
    :cond_f
    sget-object v3, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_4

    .line 45
    :cond_10
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_3

    .line 46
    :cond_11
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 47
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 50
    :cond_12
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 51
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 53
    :cond_13
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_2

    .line 54
    :cond_14
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 55
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 58
    :cond_15
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 61
    :cond_16
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 65
    :cond_17
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 69
    :cond_18
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 72
    :cond_19
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 73
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 74
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 75
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 76
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_1

    .line 77
    :cond_1a
    sget-object v3, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 78
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 80
    :cond_1b
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 81
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 82
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 83
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 84
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 85
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 86
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 87
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 88
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 89
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 90
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 91
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_0

    .line 92
    :cond_1c
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    .line 94
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 95
    :cond_1e
    :goto_0
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 97
    :cond_1f
    :goto_1
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-static {v3}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 99
    :cond_20
    :goto_2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 101
    :cond_21
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 103
    :try_start_1
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    nop

    goto/16 :goto_b

    .line 104
    :cond_22
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getPlugId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 106
    :cond_23
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 108
    :cond_24
    :goto_6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    .line 109
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 112
    :cond_25
    :goto_7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    .line 113
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 116
    :cond_26
    :goto_8
    new-instance v3, Lcom/papa/sim/statistic/StatJsonRawData;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatJsonRawData;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatJsonRawData;->setGameId(J)V

    .line 118
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getInterrupt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setInterrupt(I)V

    .line 119
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatJsonRawData;->setDuration(J)V

    .line 120
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getZipCost()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatJsonRawData;->setZipCost(J)V

    .line 121
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setUid(I)V

    .line 122
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setWhere(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setArticleId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setFrom(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setPosition(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getGameFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/StatJsonRawData;->setGameFlag(I)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto :goto_b

    .line 129
    :cond_27
    :goto_9
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    goto :goto_b

    .line 130
    :cond_28
    :goto_a
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->f()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 131
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 136
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 137
    :cond_2a
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 138
    :try_start_2
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_e

    :catch_2
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 141
    :cond_2b
    :goto_c
    new-instance v0, Lcom/papa/sim/statistic/db/a;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/a;-><init>()V

    .line 142
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/a;->n(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/a;->i(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/a;->j(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->m(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->h(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->k(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->t(Lcom/papa/sim/statistic/db/a;)V

    goto :goto_e

    .line 149
    :cond_2c
    :goto_d
    new-instance v0, Lcom/papa/sim/statistic/db/a;

    invoke-direct {v0}, Lcom/papa/sim/statistic/db/a;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/db/a;->n(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/a;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 152
    iget-object v3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/db/b;->c(Lcom/papa/sim/statistic/Event;)V

    .line 153
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/Data;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/db/a;->i(Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->m(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->h(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/db/a;->k(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/db/b;->t(Lcom/papa/sim/statistic/db/a;)V

    :cond_2e
    :goto_e
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->indexGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitIndexAdEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->endLocalNetBattleSuccessEmu:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startShare:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareChannel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestCreateQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fCreateQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->liveResDownloaded:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestScanQrcode:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fConnectQrcodeSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->sharePasteClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fRequestTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fTransferGameDone:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->f2fInterruptTransferGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitAppInternalPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameListBanner:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->arenaGameListItem:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onMainPageShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickShopHomeEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->findButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->md5error:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->filenumerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickGameDetailModel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSearchAdPosition:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadCopyright:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->openSourceUrl:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallGameStartSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallRequestAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallExpAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->smallVideoDoneAdSDK:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->homeSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->tabStartSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->quitSingleSuccessUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->tabStartViewSuccessTips:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/papa/sim/statistic/Event;->clickTabGameTipsUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/papa/sim/statistic/Event;->clickOpenPopUpRedBag:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listShowBigPicUPPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listShowIconHotList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickBigPicStaus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickIconStatus:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigModelGet:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickIconModelClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->game_strategy_panel:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickBigPicGoWYDetail:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/papa/sim/statistic/Event;->gameClickIconModelWYClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Where;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method C(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method D(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameWorldData:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void

    :cond_0
    const-string v2, ""

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string p2, "0"

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->installPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setModel(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/papa/sim/statistic/Event;->submitPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 19
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    goto :goto_1

    .line 20
    :cond_8
    :goto_0
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 p1, 0x0

    .line 21
    invoke-virtual {v1, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 22
    :cond_9
    :goto_1
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 23
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public E(Lcom/papa/sim/statistic/Event;Ljava/lang/String;II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setEmuCount(I)V

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setApkCount(I)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 7
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 15
    :try_start_0
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
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

.method public F(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    if-nez p6, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    invoke-virtual {p1, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 13
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 14
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 16
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method G(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :catch_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 9
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method H(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 5
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 6
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p2, p6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :catch_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 10
    invoke-virtual {p1, p5}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/o;->i0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, ""

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 9
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 12
    :goto_1
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public K(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "clickLocalNetBattleJoinRoomBtn"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "local"

    const/4 p5, 0x2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "joinLocalNetBattleRoomSuccess"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "inviteBattleShareSuccess"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-ne p4, p2, :cond_1

    const-string p3, "weixin"

    goto :goto_2

    :cond_1
    const-string p3, "qq"

    goto :goto_2

    :cond_2
    const/4 p2, 0x7

    if-ne p4, p2, :cond_3

    const-string p3, "netMatch"

    goto :goto_2

    :cond_3
    if-ne p4, p5, :cond_4

    const-string p3, "inviteMatch"

    goto :goto_2

    :cond_4
    const/4 p2, 0x3

    if-ne p4, p2, :cond_5

    goto :goto_2

    :cond_5
    const/16 p2, 0x9

    if-ne p4, p2, :cond_6

    const-string p3, "multiBattle"

    goto :goto_2

    :cond_6
    const/16 p2, 0xa

    if-ne p4, p2, :cond_9

    const-string p3, "fastStart"

    goto :goto_2

    :cond_7
    :goto_1
    if-ne p4, p5, :cond_8

    const-string p3, "qrcode"

    goto :goto_2

    :cond_8
    const-string p3, "default"

    .line 8
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setMode(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 10
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 18
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public L(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIII)V
    .locals 9

    move-object v1, p3

    move-object/from16 v2, p7

    move/from16 v3, p10

    .line 1
    new-instance v4, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v4}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string v5, ""

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 9
    new-instance v6, Lcom/papa/sim/statistic/Data;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 12
    :goto_1
    invoke-virtual {v6, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    move-wide/from16 v7, p8

    .line 13
    invoke-virtual {v0, v7, v8}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    move-wide v7, p4

    .line 14
    invoke-virtual {v0, p4, p5}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    move v2, p6

    .line 15
    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V

    const/16 v1, 0x65

    if-ne v3, v1, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    :cond_2
    move/from16 v1, p12

    .line 19
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 20
    invoke-virtual {v4, v0}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    invoke-virtual {v4, v6}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    move-object v1, p0

    .line 22
    invoke-direct {p0, v4}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public M(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIII)V
    .locals 8

    move-object v1, p7

    move/from16 v2, p11

    .line 1
    new-instance v3, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v3}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string v4, ""

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 9
    new-instance v5, Lcom/papa/sim/statistic/Data;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-wide/from16 v6, p9

    .line 12
    invoke-virtual {v0, v6, v7}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    move-object/from16 v1, p8

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-object v1, p3

    .line 14
    invoke-virtual {v5, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    move-wide v6, p4

    .line 15
    invoke-virtual {v0, p4, p5}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    move v1, p6

    .line 16
    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/16 v1, 0x65

    if-ne v2, v1, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    :cond_2
    move/from16 v1, p13

    .line 19
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 20
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 21
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    move-object v1, p0

    .line 22
    invoke-direct {p0, v3}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public N(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    if-nez p3, :cond_0

    const-string p1, ""

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    invoke-virtual {p4}, Lcom/papa/sim/statistic/Ext;->getKeyWord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method O(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string p3, "0"

    .line 9
    :cond_3
    :try_start_1
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz p4, :cond_4

    const-string p3, ""

    .line 11
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 12
    :try_start_2
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 13
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p3

    .line 14
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_4
    :goto_2
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 16
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    goto :goto_6

    .line 17
    :cond_5
    :goto_3
    :try_start_3
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 18
    :try_start_4
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 19
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 20
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_4
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 24
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 26
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 27
    :goto_6
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public P(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JI)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    if-nez p8, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 11
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    invoke-virtual {p1, p9, p10}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 15
    invoke-virtual {p1, p5, p6}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 16
    invoke-virtual {p1, p7}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 17
    invoke-virtual {p1, p11}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 18
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 20
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public Q(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {v0, p6}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/papa/sim/statistic/Ext;->setModule(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method R(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 5
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 6
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method S(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 5
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 6
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 7
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 9
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string p1, ""

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    new-instance p3, Lcom/papa/sim/statistic/Data;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Data;-><init>()V

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p2, "0"

    .line 10
    :cond_3
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 p1, 0x0

    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 12
    :goto_1
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 13
    :try_start_2
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    if-nez p2, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 13
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    if-nez p2, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 14
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const-string p1, ""

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p3, "0"

    .line 11
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 12
    invoke-virtual {v2, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 13
    invoke-virtual {v2, p4}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    invoke-virtual {v2, p6}, Lcom/papa/sim/statistic/Ext;->setPicName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 18
    :try_start_1
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public Y(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/db/d;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAllPlugPlayData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/papa/sim/statistic/o;->g(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 7
    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa/sim/statistic/o;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/simulator/simulator_play_game_log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/sim/statistic/StatRequest;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/papa/sim/statistic/o$f;

    invoke-direct {v4, p0, p2}, Lcom/papa/sim/statistic/o$f;-><init>(Lcom/papa/sim/statistic/o;Ljava/util/List;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public Z(Lcom/papa/sim/statistic/StatDataCenterReq;)V
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/papa/sim/statistic/o;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setNettype(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/papa/sim/statistic/o;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setCarrier(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/papa/sim/statistic/o;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getGame_time()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/db/d;->p(I)V

    .line 11
    iget-object v0, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a0(Lcom/papa/sim/statistic/db/a;)Z
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "_"

    const-string v2, ":"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/a;->getType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 2
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/a;->b()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/papa/sim/statistic/EmuErrorDto;

    invoke-virtual {v4, v6, v7}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa/sim/statistic/EmuErrorDto;

    if-nez v4, :cond_0

    return v3

    .line 3
    :cond_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 4
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/add/commitpluginerrorinfo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    .line 5
    invoke-virtual {v7, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v8, v1, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    iget-object v8, v1, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v9, v1, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v9

    invoke-virtual {v9}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v10, v1, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 9
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ""

    if-eqz v8, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    invoke-static {v9}, Lcom/papa/sim/statistic/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object v14, v8

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {v8}, Lcom/papa/sim/statistic/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 13
    iget-object v8, v1, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/papa/sim/statistic/q;->p()[Ljava/lang/String;

    move-result-object v8

    .line 14
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/papa/sim/statistic/EmuErrorDto;->setModel(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setMac(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/papa/sim/statistic/o;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setIp(Ljava/lang/String;)V

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v17, 0x3e8

    div-long v12, v12, v17

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/papa/sim/statistic/EmuErrorDto;->setTimes(Ljava/lang/String;)V

    .line 18
    new-instance v9, Lcom/papa/sim/statistic/ErrorRequestBean;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v8, v5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "add"

    new-instance v0, Lcom/papa/sim/statistic/ErrorRequestMessage;

    const-string v8, "commitPluginErrorInfo"

    invoke-direct {v0, v8, v4}, Lcom/papa/sim/statistic/ErrorRequestMessage;-><init>(Ljava/lang/String;Lcom/papa/sim/statistic/EmuErrorDto;)V

    move-object v12, v9

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/papa/sim/statistic/ErrorRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/ErrorRequestMessage;)V

    .line 19
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paramsJson="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 22
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_3

    .line 24
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v4

    const-class v6, Lcom/papa/sim/statistic/ResultMainBean;

    invoke-virtual {v4, v0, v6}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/ResultMainBean;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Lcom/papa/sim/statistic/ResultMainBean;->getFlag()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return v5

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return v3
.end method

.method public b0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/p;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 9
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 14
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/papa/sim/statistic/Ext;->setPlugVersion(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method d0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 7
    :cond_0
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 9
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 5
    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 7
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 9
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method f0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 5
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 7
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
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

.method g0(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setNew(Z)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 6
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/db/b;->delete(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u6210\u529f\u4e4b\u540e\u5220\u9664\u6570\u636e deleStat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method h0(Lcom/papa/sim/statistic/StatRequest;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method i0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void

    .line 10
    :cond_0
    new-instance p4, Lcom/papa/sim/statistic/Data;

    invoke-direct {p4}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, ""

    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 14
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 15
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->createLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickCreateLocalNetBattleRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleRoomStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_3

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 19
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 20
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 21
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 22
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :cond_8
    :goto_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 27
    :cond_9
    :goto_2
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto :goto_5

    .line 28
    :cond_a
    :goto_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 p1, 0x0

    .line 29
    invoke-virtual {p4, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    goto :goto_5

    .line 30
    :cond_b
    :goto_4
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 31
    invoke-virtual {p4, p3}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 32
    :catch_2
    :cond_c
    :goto_5
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 33
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public j(Landroid/content/Context;)I
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "46000"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "46001"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-string v1, "46003"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method j0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/StatRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 3
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 7
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setGameList(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p5}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void

    .line 9
    :cond_0
    new-instance p4, Lcom/papa/sim/statistic/Data;

    invoke-direct {p4}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 13
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 14
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->createLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickCreateLocalNetBattleRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleRoomStartBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->inviteBattleAutoJoinSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_3

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->appUseTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 21
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 24
    invoke-virtual {p5}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    goto :goto_5

    .line 25
    :cond_8
    :goto_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    goto :goto_5

    .line 27
    :cond_a
    :goto_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 p1, 0x0

    .line 28
    invoke-virtual {p4, p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    goto :goto_5

    .line 29
    :cond_b
    :goto_4
    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 30
    invoke-virtual {p4, p3}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 31
    :catch_2
    :cond_c
    :goto_5
    invoke-virtual {p5, p4}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 32
    invoke-direct {p0, p5}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public l0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/o;->g:Z

    return-void
.end method

.method public m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    const-string p1, "4g"

    goto :goto_3

    :cond_4
    :goto_0
    const-string p1, "3g"

    goto :goto_3

    :cond_5
    :goto_1
    const-string p1, "2g"

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "wifi"

    :goto_3
    return-object p1
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/o;->h:Z

    return-void
.end method

.method public n(Landroid/content/Context;)I
    .locals 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v0
.end method

.method public n0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/o;->i:Z

    return-void
.end method

.method public o0(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa/sim/statistic/l;->a(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/o;->g:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/o;->h:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/o;->i:Z

    return v0
.end method

.method public s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/o;->f()V

    .line 2
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->r()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/o;->g(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)Lcom/papa/sim/statistic/StatRequest;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] method offline() statRequest .id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";isdirect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/papa/sim/statistic/o;->b:Z

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setDebug(Z)V

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/netbattle/performance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/Ext;->getLogFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    new-instance v3, Lcom/papa/sim/statistic/o$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/papa/sim/statistic/o$a;-><init>(Lcom/papa/sim/statistic/o;Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/http/c;->d(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/a;)V

    goto/16 :goto_3

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->plugEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/plug_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Data;->getWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v8

    new-instance v9, Lcom/papa/sim/statistic/o$b;

    invoke-direct {v9, p0, p2}, Lcom/papa/sim/statistic/o$b;-><init>(Lcom/papa/sim/statistic/o;Lcom/papa/sim/statistic/db/d;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/papa/sim/statistic/http/c;->e(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILcom/papa/sim/statistic/http/a;)V

    goto/16 :goto_3

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa/sim/statistic/o;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/simulator/simulator_play_game_log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/papa/sim/statistic/o$c;

    invoke-direct {v6, p0, p2}, Lcom/papa/sim/statistic/o$c;-><init>(Lcom/papa/sim/statistic/o;Lcom/papa/sim/statistic/db/d;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/http/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V

    goto/16 :goto_3

    .line 20
    :cond_5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_7

    .line 21
    :cond_6
    :try_start_1
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 22
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/p;->n()Lcom/papa/sim/statistic/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/papa/sim/statistic/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :catch_0
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 24
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 25
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/b;->g()V

    .line 27
    iget-object p1, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/b;->k()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xa

    if-lt p2, v0, :cond_c

    .line 29
    iget-boolean p2, p0, Lcom/papa/sim/statistic/o;->f:Z

    if-eqz p2, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/papa/sim/statistic/o;->f:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/o;->X(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 32
    :cond_a
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Position= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 34
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_b
    :goto_1
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v1, ""

    .line 36
    invoke-static {v0, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 37
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v1, "/data/v3"

    .line 38
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa/sim/statistic/o;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/papa/sim/statistic/o$d;

    invoke-direct {v3, p0, p2, p1}, Lcom/papa/sim/statistic/o$d;-><init>(Lcom/papa/sim/statistic/o;Lcom/papa/sim/statistic/db/d;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/papa/sim/statistic/http/c;->g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_3
    return-void
.end method

.method public t(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/papa/sim/statistic/o;->X(Ljava/util/List;)V

    return-void
.end method

.method v(Lcom/papa/sim/statistic/Event;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setPlugId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 7
    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public w(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;ILjava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p5}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    iget-object p5, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p5}, Lcom/papa/sim/statistic/o;->n(Landroid/content/Context;)I

    move-result p5

    invoke-virtual {v1, p5}, Lcom/papa/sim/statistic/Ext;->setNetType(I)V

    .line 7
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 16
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 17
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    iget-object p4, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/papa/sim/statistic/o;->n(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setNetType(I)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/papa/sim/statistic/Ext;->setBtn(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/Ext;->setMode(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/papa/sim/statistic/Ext;->getUid()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 10
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/papa/sim/statistic/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p3, p2}, Lcom/papa/sim/statistic/db/b;->r(Lcom/papa/sim/statistic/db/d;)V

    .line 18
    :try_start_1
    iget-object p3, p0, Lcom/papa/sim/statistic/o;->c:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/papa/sim/statistic/db/b;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/papa/sim/statistic/o;->d:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/o;->s(Landroid/content/Context;Lcom/papa/sim/statistic/db/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method

.method public z(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    if-nez p3, :cond_0

    const-string p1, ""

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/papa/sim/statistic/o;->p0(Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method
