.class Lcom/join/mgps/activity/ForumPostsActivity_$u;
.super Ljava/lang/Object;
.source "ForumPostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity_;->x2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$u;->b:Lcom/join/mgps/activity/ForumPostsActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$u;->a:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_$u;->b:Lcom/join/mgps/activity/ForumPostsActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$u;->a:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity_;->K3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    return-void
.end method
