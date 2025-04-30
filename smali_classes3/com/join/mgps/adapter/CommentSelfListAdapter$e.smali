.class Lcom/join/mgps/adapter/CommentSelfListAdapter$e;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->d:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->b:Ljava/lang/String;

    iput p4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->d:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b(Lcom/join/mgps/adapter/CommentSelfListAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010051

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->d:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->a:I

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$j;->a(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
