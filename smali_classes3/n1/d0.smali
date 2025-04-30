.class public Ln1/d0;
.super Lg1/b;
.source "PlayGameTimeTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/d0;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/d0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Ln1/d0;
    .locals 1

    .line 1
    sget-object v0, Ln1/d0;->b:Ln1/d0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->Q()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/d0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/d0;

    invoke-direct {v0}, Ln1/d0;-><init>()V

    sput-object v0, Ln1/d0;->b:Ln1/d0;

    .line 4
    :cond_0
    sget-object v0, Ln1/d0;->b:Ln1/d0;

    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/PlayGameTimeTable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uId"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gameId"

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ln1/d0;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForFieldValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
