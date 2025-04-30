.class Lcom/join/mgps/activity/ForumProfileCommentActivity$d;
.super Ljava/lang/Object;
.source "ForumProfileCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileCommentActivity;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->F0(Lcom/join/mgps/activity/ForumProfileCommentActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->K0(I)V

    return-void
.end method
