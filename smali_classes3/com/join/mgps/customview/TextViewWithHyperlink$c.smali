.class public Lcom/join/mgps/customview/TextViewWithHyperlink$c;
.super Landroid/text/style/ClickableSpan;
.source "TextViewWithHyperlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TextViewWithHyperlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic c:Lcom/join/mgps/customview/TextViewWithHyperlink;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->c:Lcom/join/mgps/customview/TextViewWithHyperlink;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->b:Lcom/join/mgps/Util/IntentDateBean;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->b:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const v0, -0xd58d35

    .line 1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
