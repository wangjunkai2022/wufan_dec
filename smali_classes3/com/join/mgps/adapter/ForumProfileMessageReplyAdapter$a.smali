.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->v(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->a:I

    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->a:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->e(Landroid/view/View;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
