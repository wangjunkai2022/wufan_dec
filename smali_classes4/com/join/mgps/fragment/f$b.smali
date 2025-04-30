.class Lcom/join/mgps/fragment/f$b;
.super Ljava/lang/Object;
.source "CardViewPagerFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

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

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0, p1}, Lcom/join/mgps/fragment/f;->P(Lcom/join/mgps/fragment/f;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->Q(Lcom/join/mgps/fragment/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {p1}, Lcom/join/mgps/fragment/f;->S(Lcom/join/mgps/fragment/f;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->a:Lcom/join/mgps/fragment/f;

    invoke-static {p1}, Lcom/join/mgps/fragment/f;->T(Lcom/join/mgps/fragment/f;)V

    :cond_0
    return-void
.end method
