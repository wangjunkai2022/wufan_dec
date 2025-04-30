.class public Ln1/x;
.super Lg1/b;
.source "HandShankTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/HandShankTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/x;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static p()Ln1/x;
    .locals 1

    .line 1
    sget-object v0, Ln1/x;->b:Ln1/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->E()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/x;

    invoke-direct {v0}, Ln1/x;-><init>()V

    sput-object v0, Ln1/x;->b:Ln1/x;

    .line 4
    :cond_0
    sget-object v0, Ln1/x;->b:Ln1/x;

    return-object v0
.end method


# virtual methods
.method public n(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 1

    .line 1
    sget-object v0, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 4
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v2, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Ljava/lang/Object;)I

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ln1/x;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method
