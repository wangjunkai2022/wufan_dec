.class Lcom/join/mgps/adapter/h5$f;
.super Landroid/text/style/ClickableSpan;
.source "SearchGameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/join/mgps/adapter/h5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/h5;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5$f;->b:Lcom/join/mgps/adapter/h5;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/h5$f;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h5$f;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "#FF4A4A4A"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
