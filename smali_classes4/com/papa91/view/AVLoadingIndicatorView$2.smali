.class Lcom/papa91/view/AVLoadingIndicatorView$2;
.super Ljava/lang/Object;
.source "AVLoadingIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/papa91/view/AVLoadingIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->access$202(Lcom/papa91/view/AVLoadingIndicatorView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    invoke-static {v0}, Lcom/papa91/view/AVLoadingIndicatorView;->access$300(Lcom/papa91/view/AVLoadingIndicatorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/papa91/view/AVLoadingIndicatorView;->access$102(Lcom/papa91/view/AVLoadingIndicatorView;J)J

    .line 4
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->setVisibility(I)V

    :cond_0
    return-void
.end method
