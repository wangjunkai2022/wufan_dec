.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->w(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->c:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->a:I

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->h(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
