.class Lcom/join/mgps/activity/ForumProfileMessageActivity$d;
.super Ljava/lang/Object;
.source "ForumProfileMessageActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageActivity;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->U0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->F0(Lcom/join/mgps/activity/ForumProfileMessageActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->L0(I)V

    return-void
.end method
