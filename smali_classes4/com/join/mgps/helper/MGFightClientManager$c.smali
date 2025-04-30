.class Lcom/join/mgps/helper/MGFightClientManager$c;
.super Ljava/lang/Thread;
.source "MGFightClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightClientManager;->afterApScan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->b:Lcom/join/mgps/helper/MGFightClientManager;

    iput-object p2, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->b:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->b:Lcom/join/mgps/helper/MGFightClientManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->a:Ljava/lang/String;

    const-string v2, "12345678"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/WifiUtils;->connectToHotspot(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
