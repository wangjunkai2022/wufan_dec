.class public Ln1/u;
.super Lg1/b;
.source "GameMainTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/GameMainTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/u;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GameMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Ln1/u;
    .locals 1

    .line 1
    sget-object v0, Ln1/u;->b:Ln1/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->C()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/u;

    invoke-direct {v0}, Ln1/u;-><init>()V

    sput-object v0, Ln1/u;->b:Ln1/u;

    .line 4
    :cond_0
    sget-object v0, Ln1/u;->b:Ln1/u;

    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Ln1/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    const-string v2, "gameid"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/GameMainTable;

    return-object p1

    :cond_1
    return-object v0
.end method
