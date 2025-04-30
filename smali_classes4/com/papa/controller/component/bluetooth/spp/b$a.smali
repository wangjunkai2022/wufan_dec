.class Lcom/papa/controller/component/bluetooth/spp/b$a;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/bluetooth/BluetoothServerSocket;

.field private b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->c:Z

    const-string v0, "Bluetooth Secure"

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->a()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->c()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->a:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->c:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcceptThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/b;->d(Lcom/papa/controller/component/bluetooth/spp/b;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->c:Z

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v3}, Lcom/papa/controller/component/bluetooth/spp/b;->d(Lcom/papa/controller/component/bluetooth/spp/b;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/papa/controller/component/bluetooth/spp/b;->k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :catch_0
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    :cond_4
    return-void
.end method
