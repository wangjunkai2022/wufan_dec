.class Lcom/join/mgps/adapter/r1$z;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$z;->a:Lcom/join/mgps/adapter/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$z;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->h(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/r1$z;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->h(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$z;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->h(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
