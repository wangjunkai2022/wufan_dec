.class public Ln1/e;
.super Lg1/b;
.source "CacheTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/CacheTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/e;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CacheTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static r()Ln1/e;
    .locals 1

    .line 1
    sget-object v0, Ln1/e;->b:Ln1/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->k()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/e;

    invoke-direct {v0}, Ln1/e;-><init>()V

    sput-object v0, Ln1/e;->b:Ln1/e;

    .line 4
    :cond_0
    sget-object v0, Ln1/e;->b:Ln1/e;

    return-object v0
.end method


# virtual methods
.method public n(J)V
    .locals 4

    .line 1
    sget-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    :try_start_0
    const-string v2, "type"

    .line 3
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GLOBAL_DATA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string v2, "gameId"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 5
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 6
    sget-object p1, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public o(J)V
    .locals 4

    .line 1
    sget-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    :try_start_0
    const-string v2, "type"

    .line 3
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GRADE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string v2, "gameId"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 5
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 6
    sget-object p1, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;J)V
    .locals 4

    .line 1
    sget-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    :try_start_0
    const-string v2, "type"

    .line 3
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_USER_INFO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    :cond_0
    const-string p1, "gameId"

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 6
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 7
    sget-object p1, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public q(J)V
    .locals 4

    .line 1
    sget-object v0, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    :try_start_0
    const-string v2, "type"

    .line 3
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_WORSHIP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string v2, "gameId"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 5
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 6
    sget-object p1, Ln1/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public s(JLcom/join/mgps/dto/GameWorldGlobalData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 3
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GLOBAL_DATA:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method

.method public t(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 3
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GRADE:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method

.method public u(Ljava/lang/String;JLcom/join/mgps/dto/GameWorldUserInfoWrap;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 2
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setUid(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_USER_INFO:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method

.method public v(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRealTimeWorshipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 3
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_WORSHIP:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    return-void
.end method
