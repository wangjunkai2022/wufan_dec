.class public Lcom/join/mgps/activity/GameInformationActivityV2$l;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameInformationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/join/mgps/customview/VipView;

.field final synthetic l:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameInformationActivityV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->l:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0909eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->a:Landroid/widget/RelativeLayout;

    const p1, 0x7f091245

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090bdf

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->c:Landroid/widget/ImageView;

    const p1, 0x7f091248

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d:Landroid/widget/TextView;

    const p1, 0x7f090ff4

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e:Landroid/widget/TextView;

    const p1, 0x7f0902eb

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->f:Landroid/widget/TextView;

    const p1, 0x7f090be0

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->g:Landroid/widget/TextView;

    const p1, 0x7f0908b8

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->h:Landroid/widget/TextView;

    const p1, 0x7f0908ba

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/VipView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->k:Lcom/join/mgps/customview/VipView;

    const p1, 0x7f0908be

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->i:Landroid/view/View;

    const p1, 0x7f090a7b

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->a:Landroid/widget/RelativeLayout;

    return-object p0
.end method
