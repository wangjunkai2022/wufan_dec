.class Lcom/papa/controller/component/bluetooth/spp/b$b;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;

.field private final b:Landroid/bluetooth/BluetoothDevice;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothDevice;

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->e(Lcom/papa/controller/component/bluetooth/spp/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->c()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->a:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    monitor-enter v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/b;->g(Lcom/papa/controller/component/bluetooth/spp/b;Lcom/papa/controller/component/bluetooth/spp/b$b;)Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->a:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/controller/component/bluetooth/spp/b;->k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 8
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 9
    :catch_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->f(Lcom/papa/controller/component/bluetooth/spp/b;)V

    return-void
.end method
