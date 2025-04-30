.class Lcom/papa91/VideoStrategyPop$6;
.super Ljava/lang/Object;
.source "VideoStrategyPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;->videoEndFunction()V
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
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
