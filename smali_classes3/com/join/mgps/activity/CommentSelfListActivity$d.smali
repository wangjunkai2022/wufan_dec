.class Lcom/join/mgps/activity/CommentSelfListActivity$d;
.super Ljava/lang/Object;
.source "CommentSelfListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivity;->Y0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->g:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->o:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->F0(Lcom/join/mgps/activity/CommentSelfListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->F0(Lcom/join/mgps/activity/CommentSelfListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->a:Lcom/join/mgps/activity/CommentSelfListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_3
    :goto_0
    return-void
.end method
