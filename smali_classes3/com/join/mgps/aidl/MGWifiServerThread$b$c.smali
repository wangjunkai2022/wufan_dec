.class Lcom/join/mgps/aidl/MGWifiServerThread$b$c;
.super Ljava/lang/Thread;
.source "MGWifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiServerThread$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiServerThread$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 3
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->e:Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    :goto_0
    return-void
.end method
