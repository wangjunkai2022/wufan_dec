.class Lcom/join/mgps/fragment/f$c;
.super Ljava/lang/Object;
.source "CardViewPagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f;->M(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f$c;->a:Lcom/join/mgps/fragment/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/f$c;->a:Lcom/join/mgps/fragment/f;

    invoke-static {p1}, Lcom/join/mgps/fragment/f;->O(Lcom/join/mgps/fragment/f;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
