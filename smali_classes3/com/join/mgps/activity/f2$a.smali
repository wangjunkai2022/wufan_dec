.class Lcom/join/mgps/activity/f2$a;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->m1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$a;->b:Lcom/join/mgps/activity/f2;

    iput-object p2, p0, Lcom/join/mgps/activity/f2$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$a;->b:Lcom/join/mgps/activity/f2;

    invoke-static {p1}, Lcom/join/mgps/activity/f2;->S(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/customview/LoopViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/16 p1, 0x6e

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2$a;->b:Lcom/join/mgps/activity/f2;

    iget-object v1, p0, Lcom/join/mgps/activity/f2$a;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/f2;->T(Lcom/join/mgps/activity/f2;Ljava/util/List;I)V

    return-void
.end method
