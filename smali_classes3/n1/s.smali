.class public Ln1/s;
.super Lg1/b;
.source "ForumSearchRecordTableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/mgps/db/tables/ForumSearchRecordTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ln1/s;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/ForumSearchRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln1/s;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Ln1/s;
    .locals 1

    .line 1
    sget-object v0, Ln1/s;->b:Ln1/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->A()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Ln1/s;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Ln1/s;

    invoke-direct {v0}, Ln1/s;-><init>()V

    sput-object v0, Ln1/s;->b:Ln1/s;

    .line 4
    :cond_0
    sget-object v0, Ln1/s;->b:Ln1/s;

    return-object v0
.end method
