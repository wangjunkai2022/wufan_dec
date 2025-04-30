.class public Ln1/o;
.super Lg1/b;
.source "EMUApkArenaTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/o;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/o;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static o()Ln1/o;
    .locals 1

    .line 1
    sget-object v0, Ln1/o;->b:Ln1/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->x()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/o;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/o;

    invoke-direct {v0}, Ln1/o;-><init>()V

    sput-object v0, Ln1/o;->b:Ln1/o;

    .line 4
    :cond_0
    sget-object v0, Ln1/o;->b:Ln1/o;

    return-object v0
.end method


# virtual methods
.method public n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tag_id"

    .line 3
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 7
    const-class v1, Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/BeanUtils;->g(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUApkTable;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/EMUApkTable;->setArena(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method
