.class Lcom/join/mgps/activity/ForumPostsActivity$b0;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->S0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->U0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    :goto_0
    return-void
.end method
