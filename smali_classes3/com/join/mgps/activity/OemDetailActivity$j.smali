.class Lcom/join/mgps/activity/OemDetailActivity$j;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "OemDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->E0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$j;->b:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090e21

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$j;->b:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/OemDetailActivity;->D0(Lcom/join/mgps/activity/OemDetailActivity;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/ForumLoadingView$e;->b()V

    return-void
.end method
