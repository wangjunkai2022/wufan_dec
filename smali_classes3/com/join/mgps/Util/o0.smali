.class public Lcom/join/mgps/Util/o0;
.super Landroid/os/Handler;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/o0$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:J = 0x1388L


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/join/mgps/Util/o0$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Lcom/join/mgps/Util/o0$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/Util/o0;->b:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/Util/o0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/o0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/Util/o0$a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x1388

    if-eq v1, v2, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/join/mgps/Util/o0;->b:I

    .line 7
    iget-object p1, v0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, v0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, v0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, v0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    move-result p1

    .line 11
    iget-object v1, v0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(I)V

    .line 12
    :cond_5
    iget-object p1, v0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
