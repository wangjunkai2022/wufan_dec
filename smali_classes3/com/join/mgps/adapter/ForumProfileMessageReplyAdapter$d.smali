.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IZZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->a:I

    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->b:Z

    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->c:Z

    iput p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->d:I

    iput-object p6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->a:I

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->i(Landroid/view/View;I)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->b:Z

    iget-boolean v6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->c:Z

    iget v7, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->a:I

    iget v8, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->d:I

    iget-object v9, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->e:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->D(Landroid/view/View;IZZIILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
