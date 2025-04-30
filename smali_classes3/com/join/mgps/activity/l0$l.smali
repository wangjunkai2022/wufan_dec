.class Lcom/join/mgps/activity/l0$l;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->G1:Lcom/join/mgps/adapter/c1;

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/c1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    invoke-static {p1}, Lcom/join/mgps/activity/l0;->W(Lcom/join/mgps/activity/l0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/l0;->pauseVideo()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->k:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/l0$l;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->G1:Lcom/join/mgps/adapter/c1;

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/c1;->c(I)V

    return-void
.end method
