.class public Ln1/b0;
.super Lg1/b;
.source "LatestGameTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/LatestGameFileTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/b0;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/LatestGameFileTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/b0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Ln1/b0;
    .locals 1

    .line 1
    sget-object v0, Ln1/b0;->b:Ln1/b0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->J()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/b0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/b0;

    invoke-direct {v0}, Ln1/b0;-><init>()V

    sput-object v0, Ln1/b0;->b:Ln1/b0;

    .line 4
    :cond_0
    sget-object v0, Ln1/b0;->b:Ln1/b0;

    return-object v0
.end method


# virtual methods
.method public o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/LatestGameFileTable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln1/b0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    :try_start_0
    const-string v1, "createTime"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 3
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
