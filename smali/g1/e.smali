.class public Lg1/e;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static c:Lg1/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/android/app/common/db/DatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    iput-object p1, p0, Lg1/e;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    iput-object v0, p0, Lg1/e;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Lg1/e;
    .locals 1

    .line 1
    sget-object v0, Lg1/e;->c:Lg1/e;

    if-nez v0, :cond_0

    new-instance v0, Lg1/e;

    invoke-direct {v0, p0}, Lg1/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lg1/e;->c:Lg1/e;

    .line 2
    :cond_0
    sget-object p0, Lg1/e;->c:Lg1/e;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/join/android/app/common/db/DatabaseHelper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 4
    :cond_1
    iget-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/join/android/app/common/db/DatabaseHelper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lg1/e;->a()V

    .line 6
    invoke-static {p1}, Lcom/join/android/app/common/db/DatabaseHelper;->h0(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lg1/e;->a:Landroid/content/Context;

    const-class v0, Lcom/join/android/app/common/db/DatabaseHelper;

    invoke-static {p1, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/common/db/DatabaseHelper;

    iput-object p1, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    return-void
.end method

.method public c()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lg1/e;->a()V

    .line 3
    iget-object v0, p0, Lg1/e;->a:Landroid/content/Context;

    const-class v1, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 4
    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/db/DatabaseHelper;

    iput-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 5
    :cond_0
    iget-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg1/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    :cond_0
    return-void
.end method
