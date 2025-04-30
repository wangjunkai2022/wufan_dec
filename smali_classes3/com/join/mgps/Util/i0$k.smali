.class Lcom/join/mgps/Util/i0$k;
.super Landroid/text/style/ClickableSpan;
.source "ForumUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/Util/i0$k;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/i0$k;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0$k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/i0$k;->a:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/i0$k;->b:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/i0$k;->c:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/i0$k;->a:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/i0$k;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/Util/i0$k;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/Util/i0$k;->a:I

    iget v2, p0, Lcom/join/mgps/Util/i0$k;->b:I

    iget-object v3, p0, Lcom/join/mgps/Util/i0$k;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const-string v0, "#00000000"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method
