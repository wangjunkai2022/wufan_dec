.class public Lcom/join/mgps/customview/GameTransferListItem;
.super Landroid/widget/RelativeLayout;
.source "GameTransferListItem.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EViewGroup;
    value = 0x7f0c0252
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09059f
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a0
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a5
    .end annotation
.end field

.field d:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a4
    .end annotation
.end field

.field e:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09059e
    .end annotation
.end field

.field g:Lcom/join/mgps/dto/GameTransferBean;

.field h:I

.field i:Z

.field j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/GameTransferListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/GameTransferListItem;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/GameTransferListItem;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b(ILandroid/util/SparseArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->h:I

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->j:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameTransferBean;

    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->b:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->isSelectedTransfer()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->i:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p2, 0x7f0807b1

    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bind: \u56fe\u7247\u5730\u5740"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->i:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/customview/GameTransferListItem$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/GameTransferListItem$a;-><init>(Lcom/join/mgps/customview/GameTransferListItem;)V

    .line 15
    iget-object p3, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/GameTransferListItem;->c()V

    return-void
.end method

.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferListItem;->g:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getProgerss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f11045f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
