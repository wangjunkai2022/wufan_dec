.class Lcom/join/mgps/adapter/o3$d;
.super Ljava/lang/Object;
.source "MyVoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic h:Lcom/join/mgps/adapter/o3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->h:Lcom/join/mgps/adapter/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0900e1

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->a:Landroid/widget/TextView;

    const p1, 0x7f0912bc

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->b:Landroid/widget/TextView;

    const p1, 0x7f0912bf

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->c:Landroid/widget/TextView;

    const p1, 0x7f0912bb

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->d:Landroid/widget/TextView;

    const p1, 0x7f09058a

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->e:Landroid/widget/TextView;

    const p1, 0x7f090589

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->f:Landroid/widget/TextView;

    const p1, 0x7f090a39

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
