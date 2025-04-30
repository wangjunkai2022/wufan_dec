.class Lcom/join/mgps/adapter/ForumPostsAdapter$g;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$g;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$g;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$g;->a:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->o()V

    :cond_0
    return-void
.end method
