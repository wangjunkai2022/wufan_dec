.class Lcom/join/mgps/adapter/ForumBaseAdapter$k;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$k;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$k;->a:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$k;->a:Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;

    iget v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->i:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentSelfListActivity_$r;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
