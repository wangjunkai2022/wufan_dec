.class Lcom/join/mgps/adapter/t4$f;
.super Ljava/lang/Object;
.source "PapaMainV2Adapter.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t4;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/t4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$f;->b:Lcom/join/mgps/adapter/t4;

    iput-object p2, p0, Lcom/join/mgps/adapter/t4$f;->a:Ljava/util/List;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4$f;->b:Lcom/join/mgps/adapter/t4;

    invoke-static {v0}, Lcom/join/mgps/adapter/t4;->r(Lcom/join/mgps/adapter/t4;)Lcom/join/mgps/adapter/t4$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t4$f;->b:Lcom/join/mgps/adapter/t4;

    invoke-static {v0}, Lcom/join/mgps/adapter/t4;->r(Lcom/join/mgps/adapter/t4;)Lcom/join/mgps/adapter/t4$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/t4$f;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/t4$i;->b(ILjava/util/List;)V

    :cond_0
    return-void
.end method
