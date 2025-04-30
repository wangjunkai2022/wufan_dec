.class Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;
.super Landroid/text/style/URLSpan;
.source "HtmlTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

.field final synthetic val$spannedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    iput-object p3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->val$spannedText:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    .line 3
    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;->provideTagClickListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->val$spannedText:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/papa91/arc/widget/htmltext/OnClickATagListener;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->access$1200(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
