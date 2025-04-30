.class Lcom/join/mgps/aidl/MGWifiClientThread$b;
.super Ljava/lang/Thread;
.source "MGWifiClientThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread;->disConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/aidl/MGWifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$b;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$b;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$b;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 4
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$b;->a:Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
