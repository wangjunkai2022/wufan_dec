.class Lcom/join/mgps/customview/ViewPagerWithADs$a$b;
.super Ljava/lang/Object;
.source "ViewPagerWithADs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    iget p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->b:I

    int-to-float p1, p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    iget-object p1, p1, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs;->b(Lcom/join/mgps/customview/ViewPagerWithADs;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->c:I

    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/papa/sim/statistic/p;->r0(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->c:I

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->d:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {p1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->b:I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;->a:J

    :goto_0
    return v0
.end method
