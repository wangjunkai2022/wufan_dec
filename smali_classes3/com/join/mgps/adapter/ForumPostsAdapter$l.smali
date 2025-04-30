.class Lcom/join/mgps/adapter/ForumPostsAdapter$l;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->r0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->a:I

    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->b:Z

    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->c:Z

    iput p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->d:I

    iput-object p6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->a:I

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->i(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->b:Z

    iget-boolean v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->c:Z

    iget v7, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->a:I

    iget v8, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->d:I

    iget-object v9, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->e:Ljava/lang/String;

    iget-object v10, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;->f:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/adapter/ForumPostsAdapter;->C0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
