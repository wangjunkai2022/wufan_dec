.class Lcom/papa91/view/AVLoadingIndicatorView$1;
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
    iput-object p1, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->access$002(Lcom/papa91/view/AVLoadingIndicatorView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/papa91/view/AVLoadingIndicatorView;->access$102(Lcom/papa91/view/AVLoadingIndicatorView;J)J

    .line 3
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method
