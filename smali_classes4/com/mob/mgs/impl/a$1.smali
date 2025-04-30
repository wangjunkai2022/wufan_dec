.class Lcom/mob/mgs/impl/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/a;->a(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/mob/mgs/impl/a;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/a;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    iput-object p2, p0, Lcom/mob/mgs/impl/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0xe9fa

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4
    :try_start_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    const-string v3, "[GuardConnect] registerServerSocket success"

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/mob/mgs/impl/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    const/16 v3, 0x10

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/ServerSocketChannel;

    .line 17
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 18
    invoke-virtual {v4, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    const/4 v5, 0x1

    .line 19
    invoke-virtual {v4, v2, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 20
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SocketChannel;

    const/16 v5, 0x400

    .line 22
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 24
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GuardConnect] serverSocket received bytes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    if-lez v6, :cond_6

    .line 25
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v7, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 26
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GuardConnect] serverSocket received msg:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string v5, "p"

    .line 27
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v5, "lg_"

    .line 28
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v5, :cond_5

    .line 29
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 30
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const/4 v5, 0x3

    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 32
    iget-object v6, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v6}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v6, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v6}, Lcom/mob/mgs/impl/a;->b(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/mob/mgs/impl/c;->a()Lcom/mob/mgs/impl/c;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mob/mgs/impl/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    .line 35
    :try_start_4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "chk_cb_"

    .line 36
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    .line 37
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v4, v3}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_1

    .line 39
    :cond_6
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 40
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 41
    iget-object v5, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v5}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    iget-object v6, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v6}, Lcom/mob/mgs/impl/a;->b(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GuardConnect] serverSocket received client disconnect pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/mob/mgs/impl/c;->a()Lcom/mob/mgs/impl/c;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 45
    :try_start_6
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 46
    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    .line 47
    :try_start_8
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 48
    :catchall_3
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "[GuardConnect] registerServerSocket failed"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mob/mgs/impl/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 50
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GuardConnect] serverSocket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 52
    iget-object v0, p0, Lcom/mob/mgs/impl/a$1;->b:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->c(Lcom/mob/mgs/impl/a;)V

    :cond_7
    return-void
.end method
