.class Lcom/join/mgps/activity/CommentSelfListActivity$a;
.super Ljava/lang/Object;
.source "CommentSelfListActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivity;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentSelfListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$a;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$a;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$a;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity;->J0(I)V

    :cond_0
    return-void
.end method
