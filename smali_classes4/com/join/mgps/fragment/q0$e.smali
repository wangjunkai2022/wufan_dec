.class Lcom/join/mgps/fragment/q0$e;
.super Ljava/lang/Object;
.source "ForumIndexFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q0;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q0$e;->a:Lcom/join/mgps/fragment/q0;

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
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/q0$e;->a:Lcom/join/mgps/fragment/q0;

    iget-object v2, v1, Lcom/join/mgps/fragment/q0;->s:Lcom/join/mgps/adapter/x;

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v1}, Lcom/join/mgps/fragment/q0;->O(Lcom/join/mgps/fragment/q0;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q0$e;->a:Lcom/join/mgps/fragment/q0;

    invoke-static {v0, p1}, Lcom/join/mgps/fragment/q0;->P(Lcom/join/mgps/fragment/q0;I)I

    return-void
.end method
