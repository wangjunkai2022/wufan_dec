.class Lcom/papa91/arc/widget/htmltext/HtmlFormatter$1;
.super Ljava/lang/Object;
.source "HtmlFormatter.java"

# interfaces
.implements Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/htmltext/HtmlFormatter;->formatHtml(Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;)Landroid/text/Spanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$1;->val$builder:Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideTagClickListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$1;->val$builder:Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;

    invoke-virtual {v0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getOnClickATagListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    move-result-object v0

    return-object v0
.end method
