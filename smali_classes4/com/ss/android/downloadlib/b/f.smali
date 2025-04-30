.class public Lcom/ss/android/downloadlib/b/f;
.super Ljava/lang/Object;
.source "AppLinkOptimiseHelper.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/downloadlib/b/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadad/api/a/b;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/b/f;->b(Lcom/ss/android/downloadad/api/a/b;I)V

    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/h;)V
    .locals 4
    .param p1    # Lcom/ss/android/downloadlib/b/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/g/l;->b()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/api/a/b;->l(Z)V

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Lcom/ss/android/downloadlib/b/h;->a(Z)V

    if-nez p0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/f;->j(Lcom/ss/android/downloadad/api/a/b;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/b/f;->b(Lcom/ss/android/downloadad/api/a/b;I)V

    if-eqz v1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/b/f$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/ss/android/downloadlib/b/f$1;-><init>(Lcom/ss/android/downloadad/api/a/b;JLcom/ss/android/downloadlib/b/h;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/b;)Z
    .locals 1

    .line 11
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_opt_switch"

    .line 12
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static b(Lcom/ss/android/downloadad/api/a/b;I)V
    .locals 3
    .param p0    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/f;->i(Lcom/ss/android/downloadad/api/a/b;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/b/f$2;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/downloadlib/b/f$2;-><init>(Lcom/ss/android/downloadad/api/a/b;I)V

    int-to-long p0, v0

    invoke-virtual {v1, v2, p0, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static b(Lcom/ss/android/downloadad/api/a/b;)Z
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_opt_install_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Lcom/ss/android/downloadad/api/a/b;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_opt_invoke_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(Lcom/ss/android/downloadad/api/a/b;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_opt_dialog_switch"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Lcom/ss/android/downloadad/api/a/b;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "app_link_opt_back_time_limit"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    return-wide v0
.end method

.method static synthetic f(Lcom/ss/android/downloadad/api/a/b;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/f;->h(Lcom/ss/android/downloadad/api/a/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic g(Lcom/ss/android/downloadad/api/a/b;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/f;->j(Lcom/ss/android/downloadad/api/a/b;)I

    move-result p0

    return p0
.end method

.method private static h(Lcom/ss/android/downloadad/api/a/b;)J
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_check_timeout"

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static i(Lcom/ss/android/downloadad/api/a/b;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_check_delay"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static j(Lcom/ss/android/downloadad/api/a/b;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "app_link_check_count"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
