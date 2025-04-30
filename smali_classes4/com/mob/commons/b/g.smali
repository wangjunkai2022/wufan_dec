.class public abstract Lcom/mob/commons/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/g$c;,
        Lcom/mob/commons/b/g$a;,
        Lcom/mob/commons/b/g$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/commons/b/g;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/mob/commons/b/g;->d:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/mob/commons/b/g;->i:I

    .line 9
    iput-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/g$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 48
    new-instance v0, Lcom/mob/commons/b/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/b/g$b;-><init>(Lcom/mob/commons/b/g;Lcom/mob/commons/b/g$1;)V

    const-string v1, " failed!"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 49
    :try_start_0
    invoke-virtual {p1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mob/commons/b/g$b;->a(J)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0, v2}, Lcom/mob/commons/b/g;->a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-object p2

    .line 54
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 56
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 57
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 58
    :goto_2
    throw p2

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "unable to invoke in main thread!"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized a(Landroid/content/Intent;)Z
    .locals 6

    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/mob/commons/b/g;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mob/commons/b/g;->i:I

    const/4 v0, 0x0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->c()Lcom/mob/commons/b/g$c;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-direct {p0, v4, p1}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/g$c;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    .line 7
    iget-boolean p1, v4, Lcom/mob/commons/b/g$c;->a:Z

    iput-boolean p1, p0, Lcom/mob/commons/b/g;->d:Z

    .line 8
    iget-object p1, v4, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;

    .line 9
    iget-object p1, v4, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;

    .line 10
    iget-object p1, v4, Lcom/mob/commons/b/g$c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;

    .line 11
    iget-object p1, v4, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 13
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 14
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oa use time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/b/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/commons/b/g;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/mob/commons/b/g;->i:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/mob/commons/b/g;->c:Z

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/mob/commons/b/g;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 35
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 36
    invoke-interface {p2, p4, v2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-object p2, v1

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-object p2, v1

    .line 41
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntValue: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! (remoteException)"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz p2, :cond_0

    .line 42
    :try_start_4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_1
    return v0

    :catchall_4
    move-exception p1

    move-object v2, v1

    move-object v1, p2

    :goto_1
    if-eqz v1, :cond_2

    .line 44
    :try_start_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 46
    :catchall_5
    :cond_3
    throw p1
.end method

.method protected a()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18
    :try_start_2
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    .line 19
    array-length v3, p5

    if-lez v3, :cond_0

    .line 20
    array-length v3, p5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p5, v4

    .line 21
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p2, p4, v1, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v2, v0

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object v1, v0

    move-object v2, v1

    .line 27
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getStringValue: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_1

    .line 28
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_2
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_3

    .line 30
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 32
    :catchall_6
    :cond_4
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 4
    iget-object v0, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()Lcom/mob/commons/b/g$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0x9c4

    return-wide v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 2
    iget-object v0, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 2
    iget-object v0, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 2
    iget-object v0, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 2
    iget-boolean v0, p0, Lcom/mob/commons/b/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "009$gfemhmgfgfhkjfhmhm"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "011$gfemEi+hdgi!i_ge)j9efgeed"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
