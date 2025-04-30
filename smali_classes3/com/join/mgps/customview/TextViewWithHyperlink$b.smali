.class public Lcom/join/mgps/customview/TextViewWithHyperlink$b;
.super Landroid/text/style/ClickableSpan;
.source "TextViewWithHyperlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TextViewWithHyperlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

.field final synthetic c:Lcom/join/mgps/customview/TextViewWithHyperlink;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->c:Lcom/join/mgps/customview/TextViewWithHyperlink;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->b:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->b:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

    invoke-interface {p1}, Lcom/join/mgps/customview/TextViewWithHyperlink$a;->a()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const v0, -0xd3d3d4

    .line 1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
