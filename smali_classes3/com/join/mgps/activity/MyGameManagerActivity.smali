.class public Lcom/join/mgps/activity/MyGameManagerActivity;
.super Lcom/BaseActivity;
.source "MyGameManagerActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c005b
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/activity/y1;

    invoke-direct {v1}, Lcom/join/mgps/activity/y1;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/MyGameManagerActivity;->b:Landroidx/fragment/app/Fragment;

    const v2, 0x7f09053d

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->enterMyGameCentre:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
