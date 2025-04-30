.class public Lg1/k;
.super Lg1/b;
.source "ReferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/b<",
        "Lcom/join/android/app/common/db/tables/Reference;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lg1/k;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/android/app/common/db/tables/Reference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg1/k;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {p0, v0}, Lg1/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    return-void
.end method

.method public static n()Lg1/k;
    .locals 1

    .line 1
    sget-object v0, Lg1/k;->b:Lg1/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->T()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    move-result-object v0

    sput-object v0, Lg1/k;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 3
    new-instance v0, Lg1/k;

    invoke-direct {v0}, Lg1/k;-><init>()V

    sput-object v0, Lg1/k;->b:Lg1/k;

    .line 4
    :cond_0
    sget-object v0, Lg1/k;->b:Lg1/k;

    return-object v0
.end method
