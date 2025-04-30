.class public Lcom/alipay/sdk/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/f$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "failed"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/android/app/IAlixPay;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/alipay/sdk/util/f$a;

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/alipay/sdk/util/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/g;-><init>(Lcom/alipay/sdk/util/f;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 4
    new-instance v0, Lcom/alipay/sdk/util/h;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/h;-><init>(Lcom/alipay/sdk/util/f;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 5
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/f;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/sdk/util/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private d(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/j;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/data/a;->a()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 6
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 7
    :try_start_3
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_6

    .line 8
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/alipay/sdk/util/j;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_1

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.eg.android.AlipayGphone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "theme"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.google."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "biz"

    const-string v4, "ClientBindFailed"

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "failed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11
    :try_start_4
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    nop

    .line 12
    :goto_4
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 13
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 14
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 15
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 17
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    :cond_5
    return-object p1

    .line 18
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$a;

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {v0}, Lcom/alipay/sdk/util/f$a;->a()V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 22
    iput-boolean v3, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 24
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 26
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    nop

    .line 27
    :goto_5
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 28
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 29
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 30
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 32
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    :cond_9
    return-object p1

    :catchall_2
    move-exception p1

    :try_start_7
    const-string v0, "biz"

    const-string v2, "ClientBindException"

    .line 33
    invoke-static {v0, v2, p1}, Lcom/alipay/sdk/app/statistic/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "failed"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 34
    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    nop

    .line 35
    :goto_6
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 36
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 37
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 38
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 40
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    :cond_a
    return-object p1

    :catchall_4
    move-exception p1

    .line 41
    :try_start_9
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    nop

    .line 42
    :goto_7
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 43
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 44
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 45
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 47
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    :cond_b
    throw p1

    :catchall_6
    move-exception p1

    .line 48
    monitor-exit p2

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method static synthetic f(Lcom/alipay/sdk/util/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "com.eg.android.AlipayGphone"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/alipay/sdk/util/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/j$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Lcom/alipay/sdk/util/j$a;->a:[B

    invoke-static {v2}, Lcom/alipay/sdk/util/j;->f([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    .line 3
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "biz"

    const-string v3, "ClientSignError"

    .line 4
    invoke-static {v1, v3, v2}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "failed"

    return-object p1

    .line 5
    :cond_0
    iget v1, v1, Lcom/alipay/sdk/util/j$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x4e

    if-le v1, v2, :cond_1

    .line 6
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v1, 0x96

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/util/f;->d(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    return-void
.end method
