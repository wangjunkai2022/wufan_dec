.class Lcom/join/mgps/activity/CommentSelfListActivityv2$e;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "CommentSelfListActivityv2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentSelfListActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->F0(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;->b:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->L0()V

    return-void
.end method
