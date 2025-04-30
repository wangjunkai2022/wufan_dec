.class Lcom/join/mgps/helper/MGWifiFightServerManger$a;
.super Landroid/os/Handler;
.source "MGWifiFightServerManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGWifiFightServerManger;-><init>(Landroid/content/Context;Ll1/c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll1/c;

.field final synthetic b:Lcom/join/mgps/helper/MGWifiFightServerManger;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGWifiFightServerManger;Ll1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->b:Lcom/join/mgps/helper/MGWifiFightServerManger;

    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

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
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

    invoke-interface {p1}, Ll1/c;->g()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

    const/16 v0, 0x2330

    invoke-interface {p1, v0}, Ll1/c;->a(I)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

    const-string v0, ""

    invoke-interface {p1, v0}, Ll1/c;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

    invoke-interface {p1}, Ll1/c;->b()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Ll1/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ll1/c;->k(Ljava/lang/String;)V

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
