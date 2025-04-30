.class Lcom/join/mgps/activity/ForumPostsActivity$p;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->m2()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$p;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$p;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->l2(Z)V

    return-void
.end method
