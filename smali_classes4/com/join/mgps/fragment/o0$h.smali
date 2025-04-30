.class Lcom/join/mgps/fragment/o0$h;
.super Ljava/lang/Object;
.source "ForumGroupPostsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o0;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    iget-object v0, v0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    iget-object v0, v0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/ForumActivity;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->P0()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    invoke-static {v1}, Lcom/join/mgps/fragment/o0;->O(Lcom/join/mgps/fragment/o0;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->g1()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    iget v1, v0, Lcom/join/mgps/fragment/o0;->q:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v0, v0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o0$h;->a:Lcom/join/mgps/fragment/o0;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/o0;->R(I)V

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/o0;->R(I)V

    return-void
.end method
