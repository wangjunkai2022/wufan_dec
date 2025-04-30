.class public Lcom/join/mgps/customview/t;
.super Landroid/app/Dialog;
.source "MyDialog.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0c04c6

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method
