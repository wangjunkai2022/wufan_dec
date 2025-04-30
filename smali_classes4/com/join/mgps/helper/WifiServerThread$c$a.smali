.class Lcom/join/mgps/helper/WifiServerThread$c$a;
.super Ljava/lang/Object;
.source "WifiServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiServerThread$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/WifiServerThread$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiServerThread$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->a:Lcom/join/mgps/helper/WifiServerThread$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->a:Lcom/join/mgps/helper/WifiServerThread$c;

    iget-object v1, v1, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->a:Lcom/join/mgps/helper/WifiServerThread$c;

    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread$c;->a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->a:Lcom/join/mgps/helper/WifiServerThread$c;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread$c;->a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->a:Lcom/join/mgps/helper/WifiServerThread$c;

    iget-object v0, v0, Lcom/join/mgps/helper/WifiServerThread$c;->f:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    :goto_0
    return-void
.end method
