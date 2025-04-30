.class Lcom/join/mgps/helper/MGWifiFightClientManger$a;
.super Landroid/os/Handler;
.source "MGWifiFightClientManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGWifiFightClientManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGWifiFightClientManger;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

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

    const/16 v1, 0x232d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2331

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2332

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->d()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->b()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ll1/c;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ll1/c;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->g()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->f()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Ll1/c;

    move-result-object p1

    invoke-interface {p1}, Ll1/c;->i()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
