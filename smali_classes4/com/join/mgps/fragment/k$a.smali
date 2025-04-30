.class Lcom/join/mgps/fragment/k$a;
.super Ljava/lang/Object;
.source "ClassifyRankFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/k;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k$a;->a:Lcom/join/mgps/fragment/k;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k$a;->a:Lcom/join/mgps/fragment/k;

    iput p1, v0, Lcom/join/mgps/fragment/k;->h:I

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/k;->N(I)V

    return-void
.end method
