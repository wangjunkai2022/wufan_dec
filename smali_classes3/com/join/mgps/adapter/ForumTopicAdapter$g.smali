.class Lcom/join/mgps/adapter/ForumTopicAdapter$g;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumTopicAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;->b:Lcom/join/mgps/adapter/ForumTopicAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;->b:Lcom/join/mgps/adapter/ForumTopicAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->a(Lcom/join/mgps/adapter/ForumTopicAdapter;)Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;->b:Lcom/join/mgps/adapter/ForumTopicAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->a(Lcom/join/mgps/adapter/ForumTopicAdapter;)Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter$k;->d(I)V

    :cond_0
    return-void
.end method
