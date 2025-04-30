.class public Lcom/ss/android/socialbase/appdownloader/e/d;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/c/n;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ss/android/socialbase/appdownloader/view/a;

.field private static d:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/socialbase/appdownloader/c/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/d;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 14
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_appdownloader_notification_request_title"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_appdownloader_notification_request_message"

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v4

    const-string v5, "tt_appdownloader_notification_request_btn_yes"

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v5

    const-string v6, "tt_appdownloader_notification_request_btn_no"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 20
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 22
    :cond_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/e/d$3;

    invoke-direct {v3, p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/d$3;-><init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V

    .line 24
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/e/d$2;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/e/d$2;-><init>()V

    .line 25
    invoke-virtual {p0, v5, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/e/d$1;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/e/d$1;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/d;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    const/4 v1, 0x0

    .line 6
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    .line 7
    :cond_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/appdownloader/c/n;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/socialbase/appdownloader/c/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/e/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/appdownloader/view/a;

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/view/a;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->a()V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 10
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
