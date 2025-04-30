.class Lcom/join/mgps/adapter/CommentSelfListAdapter$b;
.super Ljava/lang/Object;
.source "CommentSelfListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/CommentSelfListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;->a:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameAndProfileActivity_;->F0(Landroid/content/Context;)Lcom/join/mgps/activity/GameAndProfileActivity_$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameAndProfileActivity_$c;->a(I)Lcom/join/mgps/activity/GameAndProfileActivity_$c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;->a:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->a(Lcom/join/mgps/adapter/CommentSelfListAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameAndProfileActivity_$c;->b(I)Lcom/join/mgps/activity/GameAndProfileActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
