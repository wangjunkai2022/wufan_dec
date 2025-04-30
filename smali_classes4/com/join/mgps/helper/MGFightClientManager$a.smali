.class Lcom/join/mgps/helper/MGFightClientManager$a;
.super Landroid/os/Handler;
.source "MGFightClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_d

    const-string v1, ";mGameName="

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/16 v1, 0x232d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2331

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$102(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->d()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->b()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$102(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 13
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1100(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1100(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$d;->a()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0, v2}, Lcom/join/mgps/helper/MGFightClientManager;->access$502(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 16
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store ssid in history:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1200(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ll1/c;->k(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->f()V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->g()V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 27
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->i()V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    goto/16 :goto_3

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fde\u63a5\u7f51\u7edc\u6210\u529f:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiClientThread is not null.but ssid is different so destory.new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";old="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->destroy()V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1002(Lcom/join/mgps/helper/MGFightClientManager;Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/mgps/aidl/MGWifiClientThread;

    goto :goto_0

    .line 38
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 39
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wifiClientThread is not null ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],so return."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 40
    :cond_8
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668...wifiClientThread="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    iget-object v5, v3, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v3

    iget-object v6, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v6}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v5, v3}, Lcom/join/mgps/aidl/MGWifiClientThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1002(Lcom/join/mgps/helper/MGFightClientManager;Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 42
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->run()V

    .line 43
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    iput-boolean v2, p1, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    iput-boolean v4, p1, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z

    .line 46
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    goto/16 :goto_3

    .line 47
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    iput-boolean v4, p1, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 48
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$700(Lcom/join/mgps/helper/MGFightClientManager;)V

    goto/16 :goto_3

    .line 49
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$400(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$500(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    .line 50
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$700(Lcom/join/mgps/helper/MGFightClientManager;)V

    goto :goto_3

    .line 51
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interrupt ApScan.running="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$400(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";isConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$500(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";isEnteringRoom="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 52
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 53
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->c()V

    .line 54
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
