.class Lcom/join/mgps/adapter/t0$c;
.super Ljava/lang/Object;
.source "GamdetialInformationStrategyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field final synthetic i:Lcom/join/mgps/adapter/t0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t0$c;->i:Lcom/join/mgps/adapter/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090517

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t0$c;->b:Landroid/widget/RelativeLayout;

    const p1, 0x7f090708

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t0$c;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
