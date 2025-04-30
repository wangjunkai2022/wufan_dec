.class public Ln1/t;
.super Lg1/b;
.source "ForumTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/ForumTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/t;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static p()Ln1/t;
    .locals 1

    .line 1
    sget-object v0, Ln1/t;->b:Ln1/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->B()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/t;

    invoke-direct {v0}, Ln1/t;-><init>()V

    sput-object v0, Ln1/t;->b:Ln1/t;

    .line 4
    :cond_0
    sget-object v0, Ln1/t;->b:Ln1/t;

    return-object v0
.end method


# virtual methods
.method public n(Lcom/join/mgps/db/tables/ForumTable;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/ForumTable;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    move-object p1, v0

    .line 9
    :cond_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ln1/t;->r(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/ForumTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public q(Lcom/join/mgps/db/tables/ForumTable;)Lcom/join/mgps/db/tables/ForumTable;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "args1"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/ForumTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public r(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumBean$ForumEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/ForumTable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 3
    :try_start_0
    sget-object v1, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public s(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

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

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public t(Lcom/join/mgps/db/tables/ForumTable;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "args1"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/ForumTable;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    move-object p1, v0

    .line 10
    :cond_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public u(Lcom/join/mgps/db/tables/ForumTable;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/ForumTable;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/ForumTable;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    move-object p1, v0

    .line 9
    :cond_0
    sget-object v0, Ln1/t;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
