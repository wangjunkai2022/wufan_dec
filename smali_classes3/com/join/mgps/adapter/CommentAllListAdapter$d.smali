.class Lcom/join/mgps/adapter/CommentAllListAdapter$d;
.super Ljava/lang/Object;
.source "CommentAllListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:Lcom/join/mgps/adapter/CommentAllListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;->b:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;->a:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;->b:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$h;->f(Lcom/join/mgps/dto/CommentBaseBean;)V

    :cond_1
    return-void
.end method
