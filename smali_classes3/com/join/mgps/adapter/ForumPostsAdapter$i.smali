.class Lcom/join/mgps/adapter/ForumPostsAdapter$i;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->o0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

    iget v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->a:I

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->n(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

    iget-boolean v5, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->f:Z

    iget-boolean v6, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->e:Z

    iget v7, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->a:I

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->b:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/adapter/ForumPostsAdapter;->C0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
