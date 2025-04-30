.class public final Lcom/join/android/app/common/db/b;
.super Lcom/join/android/app/common/db/a;
.source "DBUpdateUtils_.java"


# static fields
.field private static c:Lcom/join/android/app/common/db/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/db/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/db/b;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/common/db/a;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/android/app/common/db/b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/android/app/common/db/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/join/android/app/common/db/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/db/b;->c:Lcom/join/android/app/common/db/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/android/app/common/db/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/join/android/app/common/db/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/android/app/common/db/b;->c:Lcom/join/android/app/common/db/b;

    .line 4
    invoke-direct {v1}, Lcom/join/android/app/common/db/b;->c()V

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    .line 6
    :cond_0
    sget-object p0, Lcom/join/android/app/common/db/b;->c:Lcom/join/android/app/common/db/b;

    return-object p0
.end method

.method private c()V
    .locals 0

    return-void
.end method
