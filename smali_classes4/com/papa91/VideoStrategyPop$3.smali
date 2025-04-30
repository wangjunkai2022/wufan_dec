.class Lcom/papa91/VideoStrategyPop$3;
.super Ljava/lang/Object;
.source "VideoStrategyPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V
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
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-virtual {p1}, Lcom/papa91/VideoStrategyPop;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa91/VideoStrategyPop$VideoPopListener;->onClose()V

    :cond_0
    return-void
.end method
