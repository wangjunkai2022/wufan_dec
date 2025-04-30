.class Lcom/join/mgps/customview/g0$c;
.super Ljava/lang/Object;
.source "PopBattleArea.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/g0;-><init>(Landroid/content/Context;Lcom/join/mgps/customview/g0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/g0$e;

.field final synthetic b:Lcom/join/mgps/customview/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/g0;Lcom/join/mgps/customview/g0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0$c;->b:Lcom/join/mgps/customview/g0;

    iput-object p2, p0, Lcom/join/mgps/customview/g0$c;->a:Lcom/join/mgps/customview/g0$e;

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
    iget-object p1, p0, Lcom/join/mgps/customview/g0$c;->b:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/customview/g0$f;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/g0$c;->b:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    invoke-virtual {p1}, Lcom/join/mgps/customview/g0$f;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/join/mgps/dto/GameConfig;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/g0$c;->a:Lcom/join/mgps/customview/g0$e;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, p2}, Lcom/join/mgps/customview/g0$e;->b(Lcom/join/mgps/dto/GameConfig;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/g0$c;->b:Lcom/join/mgps/customview/g0;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
