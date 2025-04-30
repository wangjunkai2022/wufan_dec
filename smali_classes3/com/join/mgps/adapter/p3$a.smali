.class Lcom/join/mgps/adapter/p3$a;
.super Ljava/lang/Object;
.source "MyVoucherGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/RelativeLayout;

.field final synthetic j:Lcom/join/mgps/adapter/p3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/p3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->j:Lcom/join/mgps/adapter/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f09087f

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f090889

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->h:Landroid/widget/LinearLayout;

    const p1, 0x7f090883

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->i:Landroid/widget/RelativeLayout;

    const p1, 0x7f0912bd

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0912c0

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0912b7

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0912be

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->d:Landroid/widget/TextView;

    const p1, 0x7f0912c2

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    const p1, 0x7f0912c1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    return-void
.end method
