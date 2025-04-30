.class Lcom/join/mgps/adapter/n3$b;
.super Ljava/lang/Object;
.source "MyGameEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/n3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/join/mgps/adapter/n3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/n3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->f:Lcom/join/mgps/adapter/n3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090709

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09078b

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f090acd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->c:Landroid/widget/TextView;

    const p1, 0x7f0900df

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->d:Landroid/widget/TextView;

    const p1, 0x7f090ee6

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/n3$b;->e:Landroid/widget/LinearLayout;

    return-void
.end method
