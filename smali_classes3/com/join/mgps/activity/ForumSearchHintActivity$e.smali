.class Lcom/join/mgps/activity/ForumSearchHintActivity$e;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->G0(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->V0()V

    return-void
.end method
