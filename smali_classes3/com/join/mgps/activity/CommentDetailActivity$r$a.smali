.class Lcom/join/mgps/activity/CommentDetailActivity$r$a;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity$r;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$r$a;->a:Lcom/join/mgps/activity/CommentDetailActivity$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$r$a;->a:Lcom/join/mgps/activity/CommentDetailActivity$r;

    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity$r;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->j1()V

    return-void
.end method
