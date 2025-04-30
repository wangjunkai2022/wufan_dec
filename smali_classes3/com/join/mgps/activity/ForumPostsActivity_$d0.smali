.class Lcom/join/mgps/activity/ForumPostsActivity_$d0;
.super Ljava/lang/Object;
.source "ForumPostsActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity_;->w3(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/ForumPostsActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->e:Lcom/join/mgps/activity/ForumPostsActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->a:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->b:I

    iput p4, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->c:I

    iput p5, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->e:Lcom/join/mgps/activity/ForumPostsActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->a:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->b:I

    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->c:I

    iget v4, p0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/ForumPostsActivity_;->T3(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;III)V

    return-void
.end method
