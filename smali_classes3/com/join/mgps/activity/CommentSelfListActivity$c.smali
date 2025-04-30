.class Lcom/join/mgps/activity/CommentSelfListActivity$c;
.super Ljava/lang/Object;
.source "CommentSelfListActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/CommentSelfListAdapter$j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    invoke-static {v0, v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->E0(Lcom/join/mgps/activity/CommentSelfListActivity;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    const p2, 0x7f11010d

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentSelfListActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentSelfListActivity;->W0()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivity;->Q0(ILjava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivity;->H0(ILjava/lang/String;I)V

    return-void
.end method

.method public b(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    invoke-static {v0, v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->E0(Lcom/join/mgps/activity/CommentSelfListActivity;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    const p2, 0x7f11010d

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentSelfListActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentSelfListActivity;->W0()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivity;->R0(ILjava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivity;->P0(ILjava/lang/String;I)V

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$c;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goCommentDetailActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
