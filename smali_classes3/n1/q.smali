.class public Ln1/q;
.super Lg1/b;
.source "EMUUpdateTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/EMUUpdateTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/q;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/EMUUpdateTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/q;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static o()Ln1/q;
    .locals 1

    .line 1
    sget-object v0, Ln1/q;->b:Ln1/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->w()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/q;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/q;

    invoke-direct {v0}, Ln1/q;-><init>()V

    sput-object v0, Ln1/q;->b:Ln1/q;

    .line 4
    :cond_0
    sget-object v0, Ln1/q;->b:Ln1/q;

    return-object v0
.end method


# virtual methods
.method public n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "crc_sign_id"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
