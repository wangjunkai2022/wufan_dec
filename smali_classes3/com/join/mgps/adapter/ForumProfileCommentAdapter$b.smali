.class Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;
.super Ljava/lang/Object;
.source "ForumProfileCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;->b:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;->b:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;->b:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->a(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;->d(I)V

    :cond_0
    return-void
.end method
