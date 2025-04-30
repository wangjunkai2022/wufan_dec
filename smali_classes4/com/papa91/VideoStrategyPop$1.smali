.class Lcom/papa91/VideoStrategyPop$1;
.super Landroid/os/Handler;
.source "VideoStrategyPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/VideoStrategyPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/VideoStrategyPop;


# direct methods
.method constructor <init>(Lcom/papa91/VideoStrategyPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/papa91/VideoStrategyPop;->access$020(Lcom/papa91/VideoStrategyPop;I)I

    .line 3
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$000(Lcom/papa91/VideoStrategyPop;)I

    move-result p1

    if-gez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {v2}, Lcom/papa91/VideoStrategyPop;->access$000(Lcom/papa91/VideoStrategyPop;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$1;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
