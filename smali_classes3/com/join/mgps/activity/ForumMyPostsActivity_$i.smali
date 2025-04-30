.class Lcom/join/mgps/activity/ForumMyPostsActivity_$i;
.super Ljava/lang/Object;
.source "ForumMyPostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyPostsActivity_;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic b:Lcom/join/mgps/activity/ForumMyPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;->b:Lcom/join/mgps/activity/ForumMyPostsActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;->b:Lcom/join/mgps/activity/ForumMyPostsActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity_$i;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->g1(Lcom/join/mgps/activity/ForumMyPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method
