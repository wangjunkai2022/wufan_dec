.class Lcom/join/mgps/fragment/s3$c;
.super Ljava/lang/Object;
.source "PaPaBannerListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/s3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

    iget-object p1, p1, Lcom/join/mgps/fragment/s3;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

    iget-object p1, p1, Lcom/join/mgps/fragment/s3;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

    iget-object p1, p1, Lcom/join/mgps/fragment/s3;->g:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result p1

    sget-object p2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

    iget-object p1, p1, Lcom/join/mgps/fragment/s3;->g:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBean;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/fragment/s3$c;->a:Lcom/join/mgps/fragment/s3;

    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/s3;->V(Lcom/join/mgps/dto/AppBean;)V

    :cond_0
    return-void
.end method
