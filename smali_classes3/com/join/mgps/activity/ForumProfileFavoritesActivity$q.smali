.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b1(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    :goto_0
    return-void
.end method
