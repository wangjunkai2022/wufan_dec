.class Lcom/join/mgps/adapter/ForumPostsAdapter$e;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->D0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "mPopWindow.setTouchInterceptor"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-static {p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->i(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->a:Landroid/view/View;

    invoke-static {p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-boolean v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Z

    :cond_0
    return v1
.end method
