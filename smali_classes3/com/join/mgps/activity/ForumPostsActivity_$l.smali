.class Lcom/join/mgps/activity/ForumPostsActivity_$l;
.super Ljava/lang/Object;
.source "ForumPostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity_;->v2(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->c:Lcom/join/mgps/activity/ForumPostsActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->a:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->c:Lcom/join/mgps/activity/ForumPostsActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->a:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$l;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity_;->B3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V

    return-void
.end method
