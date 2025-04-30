.class Lcom/join/mgps/adapter/ForumPostsAdapter$u;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010051

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f09051e

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->a(I)V

    :cond_0
    return-void
.end method
