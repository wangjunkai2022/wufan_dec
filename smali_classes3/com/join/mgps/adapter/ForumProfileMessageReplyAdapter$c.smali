.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->y(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->d:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->a:I

    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->b:I

    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->d:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->d:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->a:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->b:I

    iget v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;->c:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->l(Landroid/view/View;III)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
