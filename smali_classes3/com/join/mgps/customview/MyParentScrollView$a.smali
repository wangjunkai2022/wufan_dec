.class Lcom/join/mgps/customview/MyParentScrollView$a;
.super Landroid/os/Handler;
.source "MyParentScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyParentScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/MyParentScrollView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyParentScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v0}, Lcom/join/mgps/customview/MyParentScrollView;->a(Lcom/join/mgps/customview/MyParentScrollView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/MyParentScrollView;->b(Lcom/join/mgps/customview/MyParentScrollView;I)I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v0}, Lcom/join/mgps/customview/MyParentScrollView;->c(Lcom/join/mgps/customview/MyParentScrollView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v1}, Lcom/join/mgps/customview/MyParentScrollView;->c(Lcom/join/mgps/customview/MyParentScrollView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v0}, Lcom/join/mgps/customview/MyParentScrollView;->d(Lcom/join/mgps/customview/MyParentScrollView;)Lcom/join/mgps/customview/MyParentScrollView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/MyParentScrollView$a;->a:Lcom/join/mgps/customview/MyParentScrollView;

    invoke-static {v0}, Lcom/join/mgps/customview/MyParentScrollView;->d(Lcom/join/mgps/customview/MyParentScrollView;)Lcom/join/mgps/customview/MyParentScrollView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/MyParentScrollView$b;->a(I)V

    :cond_1
    return-void
.end method
