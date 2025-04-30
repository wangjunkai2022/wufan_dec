.class Lcom/join/mgps/fragment/z2$a;
.super Landroid/os/Handler;
.source "GameTopicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/z2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/z2$a;->a:Lcom/join/mgps/fragment/z2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$a;->a:Lcom/join/mgps/fragment/z2;

    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$a;->a:Lcom/join/mgps/fragment/z2;

    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$a;->a:Lcom/join/mgps/fragment/z2;

    iget v0, p1, Lcom/join/mgps/fragment/z2;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_2
    :goto_0
    return-void
.end method
