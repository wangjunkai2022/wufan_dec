.class Lcom/join/mgps/helper/MGFightServerManager$a$a;
.super Landroid/os/Handler;
.source "MGFightServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightServerManager$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightServerManager$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_1

    const/16 p1, 0x232a

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->g()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    const/16 v0, 0x2330

    invoke-interface {p1, v0}, Ll1/c;->a(I)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object v0, v0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$500(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ll1/c;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->b()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object v0, v0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ll1/c;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Ll1/c;

    move-result-object p1

    const-string v0, "\u5ba2\u673a"

    invoke-interface {p1, v0}, Ll1/c;->k(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x232f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
