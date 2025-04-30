.class public Lcom/join/mgps/customview/GameTransferHistoryListItem;
.super Landroid/widget/RelativeLayout;
.source "GameTransferHistoryListItem.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EViewGroup;
    value = 0x7f0c0252
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


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

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09059e
    .end annotation
.end field

.field e:Lcom/join/mgps/dto/GameTransferBean;

.field f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/GameTransferHistoryListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->y(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/join/mgps/dto/GameTransferBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0807b1

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bind:  gameName:::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::gameSize:::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;-><init>(Lcom/join/mgps/customview/GameTransferHistoryListItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d()V

    return-void
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/graphics/Color;

    invoke-direct {v3}, Landroid/graphics/Color;-><init>()V

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v1, 0x7f1103b6

    const/high16 v2, -0x10000

    const v3, 0x7f06006c

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f1103b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 15
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 17
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f110120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 19
    :pswitch_7
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getProgerss()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 21
    :pswitch_8
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    const v1, 0x7f11045f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
