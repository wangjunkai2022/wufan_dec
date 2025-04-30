.class Lcom/join/mgps/adapter/z4$b;
.super Ljava/lang/Object;
.source "RecomWifiAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/z4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/z4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/z4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z4$b;->b:Lcom/join/mgps/adapter/z4;

    iput p2, p0, Lcom/join/mgps/adapter/z4$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$b;->b:Lcom/join/mgps/adapter/z4;

    iget-object p2, p1, Lcom/join/mgps/adapter/z4;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/adapter/z4$b;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$b;->b:Lcom/join/mgps/adapter/z4;

    iget-object p2, p1, Lcom/join/mgps/adapter/z4;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/adapter/z4$b;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$b;->b:Lcom/join/mgps/adapter/z4;

    invoke-static {p1}, Lcom/join/mgps/adapter/z4;->a(Lcom/join/mgps/adapter/z4;)Lo1/d;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/z4$b;->b:Lcom/join/mgps/adapter/z4;

    iget-object p2, p2, Lcom/join/mgps/adapter/z4;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Lo1/d;->p(Ljava/util/List;)V

    return-void
.end method
