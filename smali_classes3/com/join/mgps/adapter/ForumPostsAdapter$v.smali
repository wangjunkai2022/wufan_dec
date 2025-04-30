.class Lcom/join/mgps/adapter/ForumPostsAdapter$v;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->d(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/dialog/b0;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$v;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/dialog/b0;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$v$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$v;Lcom/join/mgps/dialog/b0;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b0;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
