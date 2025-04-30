.class Lcom/join/mgps/activity/CommentDetailActivity$l;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->b1(Lcom/join/mgps/activity/CommentDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->c1(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->m1(Ljava/lang/String;)V

    return-void
.end method
