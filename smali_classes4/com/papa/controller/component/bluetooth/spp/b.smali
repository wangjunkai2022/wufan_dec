.class public Lcom/papa/controller/component/bluetooth/spp/b;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/spp/b$c;,
        Lcom/papa/controller/component/bluetooth/spp/b$d;,
        Lcom/papa/controller/component/bluetooth/spp/b$b;,
        Lcom/papa/controller/component/bluetooth/spp/b$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "Bluetooth Service"

.field private static final i:Ljava/lang/String; = "Bluetooth Secure"

.field private static final j:Ljava/util/UUID;

.field private static final k:Ljava/util/UUID;


# instance fields
.field private final a:Landroid/bluetooth/BluetoothAdapter;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/papa/controller/component/bluetooth/spp/b$a;

.field private d:Lcom/papa/controller/component/bluetooth/spp/b$b;

.field private e:Lcom/papa/controller/component/bluetooth/spp/b$d;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fa87c0d0-afac-11de-8a39-0800200c9a66"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->j:Ljava/util/UUID;

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->k:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    .line 3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 5
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->j:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->k:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/spp/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    return p0
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/spp/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    return p0
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/spp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/spp/b;->l()V

    return-void
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/spp/b;Lcom/papa/controller/component/bluetooth/spp/b$b;)Lcom/papa/controller/component/bluetooth/spp/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    return-object p1
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/spp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/spp/b;->m()V

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    invoke-virtual {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    invoke-virtual {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    return-void
.end method

.method private declared-synchronized o(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized j(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 4
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 7
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 8
    :cond_1
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$b;

    invoke-direct {v0, p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$b;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 10
    invoke-direct {p0, v2}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 3
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 6
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->a()V

    .line 9
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 10
    :cond_2
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$c;

    invoke-direct {v0, p0, p1, p3}, Lcom/papa/controller/component/bluetooth/spp/b$c;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 13
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "device_name"

    .line 14
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_address"

    .line 15
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x3

    .line 18
    invoke-direct {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 3
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 6
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V

    .line 8
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$a;

    invoke-direct {v0, p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$a;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Z)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 3
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 6
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->a()V

    .line 9
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->b()V

    .line 10
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    :cond_2
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r([B)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$d;->b([B)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
