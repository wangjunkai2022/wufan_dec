.class Lcom/join/mgps/activity/ModGameIndexActivity$r;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ModGameIndexActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->g1(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->h1(Lcom/join/mgps/activity/ModGameIndexActivity;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->j1(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->k1(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->i1(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->R0(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->P0(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result v2

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->w1()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->Q0(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->L1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->l1(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->j1(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->S0(Lcom/join/mgps/activity/ModGameIndexActivity;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->g1(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->T0(Lcom/join/mgps/activity/ModGameIndexActivity;J)J

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->m1(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    return-void
.end method
