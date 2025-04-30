.class Lcom/join/mgps/activity/g0$o;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g0;->P0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/x;

.field final synthetic b:Lcom/join/mgps/activity/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g0;Lcom/join/mgps/adapter/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g0$o;->b:Lcom/join/mgps/activity/g0;

    iput-object p2, p0, Lcom/join/mgps/activity/g0$o;->a:Lcom/join/mgps/adapter/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/g0$o;->a:Lcom/join/mgps/adapter/x;

    invoke-virtual {v2}, Lcom/join/mgps/adapter/x;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/g0$o;->a:Lcom/join/mgps/adapter/x;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Ll1/k;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/g0$o;->a:Lcom/join/mgps/adapter/x;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Ll1/k;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Ll1/k;->C(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
