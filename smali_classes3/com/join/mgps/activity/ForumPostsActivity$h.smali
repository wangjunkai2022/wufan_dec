.class Lcom/join/mgps/activity/ForumPostsActivity$h;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$h;->f:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$h;->f:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 2

    const/16 v0, 0x1103

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1104

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$h;->f:Lcom/join/mgps/activity/ForumPostsActivity;

    sget-object v1, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$h;->f:Lcom/join/mgps/activity/ForumPostsActivity;

    sget-object v1, Lcom/join/mgps/rpc/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
