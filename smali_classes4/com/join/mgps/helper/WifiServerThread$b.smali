.class Lcom/join/mgps/helper/WifiServerThread$b;
.super Ljava/lang/Object;
.source "WifiServerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiServerThread;->disConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiServerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$b;->a:Lcom/join/mgps/helper/WifiServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$b;->a:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$000(Lcom/join/mgps/helper/WifiServerThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$b;->a:Lcom/join/mgps/helper/WifiServerThread;

    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$b;->a:Lcom/join/mgps/helper/WifiServerThread;

    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$000(Lcom/join/mgps/helper/WifiServerThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/helper/WifiServerThread$c;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/helper/WifiServerThread$c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
