.class Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter$d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->c:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->dismiss()V

    return-void
.end method
