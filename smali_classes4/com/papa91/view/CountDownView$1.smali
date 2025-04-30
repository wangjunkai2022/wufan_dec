.class Lcom/papa91/view/CountDownView$1;
.super Landroid/os/Handler;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/CountDownView;


# direct methods
.method constructor <init>(Lcom/papa91/view/CountDownView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

    iget-object p1, p1, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onCountFinished()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/papa91/view/CountDownView$1;->this$0:Lcom/papa91/view/CountDownView;

    iget-object p1, p1, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onSuccessFinish()V

    :cond_2
    :goto_0
    return-void
.end method
