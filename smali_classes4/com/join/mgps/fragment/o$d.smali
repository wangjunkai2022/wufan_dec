.class Lcom/join/mgps/fragment/o$d;
.super Ljava/lang/Object;
.source "CodesBoxFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o$d;->a:Lcom/join/mgps/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/o$d;->a:Lcom/join/mgps/fragment/o;

    invoke-static {p1}, Lcom/join/mgps/fragment/o;->P(Lcom/join/mgps/fragment/o;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o$d;->a:Lcom/join/mgps/fragment/o;

    invoke-static {p1}, Lcom/join/mgps/fragment/o;->P(Lcom/join/mgps/fragment/o;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/o$d;->a:Lcom/join/mgps/fragment/o;

    invoke-static {p2}, Lcom/join/mgps/fragment/o;->M(Lcom/join/mgps/fragment/o;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/activity/GiftsDetailActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->c(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/fragment/o$d;->a:Lcom/join/mgps/fragment/o;

    iget p2, p2, Lcom/join/mgps/fragment/o;->g:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;->a(I)Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    :goto_0
    return-void
.end method
