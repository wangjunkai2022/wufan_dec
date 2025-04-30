.class public Ln1/v;
.super Lg1/b;
.source "GamePaiWeiTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/v;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Ln1/v;
    .locals 1

    .line 1
    sget-object v0, Ln1/v;->b:Ln1/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->D()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/v;

    invoke-direct {v0}, Ln1/v;-><init>()V

    sput-object v0, Ln1/v;->b:Ln1/v;

    .line 4
    :cond_0
    sget-object v0, Ln1/v;->b:Ln1/v;

    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Ln1/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Ln1/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "userId"

    .line 3
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string p1, "isUped"

    .line 4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 5
    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 6
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
