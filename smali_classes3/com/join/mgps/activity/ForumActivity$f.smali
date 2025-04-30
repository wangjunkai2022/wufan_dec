.class Lcom/join/mgps/activity/ForumActivity$f;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "onPageScrolled"

    aput-object v0, p2, p3

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-static {p2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->R0()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v1}, Lcom/join/mgps/activity/ForumActivity;->E0(Lcom/join/mgps/activity/ForumActivity;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumActivity;->G0(Lcom/join/mgps/activity/ForumActivity;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumActivity;->H0(Lcom/join/mgps/activity/ForumActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumActivity;->F0(Lcom/join/mgps/activity/ForumActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->Z0()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$f;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->R0()V

    return-void
.end method
