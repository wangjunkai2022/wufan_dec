.class Lcom/join/mgps/fragment/u4$f;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u4;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u4$f;->a:Lcom/join/mgps/fragment/u4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u4$f;->a:Lcom/join/mgps/fragment/u4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/u4;->goLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/u4$f;->a:Lcom/join/mgps/fragment/u4;

    invoke-static {v0}, Lcom/join/mgps/fragment/u4;->O(Lcom/join/mgps/fragment/u4;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentSelfListActivity_$r;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method
