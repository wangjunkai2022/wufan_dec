.class Lcom/join/mgps/activity/CommentDetailActivity$r;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$r;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/dialog/b;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$r;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12014a

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u81ea\u5df1\u7684\u70b9\u8bc4\uff1f"

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string v0, "\u63d0\u793a"

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$r$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity$r$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity$r;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
