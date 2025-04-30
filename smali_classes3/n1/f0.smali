.class public Ln1/f0;
.super Lg1/b;
.source "RecomDatabeanTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/RecomDatabeanTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/f0;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/RecomDatabeanTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/f0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method private o(I)I
    .locals 3

    .line 1
    sget-object v0, Ln1/f0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    :try_start_0
    const-string v2, "dataFrom"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 4
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 5
    sget-object p1, Ln1/f0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static p()Ln1/f0;
    .locals 1

    .line 1
    sget-object v0, Ln1/f0;->b:Ln1/f0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->S()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/f0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/f0;

    invoke-direct {v0}, Ln1/f0;-><init>()V

    sput-object v0, Ln1/f0;->b:Ln1/f0;

    .line 4
    :cond_0
    sget-object v0, Ln1/f0;->b:Ln1/f0;

    return-object v0
.end method


# virtual methods
.method public n(I)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dataFrom"

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ln1/f0;->b:Ln1/f0;

    invoke-virtual {v1, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Ln1/f0;->o(I)I

    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getMain()Lcom/join/mgps/db/tables/ModleBeanTable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Ln1/c0;->n()Ln1/c0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getSub()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 12
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/AppBeanMainTable;

    .line 14
    invoke-static {}, Ln1/a;->n()Ln1/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/AppBeanMainTable;->getGame_info()Lcom/join/mgps/db/tables/AppBeanTable;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {}, Ln1/b;->n()Ln1/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg1/b;->delete(Ljava/lang/Object;)I

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/AppBeanTable;->getTag_info()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/AppBeanTable;->getTag_info()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 20
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/TipBeanTable;

    .line 22
    invoke-static {}, Ln1/k0;->n()Ln1/k0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/AppBeanTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/AppBeanTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 26
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/DownloadUrlTable;

    .line 28
    invoke-static {}, Ln1/l;->n()Ln1/l;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method
