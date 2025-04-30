.class Lcom/join/mgps/fragment/GmaeFormPostFragment$o;
.super Landroid/os/Handler;
.source "GmaeFormPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-static {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->N(Lcom/join/mgps/fragment/GmaeFormPostFragment;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_0
    return-void
.end method
