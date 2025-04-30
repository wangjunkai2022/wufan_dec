.class Lcom/join/mgps/activity/SharePostsActivity$d;
.super Ljava/lang/Object;
.source "SharePostsActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/SharePostsActivity$i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/SharePostsActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/SharePostsActivity;->h:Lcom/join/mgps/activity/SharePostsActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/SharePostsActivity;->i:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->d(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SharePostsActivity;->h:Lcom/join/mgps/activity/SharePostsActivity$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->notifyDataSetChanged()V

    .line 4
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SharePostsActivity;->goMyAlbumActivity4PickPic()V

    return-void
.end method
