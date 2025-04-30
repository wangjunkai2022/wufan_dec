.class Lcom/join/mgps/adapter/ForumPostsAdapter$h;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->p0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v.setOnClickListener"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-boolean v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;

    invoke-static {v0, p1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-boolean v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Z

    :goto_2
    return-void
.end method
