.class Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;
.super Ljava/lang/Object;
.source "ForumPostsTagSelectActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->E0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;->b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;

    iput p2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;->b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;

    iget v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->R0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V

    return-void
.end method
