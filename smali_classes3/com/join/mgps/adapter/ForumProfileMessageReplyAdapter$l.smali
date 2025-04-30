.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->x(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;->a:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;->a:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;->a:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->m()V

    :cond_0
    return-void
.end method
