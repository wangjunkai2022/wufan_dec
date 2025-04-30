.class Lcom/mob/mgs/impl/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/a;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "chk_cb_"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 3
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    new-instance v2, Ljava/net/Socket;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    const v4, 0xe9fa

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 5
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "utf-8"

    if-eqz v1, :cond_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;I)I

    .line 7
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    const-string v3, "[GuardConnect] clientSocket connected"

    invoke-virtual {v1, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lg_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_3
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v1}, Lcom/mob/mgs/impl/a;->e(Lcom/mob/mgs/impl/a;)V

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 15
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 16
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    .line 17
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    const-string v4, "[GuardConnect] client received server disconnect"

    invoke-virtual {v3, v4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3, v6}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Z)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 20
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GuardConnect] client received server msg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string v3, "chk"

    .line 21
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    .line 22
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v4}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 25
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 26
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GuardConnect] client send alive check msg callback to server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    .line 27
    :try_start_5
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    .line 28
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GuardConnect] clientSocket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GuardConnect] client received socket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 32
    iget-object v0, p0, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Z)V

    :cond_4
    :goto_2
    return-void
.end method
