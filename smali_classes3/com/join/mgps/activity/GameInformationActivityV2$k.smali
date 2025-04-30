.class Lcom/join/mgps/activity/GameInformationActivityV2$k;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameInformationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/Button;

.field final synthetic k:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameInformationActivityV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->k:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09054c

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->a:Landroid/view/View;

    const p1, 0x7f090220

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09021b

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->c:Landroid/widget/TextView;

    const p1, 0x7f09021e

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->d:Landroid/view/View;

    const p1, 0x7f09021a

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->e:Landroid/widget/TextView;

    const p1, 0x7f09021f

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->f:Landroid/widget/TextView;

    const p1, 0x7f090226

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->g:Landroid/widget/TextView;

    const p1, 0x7f090a6f

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->h:Landroid/widget/TextView;

    const p1, 0x7f09021d

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->j:Landroid/widget/Button;

    const p1, 0x7f090fa4

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$k;->i:Landroid/widget/TextView;

    return-void
.end method
