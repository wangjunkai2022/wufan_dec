.class Lcom/papa/controller/component/bluetooth/spp/b$d;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field protected final a:Landroid/bluetooth/BluetoothSocket;

.field protected final b:Ljava/io/InputStream;

.field protected final c:Ljava/io/OutputStream;

.field final synthetic d:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->a:Landroid/bluetooth/BluetoothSocket;

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p3, p1

    .line 5
    :catch_1
    :goto_0
    iput-object p3, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->b:Ljava/io/InputStream;

    .line 6
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b([B)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->i(Lcom/papa/controller/component/bluetooth/spp/b;)V

    .line 11
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->d:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->e(Lcom/papa/controller/component/bluetooth/spp/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    return-void
.end method
