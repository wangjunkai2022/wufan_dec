.class Lcom/papa/controller/component/bluetooth/spp/b$c;
.super Lcom/papa/controller/component/bluetooth/spp/b$d;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/controller/component/bluetooth/spp/b$d;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method c(Ljava/util/ArrayList;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const-string v2, "GB"

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 5
    aget-byte v5, v2, v4

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eq v1, v5, :cond_2

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b$c;->c(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [B

    .line 11
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->i(Lcom/papa/controller/component/bluetooth/spp/b;)V

    .line 17
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$c;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->e(Lcom/papa/controller/component/bluetooth/spp/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    return-void
.end method
