.class Lcom/join/mgps/helper/MGFightServerManager$a;
.super Landroid/os/Handler;
.source "MGFightServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightServerManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$000(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/helper/MGFightServerManager$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->b()V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "papa_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v3}, Lcom/join/mgps/helper/MGFightServerManager;->access$200(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    :cond_3
    if-eqz v2, :cond_5

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$400(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/helper/MGFightServerManager$a$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/helper/MGFightServerManager$a$a;-><init>(Lcom/join/mgps/helper/MGFightServerManager$a;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/aidl/MGWifiServerThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$302(Lcom/join/mgps/helper/MGFightServerManager;Lcom/join/mgps/aidl/MGWifiServerThread;)Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    const/16 v0, 0x232e

    invoke-interface {p1, v0}, Ll1/c;->a(I)V

    :goto_1
    return-void
.end method
