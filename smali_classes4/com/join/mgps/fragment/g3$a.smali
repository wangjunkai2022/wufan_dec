.class Lcom/join/mgps/fragment/g3$a;
.super Ljava/lang/Object;
.source "MarketFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g3;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/g3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/g3$a;->a:Lcom/join/mgps/fragment/g3;

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
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/g3$a;->a:Lcom/join/mgps/fragment/g3;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/g3;->O()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/g3$a;->a:Lcom/join/mgps/fragment/g3;

    iget-object p1, p1, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    invoke-virtual {p1}, Lcom/join/mgps/activity/f2;->j1()V

    :cond_1
    :goto_0
    return-void
.end method
