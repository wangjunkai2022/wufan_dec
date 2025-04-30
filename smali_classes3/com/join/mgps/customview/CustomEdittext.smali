.class public Lcom/join/mgps/customview/CustomEdittext;
.super Landroid/widget/EditText;
.source "CustomEdittext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CustomEdittext$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/CustomEdittext$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getOnSelectionChanged()Lcom/join/mgps/customview/CustomEdittext$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomEdittext;->a:Lcom/join/mgps/customview/CustomEdittext$a;

    return-object v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CustomEdittext;->a:Lcom/join/mgps/customview/CustomEdittext$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/customview/CustomEdittext$a;->a(II)V

    :cond_0
    return-void
.end method

.method public setOnSelectionChanged(Lcom/join/mgps/customview/CustomEdittext$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CustomEdittext;->a:Lcom/join/mgps/customview/CustomEdittext$a;

    return-void
.end method
