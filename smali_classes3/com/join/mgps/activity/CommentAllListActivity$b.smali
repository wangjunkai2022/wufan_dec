.class Lcom/join/mgps/activity/CommentAllListActivity$b;
.super Ljava/lang/Object;
.source "CommentAllListActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentAllListActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentAllListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentAllListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity$b;->a:Lcom/join/mgps/activity/CommentAllListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity$b;->a:Lcom/join/mgps/activity/CommentAllListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentAllListActivity;->D0(Lcom/join/mgps/activity/CommentAllListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity$b;->a:Lcom/join/mgps/activity/CommentAllListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentAllListActivity;->I0()V

    return-void
.end method
