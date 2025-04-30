.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b1(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->a:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    :cond_0
    return-void
.end method
