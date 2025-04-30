.class Lcom/join/mgps/activity/ForumPostsActivity_$h;
.super Ljava/lang/Object;
.source "ForumPostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity_;->m3(Lcom/join/mgps/customview/RewardType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/RewardType;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ForumPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->d:Lcom/join/mgps/activity/ForumPostsActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->a:Lcom/join/mgps/customview/RewardType;

    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->b:I

    iput p4, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->d:Lcom/join/mgps/activity/ForumPostsActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->a:Lcom/join/mgps/customview/RewardType;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->b:I

    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$h;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/ForumPostsActivity_;->x4(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V

    return-void
.end method
