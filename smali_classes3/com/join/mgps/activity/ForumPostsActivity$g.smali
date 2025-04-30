.class Lcom/join/mgps/activity/ForumPostsActivity$g;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/ForumPostsActivity$j0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->Q1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$g;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->c(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$g;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    return-void
.end method
