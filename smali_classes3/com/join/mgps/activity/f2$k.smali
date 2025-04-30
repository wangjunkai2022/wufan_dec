.class Lcom/join/mgps/activity/f2$k;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {p1}, Lcom/join/mgps/activity/f2;->e0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->b0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v1}, Lcom/join/mgps/activity/f2;->a0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->c0(Lcom/join/mgps/activity/f2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->c0(Lcom/join/mgps/activity/f2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->d0(Lcom/join/mgps/activity/f2;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p1

    const v1, 0x7f080a10

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eq p1, v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2$k;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->d0(Lcom/join/mgps/activity/f2;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    const v1, 0x7f080a0f

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
