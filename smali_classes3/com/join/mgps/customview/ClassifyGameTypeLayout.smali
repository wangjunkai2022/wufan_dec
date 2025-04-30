.class public Lcom/join/mgps/customview/ClassifyGameTypeLayout;
.super Landroid/widget/LinearLayout;
.source "ClassifyGameTypeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Lcom/join/mgps/dto/ClassifyGameTypeBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->d:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->d:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090276

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090277

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->b:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClassifyGameTypeBean(Lcom/join/mgps/dto/ClassifyGameTypeBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->d:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
