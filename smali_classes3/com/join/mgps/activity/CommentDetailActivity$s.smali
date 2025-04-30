.class Lcom/join/mgps/activity/CommentDetailActivity$s;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->s1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity;->D0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->J0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/CommentDetailActivity;->I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->K0(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method
