.class public Lg1/b;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteById(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c(Ljava/util/Collection;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteIds(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 3
    invoke-virtual {v0, p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/4 p3, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    add-int/lit8 p3, p3, 0x1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 8
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, v1, p5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, v1, p5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    invoke-virtual {p5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 11
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForFieldValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(JJLjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p5, p6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 5
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Lcom/j256/ormlite/stmt/Where;JJLjava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where;",
            "JJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 3
    invoke-virtual {v0, p6, p7}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 5
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 6
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->create(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/b;->a:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->update(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
