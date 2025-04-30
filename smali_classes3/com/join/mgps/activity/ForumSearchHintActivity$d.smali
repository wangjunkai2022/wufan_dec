.class Lcom/join/mgps/activity/ForumSearchHintActivity$d;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Y0(Ljava/lang/String;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->F0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    :cond_2
    return-void
.end method
