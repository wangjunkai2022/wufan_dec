.class Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$y0;
.source "ForumPostsTagSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->i(Lcom/join/mgps/dto/RecommendLabelTag;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->I0()V

    return-void
.end method
