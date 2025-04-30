.class Lcom/join/mgps/activity/CommentDetailActivity$e;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->b1(Lcom/join/mgps/activity/CommentDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->O0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->P0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->c1(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    const-string v0, "asc"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->d1(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->d1(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->F0(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$e;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->c1(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->m1(Ljava/lang/String;)V

    return-void
.end method
