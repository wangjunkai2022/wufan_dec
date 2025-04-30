.class public Lcom/melnykov/fab/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/ObservableScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/melnykov/fab/ObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/melnykov/fab/ObservableScrollView;->a:Lcom/melnykov/fab/ObservableScrollView$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/melnykov/fab/ObservableScrollView$a;->a(Landroid/widget/ScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/ObservableScrollView;->a:Lcom/melnykov/fab/ObservableScrollView$a;

    return-void
.end method
