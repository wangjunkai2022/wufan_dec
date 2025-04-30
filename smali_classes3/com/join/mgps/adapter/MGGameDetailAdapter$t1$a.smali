.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameVoucherBean;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->a:Lcom/join/mgps/dto/GameVoucherBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 2
    iput v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->a:Lcom/join/mgps/dto/GameVoucherBean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
