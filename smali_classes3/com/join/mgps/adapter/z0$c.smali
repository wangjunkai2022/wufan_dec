.class Lcom/join/mgps/adapter/z0$c;
.super Ljava/lang/Object;
.source "GameDetailHotCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/z0;->e(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:Lcom/join/mgps/adapter/z0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z0$c;->b:Lcom/join/mgps/adapter/z0;

    iput-object p2, p0, Lcom/join/mgps/adapter/z0$c;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/z0$c;->a:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/z0$c;->b:Lcom/join/mgps/adapter/z0;

    iget-object v0, v0, Lcom/join/mgps/adapter/z0;->e:Lcom/join/mgps/adapter/l1$p1;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/join/mgps/adapter/l1$p1;->f(Lcom/join/mgps/dto/CommentBaseBean;)V

    :cond_1
    return-void
.end method
