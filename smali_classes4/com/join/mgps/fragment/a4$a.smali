.class Lcom/join/mgps/fragment/a4$a;
.super Ljava/lang/Object;
.source "RankFragmentNew.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/a4;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/a4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/a4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a4$a;->a:Lcom/join/mgps/fragment/a4;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/a4$a;->a:Lcom/join/mgps/fragment/a4;

    iput p1, v0, Lcom/join/mgps/fragment/a4;->e:I

    return-void
.end method
