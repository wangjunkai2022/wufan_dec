.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;
.super Ljava/lang/Object;
.source "CommentAllListFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

.field final synthetic b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->a:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    invoke-interface {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;->A()V

    return-void
.end method
