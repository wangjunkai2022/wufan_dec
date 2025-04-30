.class public Lcom/join/mgps/activity/MyAccountPapabiGonglueActivity;
.super Lcom/BaseActivity;
.source "MyAccountPapabiGonglueActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0509
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountPapabiGonglueActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u94dc\u677f\u653b\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method
