.class Lcom/join/mgps/helper/MGFightClientManager$b;
.super Ljava/lang/Thread;
.source "MGFightClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightClientManager;->afterApScan()V
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
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1300(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "12345678"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/WifiUtils;->connectToHotspot(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->a:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/join/mgps/helper/MGFightClientManager;->lasConnectToHostspot:J

    return-void
.end method
