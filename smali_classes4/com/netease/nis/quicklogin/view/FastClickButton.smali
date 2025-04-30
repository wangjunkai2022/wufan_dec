.class public Lcom/netease/nis/quicklogin/view/FastClickButton;
.super Landroid/widget/Button;
.source "FastClickButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Lcom/netease/nis/quicklogin/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/FastClickButton;->a:Lcom/netease/nis/quicklogin/view/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/view/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/a;

    invoke-direct {v0, p1}, Lcom/netease/nis/quicklogin/view/a;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/view/FastClickButton;->a:Lcom/netease/nis/quicklogin/view/a;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
