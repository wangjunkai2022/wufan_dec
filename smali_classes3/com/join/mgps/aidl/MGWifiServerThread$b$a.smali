.class Lcom/join/mgps/aidl/MGWifiServerThread$b$a;
.super Ljava/lang/Thread;
.source "MGWifiServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiServerThread$b;->run()V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSync()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$a;->a:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
