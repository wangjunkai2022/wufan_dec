.class Lcom/join/mgps/activity/CommentSelfListActivity$b;
.super Ljava/lang/Object;
.source "CommentSelfListActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->Y0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->o:I

    .line 4
    iput v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->n:I

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity;->J0(I)V

    :cond_0
    return-void
.end method
