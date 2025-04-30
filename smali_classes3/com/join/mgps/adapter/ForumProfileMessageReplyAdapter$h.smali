.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->q(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->b:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;->b:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V

    return-void
.end method
